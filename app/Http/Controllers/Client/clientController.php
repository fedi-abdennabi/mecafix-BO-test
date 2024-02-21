<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Clients;
use App\Models\Folder;
use Illuminate\Http\Request;

class clientController extends Controller
{
    // get clients by id
    public function getClientById($id)
    {
        // Folder::with("Car", "Clients")->where("userId", $userId)->get();
        $client = Clients::with('Car')->where('id', $id)->first();
        if (!$client) {
            return response()->json(['message' => 'Client not found'], 404);
        }

        return response()->json($client, 200);
    }

    // get all clients functions
    public function getAllClients(Request $request)
    {
        $orderBy = filled($request->input('orderBy')) ? $request->input('orderBy') : 'id';
        $order = filled($request->input('order')) ? $request->input('order') : 'DESC';
        $search = $request->input('search', '');

        $query = Clients::with('folder', 'car')
        ->where(function ($query) use ($search) {
            $query->where('firstName', 'LIKE', "%{$search}%")
                ->orWhere('lastName', 'LIKE', "%{$search}%");
        });

        $clients = $query->orderBy($orderBy, $order)->paginate(4);

        return response()->json($clients, 200);
    }

    public function getClients(Request $request)
    {
        $userId = auth()->id();
        $clients = Clients::with('firstName', 'lastName')->where('userId', $userId)->get();

        return response()->json($clients);
    }

    public function recentClients(Request $request)
    {
        $query = Clients::query();

        // Optional: Handle search parameter
        if ($request->has('search')) {
            $query->where('name', 'like', '%'.$request->search.'%');
        }

        // Order by created_at in descending order by default
        $orderBy = $request->get('orderBy', 'created_at');
        $order = $request->get('order', 'desc');

        $clients = $query->orderBy($orderBy, $order)
                         ->take(5)
                         ->get();

        return response()->json($clients);
    }

    public function updateClient(Request $request, $id)
    {
        $client = Clients::find($id);
        $client->type = $request->input('type');
        $client->firstName = $request->input('firstName');
        $client->lastName = $request->input('lastName');
        $client->email = $request->input('email');
        $client->adress = $request->input('adress');
        $client->phone = $request->input('phone');
        $client->postalCode = $request->input('postalCode');
        $client->city = $request->input('city');
        $client->save();

        return response()->json(['message' => 'folder updated successfully', 'data' => $client]);
    }

    public function deleteClient($id)
    {
        $client = Clients::findOrFail($id);
        $client->Car()->detach();
        foreach ($client->Folder as $folder) {
            $folder->clientId = null;
            $folder->save();
        }
        $client->delete();

        return response()->json(['message' => 'Client Deleted successfully']);
    }

    public function getClientData(Request $request, $id)
    {
        $client = Clients::find($id);

        if (!$client) {
            return response()->json(['error' => 'Client not found'], 404);
        }
        $folders = Folder::with('Car')->where('clientId', $id)->get();
        $cars = $client->Car()->get();
        $data = ['client' => $client, 'folders' => $folders, 'car' => $cars];

        return response()->json($data);
    }
}

<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ConfirmAccount extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    protected $token;
    protected $clientEmail;
    public function __construct($request)
    {
        $this->token = $request[0];
        $this->clientEmail = $request[1];
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('confirmAccount')->with([
            'token' => $this->token,
            'clientEmail' => $this->clientEmail
        ]);
    }
}

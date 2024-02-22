<?php

use Illuminate\Support\Facades\Route;

/* @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

Route::post('login', 'Account\authController@login');
Route::post('logout', 'Account\authController@logout');
Route::post('refresh', 'Account\authController@refresh');
Route::get('check-token', 'Account\authController@checkToken');
Route::post('register', 'Account\accountController@createUser');
Route::put('{key}-account-activation', 'Account\accountController@firstAccountActivation');

Route::group(['prefix' => 'payment'], function ($router) {
    Route::group(['prefix' => 'subscription', 'middleware' => 'isAdmin'], function ($router) {
        Route::post('/', 'Payments\StripeSubscriptionController@subscription');
        Route::post('/cancel', 'Payments\StripeSubscriptionController@cancelSubscription');
        Route::post('/reccurent', 'Payments\StripeSubscriptionController@reccurentSubscriptionPayment');
    });

    Route::get('/billing', 'Payments\StripeBillingController@getBillingPortal');
    Route::post('/url-token', 'Payments\StripePaymentController@paymentUrlToken');
    Route::post('/subscription-url', 'Payments\StripePaymentController@subscriptionUrl');
    Route::get('/success', 'Payments\StripePaymentController@successPayment');
    Route::get('/success-subscription', 'Payments\StripePaymentController@successSubscription');
    Route::get('/success-token', 'Payments\StripePaymentController@successPaymentToken');
    Route::post('/webhook', 'Payments\StripePaymentController@webhook');
});

Route::group(['middleware' => 'auth'], function ($router) {
    Route::group(['prefix' => 'account'], function ($router) {
        Route::get('/', 'Account\accountController@profile');
        Route::post('/update', 'Account\accountController@updateProfile');
        Route::post('/change-password', 'Account\accountController@changePassword');
    });

    Route::group(['prefix' => 'superAdmin/configuration', 'middleware' => 'isSuperAdmin'], function ($router) {
        Route::get('/', 'Configuration\configurationController@show');
        Route::post('/', 'Configuration\configurationController@store');
        Route::put('/', 'Configuration\configurationController@update');
    });

    Route::group(['prefix' => 'superAdmin/categories', 'middleware' => 'isSuperAdmin'], function ($router) {
        Route::get('/', 'DefaultCategory\DefaultCategoryController@getAllDefaultCategories');
        Route::get('/{id}', 'DefaultCategory\DefaultCategoryController@getCategorieDetails');
        Route::post('/create', 'DefaultCategory\DefaultCategoryController@createDefaultCategorie');
        Route::delete('/delete/{id}', 'DefaultCategory\DefaultCategoryController@deleteDefaultCategorie');
        Route::put('/update/{id}', 'DefaultCategory\DefaultCategoryController@updateDefaultCategorie');
        Route::get('/subCategorie/{subCategorieId}', 'DefaultSubCategory\DefaultSubCategory@getDefaultSubCategorieDetails');
        Route::group(['prefix' => '/subCategories', 'middleware' => 'isSuperAdmin'], function ($router) {
            Route::get('/{categoryId}', 'DefaultSubCategory\DefaultSubCategory@getAllDefaultSubCategories');
            Route::post('/{categoryId}/create', 'DefaultSubCategory\DefaultSubCategory@createDefaultSubCategorie');
            Route::delete('/delete/{id}', 'DefaultSubCategory\DefaultSubCategory@deleteDefaultSubCategorie');
            Route::put('/update/{id}', 'DefaultSubCategory\DefaultSubCategory@updateDefaultSubCategorie');
        });
    });

    Route::group(['prefix' => 'superAdmin/subCategorie', 'middleware' => 'isSuperAdmin'], function ($router) {
        Route::get('/{subCategoryId}', 'DefaultInput\DefaultInputController@getAllInputBySubCategoryId');
        Route::post('/{subCategoryId}', 'DefaultInput\DefaultInputController@createDefaultInput');
        Route::delete('/{inputId}', 'DefaultInput\DefaultInputController@deleteInput');
        Route::put('/update/{inputId}', 'DefaultInput\DefaultInputController@updateInput');
        Route::get('/input/{inputId}', 'DefaultInput\DefaultInputController@getDetailsInput');
        Route::post('/incrementOrder/{inputId}', 'DefaultInput\DefaultInputController@incrementOrder');
        Route::post('/decrementOrder/{inputId}', 'DefaultInput\DefaultInputController@decrementOrder');
        Route::post('/displayFieldToClient/{inputId}', 'DefaultInput\DefaultInputController@displayTheFieldToClient');
    });

    Route::group(['prefix' => 'superAdmin/users', 'middleware' => 'isSuperAdmin'], function ($router) {
        Route::post('/activate-{id}', 'Admin\usersController@accountActivation');
        Route::get('/{id}', 'Admin\usersController@detailsAccount');
        Route::post('/desactivate-{id}', 'Admin\usersController@accountDesactivation');
        Route::post('/create', 'SuperAdmin\UserController@createNewAccounts');
        Route::post('/remove-{id}', 'Admin\usersController@removeAccount');
        Route::get('/', 'Admin\usersController@usersList');
        Route::put('/update-{id}', 'Admin\usersController@userUpdate');
    });

    Route::group(['prefix' => 'superAdmin/pack'], function ($router) {
        Route::get('/', 'Packs\PackController@index');
        Route::get('/{userId}-details', 'Packs\PackController@userPackDetails');
        Route::group(['middleware' => 'isSuperAdmin'], function ($router) {
            Route::post('/', 'Packs\PackController@store');
            Route::get('/{id}', 'Packs\PackController@show');
            Route::put('/{id}', 'Packs\PackController@update');
            Route::delete('/{id}', 'Packs\PackController@destroy');
        });
    });

    Route::group(['prefix' => 'admin/company'], function ($router) {
        Route::group(['middleware' => 'isAdmin'], function ($router) {
            Route::get('/', 'Company\companyController@index');
            Route::put('/status/{id}', 'Company\companyController@changeStatus');
        });
        Route::group(['middleware' => 'isEmployer'], function ($router) {
            Route::post('/', 'Company\companyController@store');
            Route::get('/employer', 'Company\companyController@showByEmployer');
            Route::put('/employer', 'Company\companyController@update');
        });
    });
});

Route::group(['middleware' => 'auth'], function ($router) {
    Route::group(['prefix' => 'admin/folder'], function ($router) {
        Route::post('/create', 'Folder\folderController@createNewFolder');
        Route::group(['middleware' => 'isAdmin'], function ($router) {
            Route::get('/', 'Folder\folderController@getFolders');
            Route::get('/{id}', 'Folder\folderController@getFolderDetails');
            Route::get('/client/{id}', 'Client\ClientController@getClientData');
            Route::post('/{clientId}/add', 'Folder\folderController@addFolder');
            Route::put('/update/{id}', 'Folder\folderController@updateFolder');
            Route::put('/status/update/{id}', 'Folder\folderController@updateStatusFolder');
        });
    });

    Route::group(['middleware' => 'auth'], function ($router) {
        Route::group(['middleware' => 'isAdmin'], function ($router) {
            Route::group(['prefix' => 'admin/category'], function ($router) {
                Route::post('/create/{folderId}', 'Category\CategoryController@createCategory');
                Route::get('/{id}', 'Category\CategoryController@getCategoryDetails');
                Route::put('/{id}', 'Category\CategoryController@updateCategory');
                Route::delete('/{id}', 'Category\CategoryController@deleteCategory');
                Route::get('/', 'Category\CategoryController@getAllCategorys');
            });

            Route::group(['prefix' => 'admin/subcategory'], function ($router) {
                Route::post('/{categoryId}/create', 'Subcategory\SubcategoryController@createSubCategory');
                Route::get('/{id}', 'Subcategory\SubcategoryController@getSubCategoryDetails');
                Route::put('/{id}', 'Subcategory\SubcategoryController@updateSubCategory');
                Route::delete('/{id}', 'Subcategory\SubcategoryController@deleteSubCategory');
                Route::get('/', 'Subcategory\SubcategoryController@getAllSubCategorys');
                Route::post('/notDone-{id}', 'Subcategory\SubcategoryController@subCategoryNotDone');
                Route::post('/done-{id}', 'Subcategory\SubcategoryController@subCategoryDone');
                Route::post('/deplicate-{id}', 'Subcategory\SubcategoryController@deplicateSubCategory');
            });

            Route::group(['prefix' => 'admin/input'], function ($router) {
                Route::post('/create/{subCategoryId}', 'Inputs\InputsController@createInput');
                Route::get('/{inputId}', 'Inputs\InputsController@getDetailsInput');
                Route::put('/{inputId}', 'Inputs\InputsController@updateInput');
                Route::delete('/{inputId}', 'Inputs\InputsController@deleteInput');
                Route::get('/all/{subCategoryId}', 'Inputs\InputsController@getAllInputBySubCategoryId');
                Route::post('/displayFieldToClient/{inputId}', 'Inputs\InputsController@displayTheFieldToClient');
                Route::post('/incrementOrder/{inputId}', 'Inputs\InputsController@incrementOrder');
                Route::post('/decrementOrder/{inputId}', 'Inputs\InputsController@decrementOrder');
            });

            Route::group(['prefix' => 'admin/defaultSubcategory'], function ($router) {
                Route::post('/{categoryId}/create', 'DefaultAdminSubCategory\DefaultAdminSubCategoryController@createDefaultSubCategorie');
                Route::get('/details/{id}', 'DefaultAdminSubCategory\DefaultAdminSubCategoryController@getDefaultSubCategorieDetails');
                Route::put('/update/{id}', 'DefaultAdminSubCategory\DefaultAdminSubCategoryController@updateDefaultSubCategorie');
                Route::delete('/{id}', 'DefaultAdminSubCategory\DefaultAdminSubCategoryController@deleteDefaultSubCategorie');
                Route::get('/{categoryId}', 'DefaultAdminSubCategory\DefaultAdminSubCategoryController@getAllDefaultSubCategories');
            });

            Route::group(['prefix' => 'admin/defaultInput'], function ($router) {
                Route::post('/create/{subCategoryId}', 'DefaultAdminInput\DefaultAdminInputController@createDefaultInput');
                Route::get('/{inputId}', 'DefaultAdminInput\DefaultAdminInputController@getDetailsInput');
                Route::put('/{inputId}', 'DefaultAdminInput\DefaultAdminInputController@updateInput');
                Route::delete('/{inputId}', 'DefaultAdminInput\DefaultAdminInputController@deleteInput');
                Route::get('/all/{subCategoryId}', 'DefaultAdminInput\DefaultAdminInputController@getAllInputBySubCategoryId');
                Route::post('/displayFieldToClient/{inputId}', 'DefaultAdminInput\DefaultAdminInputController@displayTheFieldToClient');
                Route::post('/incrementOrder/{inputId}', 'DefaultAdminInput\DefaultAdminInputController@incrementOrder');
                Route::post('/decrementOrder/{inputId}', 'DefaultAdminInput\DefaultAdminInputController@decrementOrder');
            });

            Route::group(['prefix' => 'admin/defaultCategories'], function ($router) {
                Route::put('/update/{id}', 'DefaultAdminCategory\DefaultAdminCategoryController@updateDefaultCategorie');
                Route::delete('/delete/{id}', 'DefaultAdminCategory\DefaultAdminCategoryController@deleteDefaultCategorie');
                Route::get('/', 'DefaultAdminCategory\DefaultAdminCategoryController@getAllDefaultCategories');
                Route::post('/create', 'DefaultAdminCategory\DefaultAdminCategoryController@createDefaultCategorie');
                Route::get('/{id}', 'DefaultAdminCategory\DefaultAdminCategoryController@getDefaultCategorieDetails');
            });

            Route::group(['prefix' => 'admin/clients'], function ($router) {
                Route::get('/', 'Client\ClientController@getAllClients');
                Route::get('/recent', 'Client\ClientController@recentClients');
                Route::get('/{id}', 'Client\ClientController@getClientById');
                Route::put('/update/{id}', 'Client\ClientController@updateClient');
                Route::delete('/delete/{id}', 'Client\ClientController@deleteClient');
            });
        });
    });




    Route::group(['middleware' => 'auth'], function ($router) {
        Route::group(['prefix' => 'admin/cars', 'middleware' => 'isAdmin'], function ($router) {
            Route::get('/', 'Car\CarController@getAllCars');
            Route::post('/create', 'Car\CarController@addCar');
            Route::put('/update/{id}', 'Car\CarController@updateCar');
            Route::delete('/delete/{id}', 'Car\CarController@destroy');
        });
    });

    Route::group(['middleware' => 'auth'], function ($router) {
        Route::group(['prefix' => 'admin/status', 'middleware' => 'isAdmin'], function ($router) {
            Route::get('/', 'carStatus\CarStatusController@getAllStatus');
        });
    });

    Route::group(['middleware' => 'auth'], function ($router) {
        Route::group(['prefix' => 'role'], function ($router) {
            Route::get('/', 'SuperAdmin\UserController@getUserRole');
        });
    });
});

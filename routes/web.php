<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\EventController;

Route::get('/', [EventController::class, 'index']);

Route::get('/eventos/create', [EventController::class, 'create']);

Route::get('/criar',[EventController::class, 'criar']);

Route::get('/parametros/',[EventController::class, 'parametros']);

Route::post('/eventos', [EventController::class, 'store']);

Route::get('/eventos/{cpf}', [EventController::class, 'perfil']);

Route::delete('/eventos/{cpf}', [EventController::class, 'destruir']);

Route::get('eventos/editar/{cpf}', [EventController::class, 'editar']);

Route::match(['get', 'put'], '/eventos/update/{cpf}', [EventController::class, 'update']);

?>
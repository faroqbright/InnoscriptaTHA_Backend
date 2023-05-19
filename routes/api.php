<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\User\ArticleController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::controller(AuthController::class)->group(function () {
    Route::post('/register','register');
    Route::post('/login','login');
    Route::get('/logout/{id}','logout');
});
Route::group(['middleware' => 'check_token'], function () {
    Route::prefix('articles')->group(function () {
        Route::controller(ArticleController::class)->group(function () {
            Route::get('/search','search');
            Route::get('/get-all-sources','getAllSources');
            Route::get('/search-by-source','searchBySource');
            Route::get('/search-by-category','searchByCategory');
            Route::get('/','getArticles');
        });
    });
});



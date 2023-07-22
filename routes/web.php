<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::group(['prefix' => LaravelLocalization::setLocale()], function()
{
	Route::get(LaravelLocalization::transRoute('routes.homepage'), [App\Http\Controllers\HomeController::class, 'index'])->name('routes.homepage');
	Route::get(LaravelLocalization::transRoute('routes.page'), [App\Http\Controllers\PageController::class, 'index'])->name('routes.page');
	Route::get(LaravelLocalization::transRoute('routes.project'), [App\Http\Controllers\ProjectController::class, 'index'])->name('routes.project');
	Route::get(LaravelLocalization::transRoute('routes.news'), [App\Http\Controllers\NewsController::class, 'index'])->name('routes.news');


	Route::post('contact', [App\Http\Controllers\PageController::class, 'contact'])->name('routes.contact');
});



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

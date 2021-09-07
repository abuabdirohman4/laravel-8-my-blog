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

Route::get('/', function () {
    // return 'Halaman Home';
    return view('home');
});

Route::get('/about', function () {
    // return 'Halaman About';
    return view('about', [
        "name" => "Abu Abdirohman",
        "email" => "abuabdirohman4@gmail.com",
        "image" =>  "abu.jpg",
    ]);
});

Route::get('/posts', function () {
    // return 'Halaman Blog';
    return view('posts');
});
    
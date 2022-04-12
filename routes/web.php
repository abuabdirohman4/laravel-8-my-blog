<?php

use App\Http\Controllers\PostController;
use App\Models\Post;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    // return 'Halaman Home';
    return view('home', [
        "title" => "Home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "name" => "Abu Abdirohman",
        "email" => "abuabdirohman4@gmail.com",
        "image" =>  "abu.jpg",
    ]);
});

Route::get('/blog', [PostController::class, 'index']);

// Halaman Single Post
// Route::get('posts/{slug}', [PostController::class, 'show']);
Route::get('posts/{post:slug}', [PostController::class, 'show']);

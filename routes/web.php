<?php

use App\Models\User;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\loginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\AdminCategoryController;
use App\Http\Controllers\DashboardPostController;

Route::get('/', function () {
    return view('landingpage.home', [
        "title" => "Home",
        "active" => "home",
    ]);
})->name('home');
Route::get('/about', function () {
    return view('landingpage.about', [
        "title" => "About",
        "active" => "about",
        "name" => "Abu Abdirohman",
        "email" => "abuabdirohman4@gmail.com",
        "image" =>  "abu.jpg",
    ]);
});
Route::get('/categories', function () {
    return view('landingpage.categories', [
        'title' => 'Categories',
        "active" => "categories",
        'categories' => Category::all()
    ]);
});
Route::get('/categories/{category:slug}', function (Category $category) {
    return view('landingpage.posts', [
        'title' => "Post By Category : $category->name",
        "active" => "posts",
        'posts' => $category->posts->load('category', 'author'),
    ]);
});
Route::get('/authors/{author:username}', function (User $author) {
    return view('landingpage.posts', [
        'title' => "Post By Author : $author->name",
        'posts' => $author->posts->load('category', 'author'),
    ]);
});
// Route::get('/dashboard', [DashboardController::class, 'index'])->middleware('auth');
Route::get('/dashboard', function () {
    return view('dashboard.index', [
        'title' => 'Dashboard',
        'active' => 'dashboard'
    ]);
})->middleware('auth');

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/posts', [PostController::class, 'index']);
Route::get('/posts/{post:slug}', [PostController::class, 'show']);

Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');
Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');

Route::resource('/dashboard/categories', AdminCategoryController::class)->except('show')->middleware('admin');

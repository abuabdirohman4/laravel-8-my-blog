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
    return view('home', [
        "title" => "Home"
    ]);
});

Route::get('/about', function () {
    // return 'Halaman About';
    return view('about', [
        "title" => "About",
        "name" => "Abu Abdirohman",
        "email" => "abuabdirohman4@gmail.com",
        "image" =>  "abu.jpg",
    ]);
});

Route::get('/blog', function () {
    // return 'Halaman Blog';
    $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Abu Abdirohman",
            "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsam esse ratione nobis voluptas praesentium quia ut fugit eligendi sapiente. Commodi, ex delectus perspiciatis atque officiis obcaecati consequatur nostrum tempora sint, maiores dolor ipsa ea aperiam in. Natus suscipit maiores sequi harum ratione cumque deleniti? Facere exercitationem autem ducimus, eos ab laudantium labore reprehenderit atque ullam aliquam pariatur distinctio blanditiis vel odio commodi magnam sequi! Nemo quam alias a ad commodi sapiente voluptatibus consequuntur distinctio tenetur cumque quidem molestiae, excepturi repellendus?"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Afiyatna",
            "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsam esse ratione nobis voluptas praesentium quia ut fugit eligendi sapiente. Commodi, ex delectus perspiciatis atque officiis obcaecati consequatur nostrum tempora sint, maiores dolor ipsa ea aperiam in. Natus suscipit maiores sequi harum ratione Commodi, ex delectus perspiciatis atque officiis obcaecati consequatur nostrum tempora sint, maiores dolor ipsa ea aperiam in. Natus suscipit maiores sequi harum ratione cumque deleniti? Facere exercitationem autem ducimus, eos ab laudantium labore reprehenderit atque ullam aliquam pariatur distinctio blanditiis vel "
        ]
    ];

    return view('posts', [
        "title" => "Blog",
        "posts" => $blog_posts,
    ]);
});
    
// Halaman Single Post
Route::get('posts/{slug}', function ($slug) {
    $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Abu Abdirohman",
            "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsam esse ratione nobis voluptas praesentium quia ut fugit eligendi sapiente. Commodi, ex delectus perspiciatis atque officiis obcaecati consequatur nostrum tempora sint, maiores dolor ipsa ea aperiam in. Natus suscipit maiores sequi harum ratione cumque deleniti? Facere exercitationem autem ducimus, eos ab laudantium labore reprehenderit atque ullam aliquam pariatur distinctio blanditiis vel odio commodi magnam sequi! Nemo quam alias a ad commodi sapiente voluptatibus consequuntur distinctio tenetur cumque quidem molestiae, excepturi repellendus?"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Afiyatna",
            "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsam esse ratione nobis voluptas praesentium quia ut fugit eligendi sapiente. Commodi, ex delectus perspiciatis atque officiis obcaecati consequatur nostrum tempora sint, maiores dolor ipsa ea aperiam in. Natus suscipit maiores sequi harum ratione Commodi, ex delectus perspiciatis atque officiis obcaecati consequatur nostrum tempora sint, maiores dolor ipsa ea aperiam in. Natus suscipit maiores sequi harum ratione cumque deleniti? Facere exercitationem autem ducimus, eos ab laudantium labore reprehenderit atque ullam aliquam pariatur distinctio blanditiis vel "
        ]
    ];

    $new_post = [];
    foreach ($blog_posts as $post) {
        if ($post["slug"] === $slug) {
            $new_post = $post;
        }
    };
    
    return view('post', [
        "title" => "Single Post",
        "post" => $new_post,
    ]);
});
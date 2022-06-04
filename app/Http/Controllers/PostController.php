<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends Controller
{
    public function index()
    {
        // return Post::latest()->get();
        return view('landingpage.posts', [
            "title" => "All Post",
            "active" => "posts",
            "posts" => Post::latest()->get(),
        ]);
    }

    // public function show($id)
    public function show(Post $post)
    {
        return view('landingpage.post', [
            "title" => "Single Post",
            "active" => "posts",
            // "post" => Post::find($id),
            "post" => $post,
        ]);
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends Controller
{
    public function index()
    {
        // $posts = Post::latest();
        // if(request('search')) {
        //     $posts->where('title', 'like', '%' . request('search') . '%')
        //           ->orWhere('body', 'like', '%' . request('search') . '%');
        // }

        // dd(request('search'));
        // return Post::latest()->get();
        return view('landingpage.posts', [
            "title" => "All Post",
            "active" => "posts",
            // "posts" => Post::get(),
            // "posts" => Post::latest()->get(),
            // "posts" => $posts->get(),
            // "posts" => Post::latest()->filter()->get(),
            "posts" => Post::latest()->filter(request(['search']))->get(),
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

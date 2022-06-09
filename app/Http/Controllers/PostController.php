<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        $title = '';
        if (request('category')) {
            $category = Category::firstWhere('slug', request('category'));
            $title = ' in '.$category->name;
        }
        if (request('author')) {
            $author = User::firstWhere('username', request('author'));
            $title = ' by '.$author->name;
        }

        // $posts = Post::latest();
        // if(request('search')) {
        //     $posts->where('title', 'like', '%' . request('search') . '%')
        //           ->orWhere('body', 'like', '%' . request('search') . '%');
        // }

        // dd(request('search'));
        // return Post::latest()->get();
        return view('landingpage.posts', [
            "title" => "All Post" . $title,
            "active" => "posts",
            "posts" => Post::latest()->filter(request(['search', 'category', 'author']))->paginate(4)->withQueryString(),
            // "posts" => Post::latest()->filter()->get(),
            // "posts" => $posts->get(),
            // "posts" => Post::latest()->get(),
            // "posts" => Post::get(),
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

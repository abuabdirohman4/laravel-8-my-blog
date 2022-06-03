<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Cviebrock\EloquentSluggable\Services\SlugService;

class DashboardPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // return Post::all();
        // return Post::where('user_id', auth()->user()->id)->get();
        return view('dashboard.posts.index', [
            "posts" => Post::where('user_id', auth()->user()->id)->get(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.posts.create', [
            "categories" => Category::all(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request;
        // ddd($request);
        // return $request->file('image')->store('post-images');

        $validatedDate = $request->validate([
            'title' => 'required|max:255',
            'slug' => 'required|unique:posts',
            'category_id' => 'required',
            'image'=> 'image',
            'body' => 'required'
        ]);

        if ($request->file('image')) {
            $validatedDate['image'] = $request->file('image')->store('post-images');
        };

        $validatedDate['user_id'] = auth()->user()->id;
        $validatedDate['excerpt'] = Str::limit(strip_tags($request->body),100);

        Post::create($validatedDate);

        // return $validatedDate;
        return redirect('/dashboard/posts/')->with('success', 'Success created new post');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        // return $post;
        return view('dashboard.posts.show', [
            'post' => $post
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        return view('dashboard.posts.edit', [
            "categories" => Category::all(),
            "post" => $post,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        $rules = [
            'title' => 'required|max:255',
            'category_id' => 'required',
            'body' => 'required'
        ];

        if ($request->slug != $post->slug) {
            $rules['slug'] = 'required|unique:posts';
        };

        $validatedDate = $request->validate($rules);

        $validatedDate['user_id'] = auth()->user()->id;
        $validatedDate['excerpt'] = Str::limit(strip_tags($request->body),100);

        Post::where('id', $post->id)
                ->update($validatedDate);

        return redirect('/dashboard/posts/')->with('success', 'Post has been updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        Post::destroy($post->id);

        return redirect('/dashboard/posts/')->with('success', 'Success deleted post');
    }

    public function checkSlug (Request $request)
    {
        $slug = SlugService::createSlug(Post::class, 'slug', $request->title);
        // dd($slug);
        return response()->json(['slug' => $slug]);
        // return response();
    }
}

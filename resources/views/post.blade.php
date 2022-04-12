{{-- @dd($post); --}}

@extends('layouts.main')

@section('container')
    <h1 class="mb-3">{{ $post->title }}</h1>

    <p>By Abu Abdirohman in
        <a href="/categories/{{ $post->category->slug }}">
            {{ $post->category->name }}
        </a>
        {{-- <a href="/categories/">
            {{ $post->categories}}
        </a> --}}
    </p>

    {{-- {!! Blade Escape Character  !} --}}
    {!! $post->body !!}

    <p class="mt-3">
        <a href="/blog">Back To Posts</a>
    </p>
@endsection

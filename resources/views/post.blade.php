{{-- @dd($post); --}}

@extends('layouts.main')

@section('container')
    <h1 class="mb-5">{{ $post->title }}</h1>

    {{-- {!! Blade Escape Character  !} --}}
    {!! $post->body !!}

    <a href="/blog">Back To Posts</a>
@endsection

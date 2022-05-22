@extends('dashboard.layouts.main')

@section('container')

<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h1 class="mb-3">{{ $post->title }}</h1>

            <a href="/dashboard/posts" class="btn btn-success"><span data-feather="arrow-left" class="me-2"></span>Back to all my posts</a>
            <a href="" class="btn btn-warning"><span data-feather="edit" class="me-2"></span>Edit</a>
            <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-danger" onclick="return confirm('Are you sure?')"><span data-feather="x-circle" class="me-2"></span>Delete</button>
                {{-- <button class="btn btn-danger me-2" onclick="return confirm('Are you sure?')"><span data-feather="x-circle"></span></button> --}}
            </form>

            <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="card-img-top mt-3" alt="{{$post->category->name}}">

            <article class="my-3 fs-5">
                {!! $post->body !!}
            </article>
        </div>
    </div>
</div>

@endsection

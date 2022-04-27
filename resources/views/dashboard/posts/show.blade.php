@extends('dashboard.layouts.main')

@section('container')

<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h1 class="mb-3">{{ $post->title }}</h1>

            <p>
            <a href="/dashboard/posts" class="btn btn-success"><span data-feather="eye" class="me-2"></span>Back to all my posts</a>
            <a href="" class="btn btn-warning"><span data-feather="edit" class="me-2"></span>Edit</a>
            <a href="" class="btn btn-danger"><span data-feather="x-circle" class="me-2"></span>Delete</a>
            </p>

            <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="card-img-top" alt="{{$post->category->name}}">

            <article class="my-3 fs-5">
                {!! $post->body !!}
            </article>
        </div>
    </div>
</div>

@endsection

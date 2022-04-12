{{-- dump die = for checking value on variable & die code after the line --}}
{{-- @dd($posts) --}}

@extends('layouts.main')

@section('container')
    <h1 class="mb-5">Halaman Blog Posts</h1>

    @foreach ($posts as $post)
        <article class="mb-5">
            {{-- Notasi Objek --}}
            <h2>
                <a href="/posts/{{ $post->slug }}" class="text-decoration-none">
                    {{ $post->title }}
                </a>
            </h2>
            <p>
                By <a href="/categories/{{ $post->user->name }}" class="text-decoration-none">{{ $post->user->name }}</a>
                in <a href="/categories/{{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a>
            </p>
            <p>{{ $post->excerpt }}</p>

            <a href="/posts/{{ $post->slug }}" class="text-decoration-none">Read More..</a>

            {{-- Notasi Array --}}
                {{-- <h2>
                    <a href="/posts/{{ $post["id"] }}">
                        {{ $post['title'] }}
                    </a>
                </h2>
                <h5>By : {{ $post['author'] }}</h5>
                <p>{{ $post['body'] }}</p>     --}}
        </article>
    @endforeach
@endsection

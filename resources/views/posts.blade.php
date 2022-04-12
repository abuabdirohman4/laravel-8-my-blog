{{-- dump die = for checking value on variable & die code after the line --}}
{{-- @dd($posts) --}}

@extends('layouts.main')

@section('container')
    <h1>Halaman Blog Posts</h1>
    @foreach ($posts as $post)
        <article class="mb-5">
            {{-- Notasi Objek --}}
            <h2>
                <a href="/posts/{{ $post->slug }}">
                    {{ $post->title }}
                </a>
            </h2>
            <p>{{ $post->excerpt }}</p>

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

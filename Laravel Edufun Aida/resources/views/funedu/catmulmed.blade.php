@extends('layout.master')

@section('konten')
<h3 class="text-left fw-bold mb-5 mt-4">{{ optional($category)->name ?? 'Articles' }}</h3> <!-- Safely Display Category Name -->
<div class="row mb-4">
    @forelse ($articles as $article)
        <div class="col-3 ms-5 mb-4">
            <img src="{{ $article->article_image }}" class="img-fluid rounded-4" alt="{{ $article->title }}" width="300">
        </div>
        <div class="col-8 d-flex flex-column mb-4">
            <h2 class="text-left">{{ $article->title }}</h2>
            <h6>{{ date('d F Y', strtotime($article->post_date)) }} | by: {{ optional($article->writer)->name ?? 'Unknown Writer' }}</h6>
            <p>{{ \Illuminate\Support\Str::limit($article->content, 150) }}</p>
            <div class="mt-auto d-flex justify-content-end">
                    <a href="{{ route('funedu.detail', ['category' => $article->category->name, 'title' => $article->title]) }}" class="btn" style="background-color: midnightblue; color: white; border-radius: 50px; align-self: end;">Read more...</a>
            </div>
        </div>
    @empty
        <div class="col-12 text-center">
            <p>No articles found.</p>
        </div>
    @endforelse
</div>

@endsection

@extends('layout.master')

@section('konten')
<div class="container py-5">
    @if(isset($article) && $article)
        <div class="col-12 d-flex justify-content-center">
            <h1 class="mt-4 text-center">{{ $article->title }}</h1>
        </div>
        <div class="col-12 d-flex justify-content-center py-5">
            <img src="{{ asset($article->image_path ?: 'img/mulmedd.jpg') }}" alt="{{ $article->title }}" class="img-fluid w-100" style="object-fit: cover; height: 400px; border-radius: 20px;">
        </div>
        <div class="col-12 text-center">
            <p class="text-muted">{{ \Carbon\Carbon::parse($article->post_date)->format('d F Y') }} | by {{ $article->writer->name }}</p>
            <p>{{ $article->content }}</p>
        </div>
    @else
        <div class="col-12 d-flex justify-content-center">
            <h2 class="mt-4 text-danger text-center">Artikel tidak ditemukan</h2>
        </div>
    @endif
</div>
@endsection

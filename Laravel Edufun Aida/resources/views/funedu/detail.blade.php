@extends('layout.master')

@section('konten')

<div class="container py-5">
    <div class="col-12 d-flex justify-content-center ">
        <h1>{{$article->title}}</h1>
    </div>
    <div class="col-12 d-flex justify-content-center py-5">
        <img src="{{ $article->article_image }}" alt="Article Image" class="img-fluid w-100" style="object-fit:cover; height: 400px;border-radius:20px" >
    </div>
    <div class="col-12">
        <p class="text-muted">{{ \Carbon\Carbon::parse($article->post_date)->format('d F Y') }} | by {{ $article->writer->name }}</p>
        <p>{{$article->content}}</p>
    </div>
</div>

@endsection

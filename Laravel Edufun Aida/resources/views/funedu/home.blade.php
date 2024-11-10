@extends('layout.master')

@section('konten')
<img src="{{ asset('img/home.jpg') }}" class="img-fluid mb-5" alt="..." width="auto" >
<div class="row mb-4">
    @foreach ($articles as $article)
        <div class="col-3 ms-5" style="overflow: hidden; border-radius: 10px;">
            <img src="{{ $article->article_image }}" class="img-fluid rounded-4 mb-5" alt="Article Image" width="300" style="height: auto; border-radius: 10px;">
        </div>
        <div class="col-8 d-flex flex-column">
            <h2 class="text-left">{{ $article->title }}</h2>
            <h6>{{ \Carbon\Carbon::parse($article->post_date)->format('d F Y') }} | by: {{ $article->writer->name }}</h6>
            <p>{{ \Illuminate\Support\Str::limit($article->content, 150) }}</p>
            <div class="mt-auto d-flex justify-content-end">
                    <a href="{{ route('funedu.detail', ['category' => $article->category->name, 'title' => $article->title]) }}" class="btn" style="background-color: midnightblue; color: white; border-radius: 50px; align-self: end;">Read more...</a>
            </div>
        </div>
    @endforeach
</div>
@endsection

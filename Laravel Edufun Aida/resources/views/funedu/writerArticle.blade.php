@extends('layout.master')

@section('konten')
<div class="row d-flex flex-row align-items-center pt-5 gap-3" style="padding-right: 10rem; padding-left: 10rem; background-color: transparent;">
    <div class="image-container bg-white rounded-circle d-flex align-items-center justify-content-center" style="width: 200px; height: 200px; padding: 10px;">
        <img src="{{ asset($writer->writer_image) }}" alt="{{ $writer->name }}" class="rounded-circle image-fluid" style="object-fit: cover; height: 180px; width: 180px;">
    </div>
    <div class="col">
        <p>{{$writer->name}}</p>
        <p class="text-muted">{{$writer->bio}}</p>
    </div>
</div>

<div class="container my-4">
    <div class="row">
        @foreach ($writer->articles as $article)
            <div class="col-md-12 px-0">
                <div class="card article-card d-flex flex-row gap-3" style="background-color: transparent; border: none;">
                    <div class="col d-flex justify-content-center p-3">
                        <img src="{{ $article->article_image }}" alt="Article Image" style="width: 400px; height: 180px; border-radius: 20px">
                    </div>
                    <div class="col-8 d-flex flex-column justify-content-center pe-5">
                        <h5 class="card-title">{{ $article->title }}</h5>
                        <p class="text-muted">{{ \Carbon\Carbon::parse($article->post_date)->format('d F Y') }} | by {{ $article->writer->name }}</p>
                        <p class="card-text">{{ \Illuminate\Support\Str::limit($article->content, 150) }}</p>
                        <div class="d-flex justify-content-end">
                            <a href="{{ route('funedu.detail', ['category' => $article->category->name, 'title' => $article->title]) }}" class="btn" style="background-color: midnightblue; color: white; border-radius: 50px; align-self: end;">Read more...</a>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>

@endsection

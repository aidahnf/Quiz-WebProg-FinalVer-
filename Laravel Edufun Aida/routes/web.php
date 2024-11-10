<?php

use App\Http\Controllers\MahasiswaController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\WriterController;
use App\Http\Controllers\ArticleController;

Route::get('/', function () {
    return view('welcome');
});

Route::prefix('/user')->group(function(){
    Route::get('/home', [ArticleController::class, 'home'])->name('funedu.home');

    Route::get('/catmulmed', [ArticleController::class, 'mulmed'])->name('funedu.catmulmed');

    Route::get('/catsofteng', [ArticleController::class, 'Softeng'])->name('funedu.catsofteng');

    Route::get('/writers', [WriterController::class, 'index'])->name('funedu.writers');
    Route::get('/writers/{id}', [WriterController::class, 'show'])->name('funedu.writerArticle');

    Route::get('{category}/{title}', [ArticleController::class, 'show'])->name('funedu.detail');

    Route::get('/aboutus', function() {
        return view('funedu.aboutus');
    })->name('funedu.aboutus');

    Route::get('/popular', [ArticleController::class, 'popular'])->name('funedu.popular');

    // Route::get('/articles', [ArticleController::class, 'index'])->name('articles.index');
    // Route::get('/articles/{id}', [ArticleController::class, 'show'])->name('articles.show');

});

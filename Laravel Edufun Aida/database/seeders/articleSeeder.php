<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\writer as writerModel;
use App\Models\article as articleModel;
use App\Models\category as categoryModel;

class articleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        // Ambil kategori yang sudah ada
        $mulmedCategory = CategoryModel::where('name', 'Interactive Multimedia')->first();
        $softengCategory = CategoryModel::where('name', 'Software Engineering')->first();

        // Membatasi hanya dua writer
        $writers = WriterModel::take(2)->get(); // Mengambil hanya 2 writer

        // Pastikan ada 2 writer yang tersedia
        if ($writers->count() < 2) {
            return; // Jika kurang dari 2 writer, hentikan seeder
        }

        // Definisikan artikel untuk masing-masing kategori
        $mulmedArticles = [
            'Introduction to Multimedia',
            'Animation Basics',
            'Video Editing Essentials'
        ];

        $softengArticles = [
            'Software Development Lifecycle',
            'Agile Methodology',
            'Introduction to DevOps'
        ];

        // Menetapkan artikel untuk writer pertama (Writer 1) di kategori Interactive Multimedia
        foreach ($mulmedArticles as $title) {
            $writer = $writers->first(); // Ambil writer pertama
            ArticleModel::create([
                'title' => $title,
                'category_id' => $mulmedCategory->id,
                'writer_id' => $writer->id, // Menetapkan writer pertama
                'content' => $this->generateContent($faker, 6),
                'post_date' => $faker->date(),
                'views' => $faker->numberBetween(0, 100),
                'article_image' => $faker->imageUrl(640, 480, 'technics'),
            ]);
        }

        // Menetapkan artikel untuk writer kedua (Writer 2) di kategori Software Engineering
        foreach ($softengArticles as $title) {
            $writer = $writers->last(); // Ambil writer kedua
            ArticleModel::create([
                'title' => $title,
                'category_id' => $softengCategory->id,
                'writer_id' => $writer->id, // Menetapkan writer kedua
                'content' => $this->generateContent($faker, 6),
                'post_date' => $faker->date(),
                'views' => $faker->numberBetween(0, 100),
                'article_image' => $faker->imageUrl(640, 480, 'technics'),
            ]);
        }
    }

    /**
     * Generate content with multiple paragraphs
     */
    private function generateContent($faker, $paragraphCount)
    {
        $content = '';
        for ($i = 0; $i < $paragraphCount; $i++) {
            $content .= $faker->paragraph;
        }
        return $content;
    }
}

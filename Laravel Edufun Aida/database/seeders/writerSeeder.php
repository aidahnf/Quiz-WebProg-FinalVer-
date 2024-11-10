<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\writer as writerModel;

class writerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    // public function run(): void
    // {
    //     $faker = Faker::create('id_ID');
    //     for ($i = 0; $i < 2; $i++) {
    //         writerModel::create([
    //                 'name' => $faker->name, // Nama lengkap dalam bahasa Indonesia
    //             ]); 

    //     }
                
    // }
    public function run(): void
    {
        $faker = Faker::create('id_ID');
        $bios = ['Interactive Multimedia', 'Software Engineering']; // Daftar bio tetap
        $images = [
           'img/Writers3.jpg',
           'img/Writers.jpg',
        ];  

        for ($i = 0; $i < 2; $i++) {
            writerModel::create([
                'name' => $faker->name, // Nama acak
                'bio' => $bios[$i], // Bio tetap diambil secara berurutan
                'writer_image' => $images[$i], // Gambar sesuai dengan indeks bio
            ]);
        }
    }
}

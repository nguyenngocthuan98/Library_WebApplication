<?php

use App\Models\Author;
use Illuminate\Database\Seeder;

class AuthorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Models\Author::class, 20)->create();
    }
}

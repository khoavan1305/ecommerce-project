<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        for ($i=265; $i < 500 ; $i++) { 
        DB::table('product_comments')->insert([
          
            [
                'name' => 'khoa Văn'.$i,
                'email' => 'khoavan'.$i.'@gmailcom',
                'password' => Hash::make('123123'),
                'avatar' => '5.jpg',
                'level' => '1',
            ],
     
        ]);
    }

    }
}
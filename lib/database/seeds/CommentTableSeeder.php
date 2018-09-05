<?php

use Illuminate\Database\Seeder;

class CommentTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $data=[
				'comment_name'=>'Vũ Thanh Tùng',
        		'comment_content'=>'Sản phẩm rất đẹp',
        		'comment_status'=>1,
        ];
        DB::table('comments')->insert($data);
    }
}

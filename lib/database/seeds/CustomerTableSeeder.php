<?php

use Illuminate\Database\Seeder;

class CustomerTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data=[
				'cus_name'=>'Nguyễn Văn A',
        		'cus_email'=>'customer@gmail.com',
        		'password'=>bcrypt('123456'),
        		'cus_avatar'=>'',
        		'cus_phone'=>'01658015035',
        		'cus_addr'=>'Hà Nội',
        		'cus_role'=>2
        ];
        DB::table('customers')->insert($data);
    }
}

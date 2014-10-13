<?php

class UserTableSeeder extends Seeder {
	public function run(){
		DB::table('users')->delete();

		User::create(array(
			'username' => '#1 user',
			'password' => Hash::make('password1')
			));

		User::create(array(
			'username' => '#2 user',
			'password' => Hash::make('password2')
			));

	}
}
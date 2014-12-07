<?php
return array(
	'title' => 'Users',
	'single' => 'user',
	'model' => 'User',
	/**
	 * The display columns
	 */
	'columns' => array(
		'id',
		'username',
		'password',
		'school_name',
		'class_name',
		'date_of_birth'
	),
	/**
	 * The filter set
	 */
	'filters' => array(
		'id',
		'username' => array(
			'title' => 'Username',
		),
		'schoole_name' => array(
			'title' => 'School',
		),
		'class_name' => array(
			'title' => 'Class',
		),
		'date_of_birth' => array(
			'title' => 'Date of birth',
		),
	),
	/**
	 * The editable fields
	 */
	'edit_fields' => array(
		'username' => array(
			'title' => 'Username',
			'type' => 'text',
		),
		'password' => array(
			'title' => 'Password',
			'type' => 'password',
		),
		'school_name' => array(
			'title' => 'School',
			'type' => 'text',
		),
		'class_name' => array(
			'title' => 'Class',
			'type' => 'text',
		),
		'date_of_birth' => array(
			'title' => 'Date of birth',
			'type' => 'date',
		),
	),
	'form_width' => 400,
);
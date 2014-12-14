<?php
return array(
	'title' => 'Images',
	'single' => 'image',
	'model' => 'Image',
	/**
	 * The display columns
	 */
	'columns' => array(
		'id',
		'img',
		'chapter_id',
		'created_at',
		'updated_at'
	),
	/**
	 * The filter set
	 */
	'filters' => array(
		'id',
		'img' => array(
			'title' => 'Image',
		),
		'chapter_id' => array(
			'title' => 'Chapter ID'
		),
		'created_at' => array(
			'title' => 'Created at'
		),
		'updated_at' => array(
			'title' => 'Edited at'
		),
	),
	/**
	 * The editable fields
	 */
	'edit_fields' => array(
		'img' => array(
			'title' => 'Image',
			'type' => 'file',
			'location' => public_path() . '/images/',
    		'naming' => 'keep',
		),
		'chapter_id' => array(
			'title' => 'chapter_id',
			'type' => 'number')
	),
	'form_width' => 400,
);
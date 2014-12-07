<?php
/**
 * Actors model config
 */
return array(
	'title' => 'Questions',
	'single' => 'question',
	'model' => 'Question',
	/**
	 * The display columns
	 */
	'columns' => array(
		'id',
		'format',
		'chapter_id',
		'img',
		'img_path',
		'difficulty',
		'solution'
	),
	/**
	 * The filter set
	 */
	'filters' => array(
		'id',
		'format' => array(
			'title' => 'Format',
		),
		'chapter_id' => array(
			'title' => 'Chapter',
		),
		'img' => array(
			'title' => 'isImage',
		),
		'img_path' => array(
		    'title' => 'Image Path'),
		'difficulty' => array(
			'title' => 'Difficulty',
		),
		'solution' => array(
		    'title' => 'Solution')
	),
	/**
	 * The editable fields
	 */
	'edit_fields' => array(
		'format' => array(
			'title' => 'Format',
			'type' => 'text',
		),
		'chapter' => array(
			'title' => 'Chapter',
			'type' => 'relationship',
			'name_field' => 'id'
		),
		'img' => array(
			'title' => 'isImage',
			'type' => 'bool',
		),
		'img_path' => array(
			'title' => 'IMG path',
			'type' => 'text',
		),
		'difficulty' => array(
		    'title' => 'Difficulty',
		    'type' => 'number'
		),
	    'solution' => array(
		    'title' => 'Solution',
		    'type' => 'text'
		),
	),
	'form_width' => 400,
);
<?php
/**
 * Actors model config
 */
return array(
	'title' => 'Chapters',
	'single' => 'chapter',
	'model' => 'Chapter',
	/**
	 * The display columns
	 */
	'columns' => array(
		'id',
		'name',
		'grade_id'
	),
	/**
	 * The filter set
	 */
	'filters' => array(
		'id',
		'name' => array(
			'title' => 'Name',
		),
		'grade_id' => array(
			'title' => 'Grade',
		),
	),
	/**
	 * The editable fields
	 */
	'edit_fields' => array(
		'name' => array(
			'title' => 'Name',
			'type' => 'text',
		),
		'grade' => array(
			'title' => 'Type',
			'type' => 'relationship',
			'name_field' => 'id'
		),
	),
	'form_width' => 400,
);
<?php
return array(
	'title' => 'Variables',
	'single' => 'variable',
	'model' => 'Variable',
	/**
	 * The display columns
	 */
	'columns' => array(
		'id',
		'value',
		'question_id'
	),
	/**
	 * The filter set
	 */
	'filters' => array(
		'id',
		'value' => array(
			'title' => 'Value',
		),
		'question_id' => array(
			'title' => 'QuestionID',
		)
	),
	/**
	 * The editable fields
	 */
	'edit_fields' => array(
		'value' => array(
			'title' => 'Value',
			'type' => 'text',
		),
		'question' => array(
			'title' => 'QuestionID',
			'type' => 'relationship',
			'name_field' => 'id'
		),
	),
	'form_width' => 400,
);
<?php
return array(
	'title' => 'Answers',
	'single' => 'answer',
	'model' => 'Answer',
	/**
	 * The display columns
	 */
	'columns' => array(
		'id',
		'value',
		'var_id',
		'correct',
	),
	/**
	 * The filter set
	 */
	'filters' => array(
		'id',
		'value' => array(
			'title' => 'Value',
		),
		'var_id' => array(
			'title' => 'VarID',
		),
		'correct' => array(
			'title' => 'Correct',
		),
	),
	/**
	 * The editable fields
	 */
	'edit_fields' => array(
		'value' => array(
			'title' => 'Value',
			'type' => 'text',
		),
		'variable' => array(
			'title' => 'VarID',
			'type' => 'relationship',
			'name_field' => 'id'
		),
		'correct' => array(
			'title' => 'Correct',
			'type' => 'number',
		),
	),
	'form_width' => 400,
);
<?php
return array(
	'title' => 'Histories',
	'single' => 'history',
	'model' => 'History',
	/**
	 * The display columns
	 */
	'columns' => array(
		'id',
		'user_id',
		'question_id',
		'var_id',
		'result',
	),
	/**
	 * The filter set
	 */
	'filters' => array(
		'id',
		'user_id' => array(
			'title' => 'UserID',
		),
		'var_id' => array(
			'title' => 'VarID',
		),
		'question_id' => array(
			'title' => 'QuestionID',
		),
		'result' => array(
			'title' => 'Result',
		),
	),
	/**
	 * The editable fields
	 */
	'edit_fields' => array(
		'user' => array(
			'title' => 'UserID',
			'type' => 'relationship',
			'name_field' => 'id'
		),
		'question' => array(
			'title' => 'QuestionID',
			'type' => 'relationship',
			'name_field' => 'id'
		),
		'variable' => array(
			'title' => 'VarID',
			'type' => 'relationship',
			'name_field' => 'id'
		),
	),
	'form_width' => 400,
);
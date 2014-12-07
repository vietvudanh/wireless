<?php
return array(
	'title' => 'QuestionsEntities',
	'single' => 'QuestionEntity',
	'model' => 'QuestionEntity',
	/**
	 * The display columns
	 */
	'columns' => array(
		'id',
		'question_id',
		'entity_id',
	),
	/**
	 * The filter set
	 */
	'filters' => array(
		'id',
		'question_id' => array(
			'title' => 'QuestionID',
		),
		'entity_id' => array(
			'title' => 'EntityID',
		),
		
	),
	/**
	 * The editable fields
	 */
	'edit_fields' => array(
		'entity' => array(
			'title' => 'EntityID',
			'type' => 'relationship',
			'name_field' => 'id'
		),
		'question' => array(
			'title' => 'QuestionID',
			'type' => 'relationship',
			'name_field' => 'id'
		),
	),
	'form_width' => 400,
);
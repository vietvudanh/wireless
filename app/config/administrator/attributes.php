<?php
/**
 * Actors model config
 */
return array(
	'title' => 'Attributes',
	'single' => 'attribute',
	'model' => 'Attribute',
	/**
	 * The display columns
	 */
	'columns' => array(
		'id',
		'name'
	),
	/**
	 * The filter set
	 */
	'filters' => array(
		'id',
		'name' => array(
			'title' => 'Name',
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
	),
	'form_width' => 400,
);
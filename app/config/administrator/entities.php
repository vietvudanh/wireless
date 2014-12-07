<?php
/**
 * Actors model config
 */
return array(
	'title' => 'Entities',
	'single' => 'entity',
	'model' => 'Entity',
	/**
	 * The display columns
	 */
	'columns' => array(
		'id',
		'name',
		'type'
	),
	/**
	 * The filter set
	 */
	'filters' => array(
		'id',
		'name' => array(
			'title' => 'Name',
		),
		'type' => array(
			'title' => 'Type',
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
		'type' => array(
			'title' => 'Type',
			'type' => 'text',
		),
	),
	'form_width' => 400,
);
<?php
return array(
	'title' => 'EntitiesAttributes',
	'single' => 'EntitiesAttributes',
	'model' => 'EntityAttribute',
	/**
	 * The display columns
	 */
	'columns' => array(
		'id',
		'entity_id',
		'attribute_id',
	),
	/**
	 * The filter set
	 */
	'filters' => array(
		'id',
		'entity_id' => array(
			'title' => 'EntityID',
		),
		'attribute_id' => array(
			'title' => 'AttributeID',
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
		'attribute' => array(
			'title' => 'AttributeID',
			'type' => 'relationship',
			'name_field' => 'id'
		),
	),
	'form_width' => 400,
);
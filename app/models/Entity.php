<?php
 
class Entity extends Eloquent {
 
    protected $table = 'entities';
    public $timestamps = false;
 
    /**
     * one-to-many relationship
     *
     */
    public function attributes(){
        return $this->belongsToMany('Attribute', 'entity_attribute', 'entity_id', 'attribute_id');
    }

    public function questions(){
        return $this->belongsToMany('Question', 'question_entity', 'question_id', 'entity_id');
    }
}
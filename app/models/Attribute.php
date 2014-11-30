<?php
 
class Attribute extends Eloquent {
 
    protected $table = 'attributes';
    public $timestamps = false;

    /**
     * one-to-many relationship
     *
     */
    public function entities(){
        return $this->belongsToMany('Entity', 'entity_attribute', 'attribute_id', 'entity_id');
    }
}
<?php
 
class EntityAttribute extends Eloquent {
 
    protected $table = 'entity_attribute';
    public $timestamps = false;
 
    /**
     * many to many relationship
     *
     */
    public function attribute(){
        return $this->belongsTo('Attribute');
    }
    public function entity(){
        return $this->belongsTo('Entity');
    }
}
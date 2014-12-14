<?php
 
class Image extends Eloquent {
 
    protected $table = 'images';
    
    public function setImgAttribute($value)
    {
        $tmp = URL::to('/').'/images/'.rand(100,1000).'-'.$value;
        $this->attributes['img'] = $tmp;
    }
}
<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Transaccion extends Model{
    protected $table = 'modelo_transaccion';
    protected $fillable = [
        'fecha','tipo','valor','descripcion','cuenta_id','date_created','updated_ad'
    ];

    public $timestamps = false;//nose guarda los valores del created_at y update_at

    protected $primaryKey = 'trasaccion_id';

    /*protected $hidden = [
        'cliente_id' 
    ];*/
}
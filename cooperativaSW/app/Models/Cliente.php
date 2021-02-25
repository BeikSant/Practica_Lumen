<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Cliente extends Model{
    protected $table = 'modelo_cliente';
    protected $fillable = [
        'cedula', 'nombres', 'apellidos', 'genero', 'estadoCivil', 'correo', 'telefono', 'celular', 'direccion', 'date_created', 'updated_at'
    ];

    public $timestamps = false;//nose guarda los valores del created_at y update_at

    protected $primaryKey = 'cliente_id';

    /*protected $hidden = [
        'cliente_id' 
    ];*/


}
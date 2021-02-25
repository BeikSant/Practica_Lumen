<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Cuenta extends Model{
    protected $table = 'modelo_cuenta';
    protected $fillable = [
        'numero', 'fechaApertura', 'apellidos', 'tipoCuenta', 'saldo', 'estado', 'cliente_id', 'date_created'
    ];

    public $timestamps = false;//nose guarda los valores del created_at y update_at

    protected $primaryKey = 'cuenta_id';

    /*protected $hidden = [
        'cuenta_id' 
    ];*/
}
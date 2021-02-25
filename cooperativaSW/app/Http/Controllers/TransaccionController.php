<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Cuenta;
use App\Models\Cliente;
use App\Models\Transaccion;
use App\Http\Helper\ResponseBuilder;
use DB;

class TransaccionController extends Controller{

    public function __construct(){
        //
    }
    public function retiro(Request $request, $cedula, $numero){
        if ($request->isJson()){
            $cliente = Cliente::where('cedula', $cedula)->first();
            if(!empty($cliente)){
                $cuentas = Cuenta::all()->where('cliente_id',$cliente->cliente_id);
                $cuenta = $cuentas->where('numero',$numero)->first();
                if(!empty($cuenta)){
                    $data = $request->json()->all();
                    if ($data['valor']<=$cuenta->saldo && $data['valor']>0){
                        $transaccion = Transaccion::create([
                            'fecha' => $data['fecha'],
                            'tipo' => "retiro",
                            'valor' => $data['valor'],
                            'descripcion' => $data['descripcion'],
                            "cuenta_id" => $cuenta->cuenta_id,
                            "date_created" => $data['date_created'],
                            "updated_ad" => $data['updated_ad'],
                            ]);
                        $cuenta->saldo = $cuenta->saldo-$data['valor'];
                        $cuenta->save();
                        $status = true;
                        $info = "Retiro exitoso";
                        return ResponseBuilder::result($status, $info, $cuenta);
                    } else {
                        $status = false;
                        $info = "Saldo Insuficiente";
                        return ResponseBuilder::result($status, $info);
                    } 
                } else {
                    $status = false;
                    $info = "Cuenta no existente";
                    return ResponseBuilder::result($status, $info);
            }
            } else {
                $status = false;
                $info = "Cliente no existente";
                return ResponseBuilder::result($status, $info);
            }
        } else {
            $status = false;
            $info = "Error: Anauthorizade";
            return ResponseBuilder::result($status, $info);
        }
    }

    public function deposito(Request $request, $cedula, $numero){
        if ($request->isJson()){
            $cliente = Cliente::where('cedula', $cedula)->first();
            if(!empty($cliente)){
                $cuentas = Cuenta::all()->where('cliente_id',$cliente->cliente_id);
                $cuenta = $cuentas->where('numero',$numero)->first();
                if(!empty($cuenta)){
                    $data = $request->json()->all();
                    if ($data['valor']>0){
                        $transaccion = Transaccion::create([
                            'fecha' => $data['fecha'],
                            'tipo' => "deposito",
                            'valor' => $data['valor'],
                            'descripcion' => $data['descripcion'],
                            "cuenta_id" => $cuenta->cuenta_id,
                            "date_created" => $data['date_created'],
                            "updated_ad" => $data['updated_ad'],
                            ]);
                        $cuenta->saldo = $cuenta->saldo+$data['valor'];
                        $cuenta->save();
                        $status = true;
                        $info = "Depósito exitoso";
                        return ResponseBuilder::result($status, $info, $cuenta);
                    } else {
                        $status = false;
                        $info = "Saldo Insuficiente";
                        return ResponseBuilder::result($status, $info);
                    } 
                } else {
                    $status = false;
                    $info = "Cuenta no existente";
                    return ResponseBuilder::result($status, $info);
            }
            } else {
                $status = false;
                $info = "Cliente no existente";
                return ResponseBuilder::result($status, $info);
            }
        } else {
            $status = false;
            $info = "Error: Anauthorizade";
            return ResponseBuilder::result($status, $info);
        }
    }
}

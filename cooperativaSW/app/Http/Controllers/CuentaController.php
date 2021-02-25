<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Cuenta;
use App\Models\Cliente;
use App\Http\Helper\ResponseBuilder;
use DB;

class CuentaController extends Controller{

    public function __construct(){
        //
    }

    public function allSinRestricciones(Request $request, $cedula){
        $cliente = Cliente::where('cedula', $cedula)->first();
        if(!empty($cliente)){
            $cuenta = Cuenta::all()->where('cliente_id', $cliente->cliente_id);
            $status = true;
            $info = "Cuentas del Cliente";
            return ResponseBuilder::result($status, $info, $cuenta);
        } else {
            $status = false;
            $info = "No existe el cliente";
            return ResponseBuilder::result($status, $info);
        }
    }
     
    public function allJson(Request $request, $cedula){
        if($request->isJson()){
            $cliente = Cliente::where('cedula', $cedula)->first();
            if(!empty($cliente)){
                $cuenta = Cuenta::all()->where('cliente_id', $cliente->cliente_id);
                $status = true;
                $info = "Cuentas del Cliente";
                return ResponseBuilder::result($status, $info, $cuenta);
            } else {
                $status = false;
                $info = "Is doesn't here";
                return ResponseBuilder::result($status, $info);
            }
        }
        $status = false;
        $info = "Unauthorized";
        return response()->json(['error'=>'Unauthorized'],401,[]);
    }

    public function getCuenta(Request $request, $cedula, $numero){
        if ($request->isJson()){
            $cliente = Cliente::where('cedula', $cedula)->first();
            if(!empty($cliente)){
                $cuentas = Cuenta::all()->where('cliente_id',$cliente->cliente_id);
                $cuenta = $cuentas->where('numero',$numero)->first();
                if(!empty($cuenta)){
                    $status = true;
                    $info = "Cuent is Here";
                    return ResponseBuilder::result($status, $info, $cuenta);
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

    public function create(Request $request, $cedula){
        if ($request->isJson()){
            $cliente = Cliente::where('cedula', $cedula)->first();
            if(!empty($cliente)){
                $data = $request->json()->all();
                $cuenta = Cuenta::create([
                'numero' => $data['numero'],
                'fechaApertura' => $data['fechaApertura'],
                'tipoCuenta' => $data['tipoCuenta'],
                'saldo' => $data['saldo'],
                "estado" => 1,
                "cliente_id" => $cliente->cliente_id,
                "date_created" => $data['date_created'],
                ]);
                $status = true;
                $info = "Cuenta create succes";
                return ResponseBuilder::result($status, $info, $cuenta);
            } else {
                $status = false;
                $info = "No existe el cliente";
                return ResponseBuilder::result($status, $info);
            }
        }
        return response()->json(['error'=>'Unauthorized'],401,[]);
    }

    public function deleteCuenta(Request $request, $cedula, $numero){
        if ($request->isJson()){
            $cliente = Cliente::where('cedula', $cedula)->first();
            if(!empty($cliente)){
                $cuentas = Cuenta::all()->where('cliente_id',$cliente->cliente_id);
                $cuenta = $cuentas->where('numero',$numero)->first();
                if(!empty($cuenta)){
                    $cuenta->delete();
                    $status = true;
                    $info = "Cuenta Eliminada";
                    return ResponseBuilder::result($status, $info);
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

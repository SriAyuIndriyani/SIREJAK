<?php

namespace App\Http\Controllers\Superadmin;

use App\Http\Controllers\Controller;
use App\Models\ProdiModels;
use Illuminate\Http\Request;

class ProdiControllers extends Controller
{
    function index () {
        $prodi =ProdiModels::all();
        return view ("superadmin.daftarprodi.index",compact("prodi"));
    }

    function create(){
        return view("superadmin.daftarprodi.create");
    }

    function createData (Request $request){
        ProdiModels::create([
            'prodi'=> $request->input('prodi'),
        ]);
        return redirect("/daftar-prodi");
    }
}

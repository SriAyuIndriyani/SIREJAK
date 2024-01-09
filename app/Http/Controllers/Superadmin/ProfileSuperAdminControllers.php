<?php

namespace App\Http\Controllers\Superadmin;

use App\Http\Controllers\Controller;
use App\Models\ProdiModels;
use App\Models\UsersModels;
use Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Collection;
use Illuminate\Http\Request;

class ProfileSuperAdminControllers extends Controller
{

    function index(){
$oke=Auth::id();


        // Get all ProdiModels
        $user = Auth::id();
        $id=UsersModels::find($user);
        $prodi = ProdiModels::all();
    
        // Get the total number of professors for each id_prodi
        $totalDosen = UsersModels::select('tb_prodi.id_prodi', 'tb_prodi.prodi', DB::raw('COUNT(tb_user.id_prodi) as total_dosen'))
            ->rightJoin('tb_prodi', 'tb_user.id_prodi', '=', 'tb_prodi.id_prodi') // Use rightJoin to include Prodi names with no professors
            ->groupBy('tb_prodi.id_prodi', 'tb_prodi.prodi') // Include 'prodi' in GROUP BY
            ->get()->toArray(); // Convert the collection to an array
    
        // Create an array of all Prodi names
        $allProdiNames = $prodi->pluck('prodi')->toArray();
    
        // Merge the $totalDosen array with the array containing all Prodi names
        $mergedData = [];
        foreach ($allProdiNames as $prodiName) {
            $mergedData[] = [
                'prodi' => $prodiName,
                'total_dosen' => 0,
            ];
        }
    
        foreach ($totalDosen as $data) {
            $index = array_search($data['prodi'], array_column($mergedData, 'prodi'));
            if ($index !== false) {
                $mergedData[$index]['total_dosen'] = $data['total_dosen'];
            }
        }
    
        return view('superadmin.profile.index', compact('prodi', 'mergedData','oke'));
    }
    function updateuser($id){
        $user = UsersModels::find($id);
        return view('superadmin.profile.updateuser',compact('user','id'));
    }
    function updateuserData(Request $request,$id){
        $hash=bcrypt($request->input('password'));
        UsersModels::where('tb_user.id',$id)
        ->update([
            'name'=>$request->input('name'),
            'email'=>$request->input('email'),
            'password'=>$hash,
        ]);
        return redirect("/profile-super-admin")->with('success','User berhasil diperbarui.');
        }    
}

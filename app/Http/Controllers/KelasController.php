<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kelas;
class KelasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $kelas= Kelas::with('Peserta')->get();
         return $kelas;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {



    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $this->validate($request, [
        'nama_kelas'=>'required',
      ]);
      $kelas= Kelas::create($request->all());

      if ($kelas != FALSE) {
        return response()->json([
          'data'=> $kelas,
          'status'=> 'berhasil',
          'message'=> 'data berhasil ditambahkan',
        ],201);
      }else {
        return response()->json([
          'status'=> 'gagal',
          'message'=> 'data gagal ditambahkan',
        ],405);
      }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $kelas= Kelas::with('Peserta')->find($id);

      if(!$kelas)
      return response()->json([
        'error'=>'id tidak ditemukan'
      ],404);
      return $kelas;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}

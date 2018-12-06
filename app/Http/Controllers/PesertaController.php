<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Peserta;

class PesertaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $peserta= Peserta::with('Kelas')->get();

        return $peserta;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
          $this->validate($request,[
            'nama'=>'required',
            'kelas'=>'required',
            'alamat'=> 'required',
          ]);

          $peserta= Peserta::create($request->all());

          if ($peserta != FALSE) {
            return response()->json([
              'data'=> $peserta,
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
        $peserta= Peserta::with('Kelas')->find($id);

        if(!$peserta)
        return response()->json([
          'error'=>'id tidak ditemukan'
        ],404);
        return $peserta;
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

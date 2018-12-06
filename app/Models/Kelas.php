<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kelas extends Model
{
  protected $table = 'kelas';
  protected $primaryKey = 'id_kelas';
  public $incrementing = true;
  protected $fillable = ['nama_kelas'];


  public function Peserta()
  {
      return $this->belongsToMany('App\Models\Peserta','peserta_kelas','id_kelas','id_peserta');
  }

}

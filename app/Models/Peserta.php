<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Peserta extends Model
{
  protected $table = 'peserta';
  protected $primaryKey = 'id_peserta';
  public $incrementing = true;
  protected $fillable = ['nama','kelas','telpon'];

  public function Kelas()
  {
      return $this->belongsToMany('App\Models\Kelas','peserta_kelas','id_peserta','id_kelas');
  }
}

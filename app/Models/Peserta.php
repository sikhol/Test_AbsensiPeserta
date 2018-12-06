<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Peserta extends Model
{
  protected $table = 'peserta';
  protected $primaryKey = 'id_peserta';
  public $incrementing = true;
  protected $fillable = ['nama','kelas','alamat'];

  public function Kelas()
  {
      return $this->hasMany('App\Models\Kelas','id_kelas');
  }
}

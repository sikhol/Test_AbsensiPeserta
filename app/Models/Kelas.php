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
      return $this->belongsTo('App\Models\Peserta','id_peserta');
  }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Relasi extends Model
{
  protected $table = 'peserta_kelas';
  protected $primaryKey = 'id_peserta_kelas';
  public $incrementing = true;
  protected $fillable = ['id_kelas','id_peserta'];




}

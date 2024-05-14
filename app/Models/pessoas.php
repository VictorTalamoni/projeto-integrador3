<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class pessoas extends Model
{
    use HasFactory;
    protected $primaryKey = 'cpf';
    protected $fillable = ['cpf', 'nome', 'telefone', 'telefone_referencia', 'titular_numero_referencia', 'endereco', 'imagem'];
}

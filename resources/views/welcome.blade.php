@extends('layouts.main')
@section('title', 'Página inicial')
@section('pagina', 'Página Inicial')
@section('nav1', 'Cadastrar Pessoas')
@section('nav2', 'eventos/create')
@section('styledobody')
bg-success;
background-color: rgb(169, 250, 191);
@stop

@section('content')
<div class="container">
<div class="row mt-4">
<div class="col">
<div class="card mt-5">
<div class="card-header">
    <h3 class="display-6 text-center" style= "color: green;"> Pessoas cadastradas </h2>
    @if(session('msg'))
    <div class="alert alert-success" role="alert">
        <center> <p> {{session ('msg')}} </p> </center>
    </div>
    @endif
</div>
<div class="card-body">
    <div class="table-responsive">
<table class="table table-bordered text-center ">
    <tr class="table-success">
        <td>CPF</td>
        <td>Nome</td>
        <td>Telefone</td>
        <td>Telefone de Referência</td>
        <td>Titular do número de referência</td>
        <td> Editar </td>
        <td> Apagar </td>
        <td> Perfil </td>
    </tr>
    @foreach($pessoas as $pessoal)
    <tr>
        <td>{{ $pessoal->cpf }}</td>
        <td>{{ $pessoal->nome }}</td>
        <td>{{ $pessoal->telefone }}</td>
        <td>{{ $pessoal->telefone_referencia }}</td>
        <td>{{ $pessoal->titular_numero_referencia }}</td>
        <td><a href="/eventos/editar/{{ $pessoal->cpf }}" class="btn btn-success">Editar</a></td>
        <td><form action="/eventos/{{ $pessoal->cpf }}" method="POST">@csrf @method('DELETE')<button type="submit" class="btn btn-success delete-btn">Deletar</button></td>
        <td><a href="/eventos/{{ $pessoal->cpf }}" class="btn btn-success">Visualizar</a></td>
    </tr>
    @endforeach
</table>
@endsection
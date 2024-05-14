@extends('layouts.main')
@section('title', 'Cadastro de Pessoas')
@section('pagina', 'Cadastro de pessoas')
@section('nav1', 'Página Inicial')
@section('nav2')
/
@stop
@section('styledobody')
background-color: rgb(169, 250, 191);
@stop

@section('content')



<br>
<div class="container p-5 col-sm-8 justify-content-center rounded" style="background-color: rgb(242, 253, 245);">
    <form method="POST" action="/eventos" enctype="multipart/form-data">
    @csrf
    <center><h1 style="color: green;">Cadastro de Pessoas</h1></center>
    <hr>
    
    <div class="mb-3">
    <label for="cpf" class="form-label"><strong>CPF: </strong></label>
    <input type="text" class="form-control col-sm-5" placeholder="Insira seu CPF" name="cpf" id="cpf" pattern="[0-9]{11}" title="Verifique o número" required>
    </div>

    <div class="mb-3">
    <label for="nome" class="form-label"><strong>Nome: </strong></label>
    <input type="text" name="nome" class="form-control" placeholder="Insira seu nome" id="nome" required>
    </div>

    <div class="mb-3">
    <label for="number"  class="form-label"><strong>Telefone: </strong></label>
    <input type="tel" name="number" class="form-control" placeholder="Insira seu número de telefone" pattern="[0-9]{11}" title="Verifique o número" id="number">
    </div>

    <div class="mb-3">
    <label for="numberr" class="form-label"><strong>Número de referência: </strong></label>
    <input type="tel" name="numberr" class="form-control" placeholder="Insira o número de telefone de um responsável" pattern="[0-9]{11}" title="Verifique o número" id="numberr">
    </div>

    <div class="mb-3">
    <label for="nomer" class="form-label"><strong>Nome do responsável: </strong></label>
    <input type="text" class="form-control" name="nomer" placeholder="Insira o nome do responsável" id="nomer">
    </div>

    <div class="mb-3">
    <label for="endereco" class="form-label"><strong>Insira seu endereço: </strong></label>
    <input type="text" class="form-control" name="endereco" placeholder="Insira o seu endereço aqui" id="endereco">
    </div>

    <label for="foto" class="form-label"><strong>Insira uma foto: </strong></label>
    <input type="file"  class="form-control" name="foto" id="foto" title="Insira uma foto">

    <hr>
    <div class="text-center">
    <div class="d-grid gap-2 col-2 btn-lg mx-auto">
    <input class="btn btn-success" type="submit" name="submit" value="Enviar">
    @if($errors->has('cpf'))
    <div class="alert alert-danger">
        <center>{{ $errors->first('cpf') }}</center>
    </div>
    @endif
    @if(session('msg'))
    <div class="alert alert-success" role="alert">
        <center> <p> {{session ('msg')}} </p> </center>
    </div>
    @endif
    </div>
    </div>
    </form>
    </div>

@endsection
@extends('layouts.main')
@section('title', $pessoas->cpf)
@section('pagina', 'Editar Pessoas')
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
    <form method="POST" action="/eventos/update/{{$pessoas->cpf}}" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <center><h1 style="color: green;">Edição de Pessoas</h1></center>
    <hr>

    <div class="mb-3">
    <label for="nome" class="form-label"><strong>Nome: </strong></label>
    <input type="text" name="nome" class="form-control" value="{{$pessoas->nome}}" id="nome" required>
    </div>

    <div class="mb-3">
    <label for="number"  class="form-label"><strong>Telefone: </strong></label>
    <input type="tel" name="number" class="form-control" value="{{$pessoas->telefone}}" pattern="[0-9]{11}" title="Verifique o número" id="number">
    </div>

    <div class="mb-3">
    <label for="numberr" class="form-label"><strong>Número de referência: </strong></label>
    <input type="tel" name="numberr" class="form-control" value="{{$pessoas->telefone_referencia}}" pattern="[0-9]{11}" title="Verifique o número" id="numberr">
    </div>

    <div class="mb-3">
    <label for="nomer" class="form-label"><strong>Nome do responsável: </strong></label>
    <input type="text" class="form-control" name="nomer" value="{{$pessoas->titular_numero_referencia}}" id="nomer">
    </div>

    <div class="mb-3">
    <label for="endereco" class="form-label"><strong>Insira seu endereço: </strong></label>
    <input type="text" class="form-control" name="endereco" value="{{$pessoas->endereco}}" id="endereco">
    </div>

    <label for="foto" class="form-label"><strong>Insira uma foto: </strong></label>
    <input type="file"  class="form-control" name="foto" id="foto" title="Insira uma foto">
    </p>
    <center><img width='20%' height='300px' src="/img/pessoas/{{$pessoas ->imagem}}" alt="foto" class="img-preview"></center>

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
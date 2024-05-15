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
    <center><form action="/" method="GET"></center>
    <input type="text" id="search" name="search" class="form-control" placeholder="Procure pelo nome aqui">
    </form>
    @if($search)
        </p>
        <center> Buscando pelo nome : {{$search}} </center>
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
        <td><form action="/eventos/{{ $pessoal->cpf }}" method="POST">@csrf @method('DELETE')<button type="submit" class="btn btn-success delete-btn">Deletar</button></form></td>
        <td><a href="/eventos/{{ $pessoal->cpf }}" class="btn btn-success">Visualizar</a></td>
    </tr>
    @endforeach

</table>
<div class="pagination d-flex justify-content-center">
                            <ul class="pagination">
                                @if ($pessoas->onFirstPage())
                                
                                    <li class="page-item disabled"><span class="page-link">Anterior</span></li>
                                @else
                                    <li class="page-item"><a href="{{ $pessoas->previousPageUrl() }}" class="page-link green-btn">Anterior</a></li>
                                @endif

                                @if ($pessoas->hasMorePages())
                                    <li class="page-item"><a href="{{ $pessoas->nextPageUrl() }}" class="page-link green-btn">Próximo</a></li>
                                @else
                                    <li class="page-item disabled"><span class="page-link">Próximo</span></li>
                                @endif
                            </ul>
                        </div>
@endsection
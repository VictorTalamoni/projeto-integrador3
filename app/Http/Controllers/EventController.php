<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\pessoas;

class EventController extends Controller
{
    public function perfil($cpf){
        $pessoal2 = pessoas::findOrFail($cpf);
        return view('eventos.perfil', ['pessoas' => $pessoal2]);
    }
    public function index(){

        $pessoal = pessoas::all();
    
        return view('welcome', ['pessoas' => $pessoal]);
}

    public function create(){
        return view('eventos.create');
    }

    public function store(Request $request){

            $cpfExistente = pessoas::where('cpf', $request->cpf)->exists();
        
            if($cpfExistente) {
                return redirect('eventos/create')->withErrors(['cpf' => 'Erro, CPF duplicado!']);
            }

            $pessoal1 = new pessoas;
    
            $pessoal1->cpf = $request->cpf;
            $pessoal1->nome = $request->nome;
            $pessoal1->telefone = $request->number;
            $pessoal1->telefone_referencia = $request->numberr;
            $pessoal1->titular_numero_referencia = $request->nomer;
            $pessoal1->endereco = $request->endereco;

            if ($request->hasFile('foto') && $request->file('foto')->isValid()) {

                $requestFoto = $request->foto;

                $extensao = $requestFoto->extension();

                $nomeFoto = md5($requestFoto->getClientOriginalName() . strtotime("agora")) . "." . $extensao;

                $requestFoto->move(public_path('img/pessoas'), $nomeFoto);

                $pessoal1->imagem = $nomeFoto;

            }
    
            $pessoal1->save();
    
            return redirect('eventos/create')->with('msg', 'Cadastro feito com sucesso!');
        }

    public function criar(){
        return view('criar');
    }

    public function parametros(){
        $busca = request('cpf');

        return view('parametros', ['busca'=>$busca]);
    }

    public function destruir($cpf){
        $pessoa = pessoas::findOrFail($cpf);

        $caminhoImagem = public_path('img/pessoas/') . $pessoa->imagem;
        if (file_exists($caminhoImagem)) {
            unlink($caminhoImagem);
        }

        $pessoa->delete();


        return redirect('/')->with('msg', 'Dado excluido com sucesso');
    }

    public function editar($cpf){

        $pessoal= pessoas::findOrFail($cpf);

        return view('eventos.editar', ['pessoas' => $pessoal])->with('msg','Dados editados com sucesso');


    }

    public function update(Request $request, $cpf){

        $pessoal = pessoas::findOrFail($cpf);

        $pessoal->nome = $request->nome;
        $pessoal->telefone = $request->number;
        $pessoal->telefone_referencia = $request->numberr;
        $pessoal->titular_numero_referencia = $request->nomer;
        $pessoal->endereco = $request->endereco;
        $imagemAntiga = $pessoal->imagem;

        if ($request->hasFile('foto') && $request->file('foto')->isValid()) {

            if ($imagemAntiga) {
                
                $caminhoImagemAntiga = public_path('img/pessoas/' . $imagemAntiga);
                if (file_exists($caminhoImagemAntiga)) {
                    unlink($caminhoImagemAntiga);
                }
            }

            

            $requestFoto = $request->foto;

            $extensao = $requestFoto->extension();

            $nomeFoto = md5($requestFoto->getClientOriginalName() . strtotime("agora")) . "." . $extensao;

            $requestFoto->move(public_path('img/pessoas'), $nomeFoto);

            $pessoal->imagem = $nomeFoto;

        }


        $pessoal->save();


        return redirect('/')->with('msg','Dados editados com sucesso');
    }
}



?>
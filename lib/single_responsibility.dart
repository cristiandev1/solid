class Usuario {
  
  validaUsuarioExiste(){
    //logica para verificar se usuario existe (importante regra de negocio)
  }

  salvarUsuario(){
    print("salvar usuario db...");
  }

  /* 
    Nao faz sentido a classe Usuario gravar em algum banco de dados.
    Todas as informacoes de database, tabelas, usuarios e campos nao devem estar nesta classe Usuario.
    A classe Usuario deve somente saber coisas relacionadas ao dominio do ator dela, tudo relacionado a Usuario.

    Tudo referente a salvar, chamar API etc nao é de responsabilidade do Usuario.
  */
}

class UsuarioRepository{
  void save() => print('salvar usuario db...');
}

class UsuarioNovo {
  UsuarioRepository _repository = UsuarioRepository();
  validaUsuarioExiste(){
    //logica para verificar se usuario existe (importante regra de negocio)
  }

  salvarUsuario(){
    _repository.save();
  }

  /* 
    Agora a classe Usuario nao sabe mais qual banco de dados, qual tabela vai chamar e etc...
    Somente sabe que existe uma classe que faz isso e chama ela..

    Atencao ao fazer isso nós corrigimos este principio de Responsabilidade Unica, 
    porem ainda estamos ferindo outros principios.
  */
}
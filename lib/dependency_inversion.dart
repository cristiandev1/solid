/* 
  DIP - Inversao de dependencias (nao é igual Injecao de Dependencia)
  Depender de interfaces e nao de implementacoes (classes concretas).
*/

abstract class IUsuarioRepository {
  void save();
}

class UsuarioRepositoryImpl implements IUsuarioRepository {
  @override
  void save() {
    print('implementacao');
  }
}

class Usuario {
  final UsuarioRepositoryImpl repositoryImpl;
  Usuario(this.repositoryImpl); 

  /*
    Problemática desse codigo, se um dia for preciso alterar o UsuarioRepositoryImpl precisaremos retornar
    a classe Usuario e fazer alteracao nela, e isso nao é legal, pois certamente introduziriamos novos bugs nessa 
    mudanca, e sem contar o fato da classe nao ficar testavel.
   */

}

//Utilizamos a injecao de dependencia para inverter o conhecimento da classe.
class UsuarioNovo{
  final IUsuarioRepository repository;
  UsuarioNovo(this.repository);

  void salvarUsuario(){
    repository.save();
  }
}

//Imagine em um cenário de troca de banco de dados (viraria um caos se estivesse dependendo da implementacao)

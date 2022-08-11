/* 
  Os subtipos devem ser substituiveis pelos seus tipos base.

  Diferencas entre IMPLEMENTS E EXTENDS

  A diferença é que com implements você implementa uma interface... 
  E com extends você extende as funcionalidades de uma classe.
  A interface é um contrato de implementação de métodos definidos na interface. 

  Assim se você implementar uma interface, terá que implementar os métodos nela definidos... 

  Já extender uma classe você herda os métodos dela e pode fazer overwrite de métodos entre outras coisas
  definidas na programação OO.

  Respeitar o principio de Liskov forca o nosso programa a ter as abstrações no nivel certo
  e ser mais consistente.

*/

//Contrato a ser seguido por quem for implementar.
abstract class IConta {
  void depositar(double valor);
  void transferir(double valor);
}

class ContaCorrente implements IConta {
  @override
  void depositar(double valor) {
    print('dinheiro depositado conta corrente');
  }

  @override
  void transferir(double valor) {
    print('dinheiro transferido conta corrente');
  }
}

//Por algum motivo tecnico ou nao, o metodo de transferencia ainda nao esta disponivel e precisa retornar um "erro"
class ContaPoupanca implements IConta {
  @override
  void depositar(double valor) {
    print('dinheiro depositado conta poupanca');
  }

  @override
  void transferir(double valor) {
    throw Exception('Indisponivel no momento');
  }
}

// Exemplo fere o LSP .....
// Solucao CRIAR NOVAS INTERFACES PROXIMO PRINCIPIO
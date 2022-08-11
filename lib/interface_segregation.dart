/*
  ISP - Muitas interfaces especificas sao melhores do que uma geral.
 */

//Contrato a ser seguido por quem for implementar.
abstract class IConta {
  void depositar(double valor);
}

abstract class IServicos {
  void transferir(double valor);
  void financiamento(double valor);
}

class ContaCorrente implements IConta, IServicos {
  @override
  void depositar(double valor) {
    print('depositando conta corrente');
  }

  @override
  void financiamento(double valor) {
    print('financiamento conta corrente');
  }

  @override
  void transferir(double valor) {
    print('transferencia conta corrente');
  }
}

class ContaPoupanca implements IConta {
  @override
  void depositar(double valor) {
    print('dinheiro depositado conta poupanca');
  }
}



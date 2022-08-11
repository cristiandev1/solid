/* 
  Classe deve estar aberta a extensao e fechada para modificacao.
*/

/* 
  Aparentemente nessa classe pagamento para adicionar uma nova forma de pagamento como PIX bastava adicionar
  um novo if(tipoPagamento == tipo) que resolveria o problema correto ? 
  Na verdade, essa nao seria a melhor forma de resolver esse problema. Pois estariamos com um grande risco de
  introduzir novos bugs e quebrar algo em funcionamento em producao.
*/
class Pagamento{
  void pagar({required double valor, required String tipoPagamento}){
    if(tipoPagamento == 'debito'){
      //Pagamento debito
    } else if(tipoPagamento == 'credito'){
      //Pagamento credito
    } else if(tipoPagamento ==  'boleto'){
      //Pagamento boleto
    }
  } 
}

/* 
  Para resolver iremos criar uma classe abstrata e definir um contrato de pagamento e assim a classe responsavel
  por realizar o pagamento extende dessa classe abstrata.
*/

abstract class IPagamento {
  void pagar({required double valor});
}

class PagamentoBoleto extends IPagamento{
  @override
  void pagar({required double valor}) {
    // Implementar forma de pagar com boleto
  }
}

class PagamentoDebito extends IPagamento{
  @override
  void pagar({required double valor}) {
     // Implementar forma de pagar com debito
  }
}

class PagamentoCredito extends IPagamento{
  @override
  void pagar({required double valor}) {
     // Implementar forma de pagar com credito
  }
}
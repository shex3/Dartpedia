import 'package:vem_pro_fut/selecao.dart';
import 'package:vem_pro_fut/jogo.dart';

void main() {
  Selecao brasil = Selecao(
    "Brasil",
    Grupo.A,
    posicaoRankingFifa: 5,
 );

  Selecao mexico = Selecao(
    "México",
    Grupo.A,
    posicaoRankingFifa: 15,
 );

  registrarJogo(brasil, mexico);

  print(brasil);
  print(mexico);
}

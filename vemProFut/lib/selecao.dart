// Por mais que voces suspeitem, quem ta escrevendo isso e o gabriel mesmo entao vou deixar separado o que e cada partezinha caso voces precisem mexer e eu nao consiga ajudar na hora	

// Grupos da Copa: A até L
enum Grupo { A, B, C, D, E, F, G, H, I, J, K, L }

// Essa e a parte que vai coletar os dados, tipo o molde de cada selecao 
class Selecao {
  final String nome;
  final Grupo grupo;
  int pontos;
  int golsPro;
  int golsSofridos;
  int cartoesAmarelos;
  int cartoesVermelhos;
  int posicaoRankingFifa; // professor pediu pra usar como desempate final
 
  Selecao(
    this.nome,
    this.grupo, {
    required this.posicaoRankingFifa,
    this.pontos = 0,
    this.golsPro = 0,
    this.golsSofridos = 0,
    this.cartoesAmarelos = 0,
    this.cartoesVermelhos = 0,
  });
 
  // essa parte  calcula na hora, não precisa atualizar manualmente
  int get saldoGols => golsPro - golsSofridos;
 
  void somarPontosVitoria() => pontos += 3;
  void somarPontosEmpate() => pontos += 1;
 
  @override
  String toString() {
    return '$nome (Grupo ${grupo.name}) | Pts: $pontos | SG: $saldoGols | '
        'GP: $golsPro | Ranking FIFA: $posicaoRankingFifa';
  }
}

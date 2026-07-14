import 'dart:io';
import 'selecao.dart';

// Função responsável por registrar o resultado de uma partida
void registrarJogo(Selecao timeA, Selecao timeB) {

  // Exibe o título da partida
  print("===== REGISTRAR PARTIDA =====");
  print("${timeA.nome} x ${timeB.nome}");

  // Solicita os gols do primeiro time
  print("Gols do ${timeA.nome}:");
  int golsA = int.parse(stdin.readLineSync()!);

  // Solicita os gols do segundo time
  print("Gols do ${timeB.nome}:");
  int golsB = int.parse(stdin.readLineSync()!);

  // Solicita os cartões amarelos do primeiro time
  print("Cartões amarelos do ${timeA.nome}:");
  int amarelosA = int.parse(stdin.readLineSync()!);

  // Solicita os cartões vermelhos do primeiro time
  print("Cartões vermelhos do ${timeA.nome}:");
  int vermelhosA = int.parse(stdin.readLineSync()!);

  // Solicita os cartões amarelos do segundo time
  print("Cartões amarelos do ${timeB.nome}:");
  int amarelosB = int.parse(stdin.readLineSync()!);

  // Solicita os cartões vermelhos do segundo time
  print("Cartões vermelhos do ${timeB.nome}:");
  int vermelhosB = int.parse(stdin.readLineSync()!);

  // Atualiza os gols marcados e sofridos do primeiro time
  timeA.golsPro += golsA;
  timeA.golsSofridos += golsB;

  // Atualiza os gols marcados e sofridos do segundo time
  timeB.golsPro += golsB;
  timeB.golsSofridos += golsA;

  // Atualiza a quantidade de cartões do primeiro time
  timeA.cartoesAmarelos += amarelosA;
  timeA.cartoesVermelhos += vermelhosA;

  // Atualiza a quantidade de cartões do segundo time
  timeB.cartoesAmarelos += amarelosB;
  timeB.cartoesVermelhos += vermelhosB;

  // Verifica quem venceu a partida
  if (golsA > golsB) {

    // Vitória do primeiro time (3 pontos)
    timeA.somarPontosVitoria();

  } else if (golsB > golsA) {

    // Vitória do segundo time (3 pontos)
    timeB.somarPontosVitoria();

  } else {

    // Em caso de empate, cada time recebe 1 ponto
    timeA.somarPontosEmpate();
    timeB.somarPontosEmpate();

  }

  // Informa que o resultado foi registrado
  print("Resultado registrado com sucesso!");
}

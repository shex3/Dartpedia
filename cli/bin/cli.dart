/*-----------------------------------------------------------------------------

Informacoes

O aplicativo cli faz parte do projeto Dartpedia.

O cli eh nosso primeiro aplicativo que esta sendo desenvolvido usando Dart.

cli.dart - FIca localizado na pasta dartpedia, em /dartpedia/cli/bin.
oking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

Outras informacoes importantes sobre o cli; nosso aplicativo.

site              :

Autor             : Gabriel Barbosa Silva <gabrielbarbosa.gbs19@gmail.com>

Manutencao        :

-------------------------------------------------------------------------------

Funcionamento:

Inicialmente o cli, ao ser executado, mostra uma saudacao na tela, por exemplo:

Dentro da pasta dartpedia em /home/gabriel.barbosa/dartpedia/cli rode o comando dart run; deve aparecer a mensagem de saudacao, "Hello, Dart!"

Obs. Imporatnte ! Este aplicativo esta em desenvolvimento e ao longo do tempo o compartamento do aplicativo pode mudar.

-------------------------------------------------------------------------------

Dicionario do Versionamento:

v = versao

0 = Inicio do versionamento

. = Implementacao de versionamento

1 = Proxima versao, 2, proxima versao, e assim por diante.

-------------------------------------------------------------------------------

Historico do Versionamento:

-------------------------------------------------------------------------------

Versao: 0.0.0

Data: 10/04/2026
 
Descricao do codigo: Codigo original...

Codigo:

import 'package:cli/cli.dat' as cli;

void main(List<String> arguments) {
	print('Hello World: ${cli.calculate()}!')
}

Saida padrao ao executar o codigo:

Comando: dart run bin/cli.dart || dart bin/cli.dart

Saida: Hello World: 42!

-------------------------------------------------------------------------------



Versao 0.0.1

Data: 10/04/2026

Descricao do Codigo: 3. Simplifique a saida por enquanto. Apague a primeira linha (voce nao precisa dessa declaracao de importacao) e altere a print declaracao para exibir uma saudacao simples:

import 'package:cli/cli.dart' as cli; // Delete this entire line

void main(List<String> arguments) {
  print('Hello, Dart!'); // Change this line
}

4. Salve o arquivo. Em seguida, no terminal, execute o programa novamente:

Codigo:

void main(List<String> arguments) {
	print ('Hello, Dart!');
}

Saida padrao ao executar o codigo:

Comando: dart run || dart run bin/cli.dart

Saida: Hello, Dart

-------------------------------------------------------------------------------


Versao: 0.0.2

Data: 10/04/2026

Descricao do codigo: Implemente o versioncomando em cli/bin/cli.dart: Adicione logica para lidar com um versioncomando que imprime a versao atual da CLI. Use um if instruÃ§Ã£o `if` para verificar se o primeiro argumento fornecido eh `true` version. Voce tambem precisara de uma version constante.

Primeiro, acima da sua main funcao, declare uma const variavel para a versao. O valor de uma const variavel nunca pode ser alterado depois de ter sido definido:

const version = '0.0.1'; // Add this line

Em seguida, modifique sua mainfuncao para verificar o versionargumento:

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Hello, Dart!');
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  }
}

Essa $version sintaxe eh chamada de interpolacao de strings. Ela permite incorporar o valor da variavel diretamente em uma string, prefixando o nome da variavel com um $sinal.

Codigo:

const version = '0.0.2';

void main(List<String> arguments) {
  	if (arguments.isEmpty) {
   		print('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	}
}

Saida padrao ao executar o codigo:

Comando: Dart run

Saida: Hello, Dart!

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.2

-------------------------------------------------------------------------------


Versao: 0.0.3

Data: 10/04/2026

Descricao do codigo: 3. Adicione uma printUsage funcao: Para tornar a saida mais amigavel ao usuario, crie uma funcao separada para exibir as informacoes de uso. Coloque essa funcao fora e abaixo da sua mainfuncao principal.

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

search eh o comando que eventualmente fara a busca na Wikipedia.

Codigo:

const version = '0.0.3';

void main(List<String> arguments) {
	if (arguments.isEmpty) {
		print ('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	}
}
void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Saida padrao ao executar o codigo:

Comando: dart run

Saida: Hello, Dart!

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.3

-------------------------------------------------------------------------------


Versao: 0.0.4

Data: 10/04/2026

Descricao do codigo: Implemente o help comando e refine main: Agora, integre o help comando usando uma else if instrucao e limpe o comportamento padrao para chamar a printUsage funcao.

Modifique sua main funcao para que fique assim:

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage(); // Change this from 'Hello, Dart!'
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else {
    printUsage(); // Catch-all for any unrecognized command.
  }
}

5. Entenda a if/else estrutura e as variaveis: Agora que voce implementou o fluxo de controle na main funcao, revise o codigo que foi adicionado a ela.

    . arguments.isEmpty Verifica se nenhum argumento de linha de comando foi fornecido.

    . arguments.first Acessa o primeiro argumento, que voce esta usando como nosso comando.

    . version eh declarado como um const. Isso significa que seu valor eh conhecido em tempo de compilacao e voce nao pode altera-lo durante a execucao.
    
    . arguments eh uma variavel regular (nao constante) porque seu conteudo pode mudar durante a execucao com base na entrada do usuario     .


Codigo:

const version = '0.0.4';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else {
    printUsage(); // Catch-all for any unrecognized command.
  }
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart help || dart run || dart bin/cli.dart

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.4

-------------------------------------------------------------------------------

Versao: 0.0.5

Data: 17/04/2026

Descricao do codigo: Integre o search comando em main: Primeiro, modifique a mainfuncao cli/bin/cli.dart para incluir um else iframo que lide com o search comando. Por enquanto, basta imprimir uma mensagem de espaÃ§o reservado.

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    print('Search command recognized!');
  } else {
    printUsage();
  }
}

2. Teste o novo comando: Execute sua aplicaÃ§ao com o search comando:

dart bin/cli.dart search

VocÃª deveria ver:

Search command recognized!

Codigo:

const version = '0.0.5';
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    print('Search command recognized!');
  } else {
    printUsage();
  }
}
void printUsage() {
  print(
    "The following commands are valid: 'help', 'version, 'search <ARTICLE-TITLE>'"
  );
}	


Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart || dart bin/cli.dart help || dart run

Saida: The following commands are valid: 'help', 'version, 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.5

Comando: dart bin/cli.dart search

Saida: Search command recognized!

-------------------------------------------------------------------------------

Versao: 0.0.6

Data: 17/04/2026

Descricao do codigo: Defina a searchWikipedia funcao: O search comando eventualmente executara a logica principal do seu aplicativo chamando uma funcao chamada searchWikipedia. Por enquanto, faca com que ela searchWikipedia imprima os argumentos passados para ela com o search comando. 

Coloque esta nova funcao abaixo de main.

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

// ... (your existing printUsage() function)

Principais trechos do codigo anterior:

List<String>? arguments significa que a arguments prÃ³pria lista pode ser null.

Observacao

O Dart impoe uma seguranca robusta contra valores nulos , o que significa que voce precisa declarar explicitamente quando uma variavel pode ser nula. Qualquer variavel que nao seja marcada como anulavel tem a garantia de nunca ser nula, mesmo em producao.

O objetivo da seguranca contra valores nulos nao eh impedir que voce use `null` em seu codigo, pois representar a ausencia de um valor pode ser util. Em vez disso, ela visa forcar voce a considerar a possibilidade de valores nulos e, portanto, a ser mais cuidadoso com ela. Juntamente com o analisador, isso ajuda a prevenir uma das falhas de tempo de execucao mais comuns em programacao: erros de ponteiro nulo.

Codigo:

const version = '0.0.6';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    print('Search command recognized!');
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}


Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart || dart bin/cli.dart help || dart run

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.6

Comando: dart bin/cli.dart search

Saida: Search command recognized!

-------------------------------------------------------------------------------

Versao: 0.0.7

Data: 17/04/2026

Descricao do codigo: 4. Chame a searchWikipedia funcao a partir da mainfuncao: Agora, modifique o search bloco de comando main para chamar searchWikipedia e passar quaisquer argumentos que venham apos o search proprio comando. Use arguments.sublist(1) para obter todos os argumentos a partir do segundo. Se nenhum argumento for fornecido apos search, passe null para searchWikipedia.

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

Principais trechos do codigo anterior:

final As variaveis so podem ser definidas uma vez e sao usadas quando voce nao pretende altera-las novamente no codigo.
arguments.sublist(1) cria uma nova lista contendo todos os elementos da arguments lista apos o primeiro elemento (que era search).
arguments.length > 1 ? ... : null;eh um operador condicional (ternario). Ele garante que, se nenhum argumento for fornecido apos o search comando, inputArgsse torne null, correspondendo ao comportamento do codigo de exemplo para searchWikipedia o arguments parametro de List<String>?.

5. Teste searchWikipedia com argumentos: Usando a linha de comando, execute o aplicativo com um titulo de artigo de teste:

dart bin/cli.dart search Dart Programming

VocÃª deveria ver:

searchWikipedia received arguments: [Dart, Programming]

Em seguida, execute o mesmo comando sem os argumentos adicionais:

dart bin/cli.dart search

Voce deveria ver:

searchWikipedia received arguments: null

Codigo:

const version = '0.0.7';
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}
	
void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}


Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart || dart bin/cli.dart help || dart run

Saida: The following commands are valid: 'help', 'version'. 'search <ARTICLE-TITLE>'"

Comndo: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.7

Comando: dart bin/cli.dart search

Saida: searchWikipedia received arguments: null

Comando: dart bin/cli.dart search exemplo1 exemplo2...

Saida: searchWikipedia received arguments: [exemplo1, exemplo2,]

-------------------------------------------------------------------------------

Versao: 0.0.8

Data: 17/04/2026

Descricao do codigo: Lide com a falta do titulo do artigo e a entrada do usuario com o stdin comando: Eh mais amigavel ao usuario solicitar o titulo caso ele nao o forneca na linha de comando. Use stdin.readLineSync() para isso.

Primeiro, adicione a importacao necessaria no inicio do seu cli/bin/cli.dart arquivo:

import 'dart:io'; // Add this line at the top

dart:io Eh uma biblioteca central no SDK do Dart e fornece APIs para lidar com arquivos, diretorios, sockets, clientes e servidores HTTP, e muito mais.

Agora, atualize sua searchWikipedia funÃ§ao.

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into a single string.
    articleTitle = arguments.join(' ');
  }

  print('Current article title: $articleTitle');
}

O bloco de codigo anterior introduz alguns conceitos-chave:

Declara uma final String articleTitle variavel. Isso permite que a analise estatica detecte que ela articleTitle sera um valor Stringe nao sera nula.

Em seguida, uma if/else instrucao verifica se os argumentos da linha de comando para a pesquisa foram fornecidos.

Caso faltem argumentos, o programa solicita informacoes ao usuario, le a entrada usando `read` stdin.readLineSync()e lida de forma segura com os casos em que nenhuma entrada eh fornecida.

Caso existam argumentos , ele arguments.join(' ') os combina em uma unica string de busca.

Principais trechos do codigo anterior:

stdin.readLineSync() ?? ''Le a entrada do usuario. Embora stdin.readLineSync() possa retornar nulo, o operador de coalescencia nula (`\ ??n`) eh usado para fornecer uma string vazia (`\ ''n`) como alternativa caso a entrada seja nula. Esta eh uma maneira concisa de garantir que a variavel seja uma string nao nula.

arguments.join(' ') Concatena todos os elementos da arguments lista em uma unica string, usando um espaÃ§o como separador. Por exemplo, ['Dart', 'Programming'] torna-se "Dart Programming". Isso eh crucial para tratar entradas de linha de comando com varias palavras como uma unica frase de pesquisa.

A analise estÃ¡tica do Dart pode detectar que a articleTitle variavel eh garantidamente inicializada quando a instrucao `print` eh executada. Independentemente do caminho percorrido dentro do corpo desta funcao, a variavel nao pode ser nula.

Codigo:
import 'dart:io';

const version = '0.0.8';
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into a single string.
    articleTitle = arguments.join(' ');
  }

  print('Current article title: $articleTitle');
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Saida padrao ao executar o codigo

Comando: dart bin/cli.dart || dart bin/cli.dart help || dart run

Saida: The following commands are valid: 'help', 'version'. 'search <ARTICLE-TITLE>'"

Comndo: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.8

Comando: dart bin/cli.dart search

Saida: Please provide an article title.
stdin.readLineSync() ?? ''
Current article title: EXEMPLO

Comando: dart bin/cli.dart search exemplo1 exemplo2...

Saida: Current article title: exemplo1 exemplo2

-------------------------------------------------------------------------------

Versao: 0.0.9

Data: 24/04/2026

Descricao do codigo: Finalizar searchWikipedia a impressao de resultados de pesquisa simulados: Atualize searchWikipedia para exibir mensagens que indiquem que nosso programa encontrou algo. Isso nos ajuda a visualizar o que nosso programa final fara sem precisar compila-lo completamente agora. Voce so vera essas mensagens se incluir uma consulta de pesquisa ao executar o programa.

Por exemplo: dart bin/cli.dart search Dart Programming.

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

8. Teste final com ambos os cenarios:

Agora que a simulacao do artigo esta configurada, teste a searchWikipedia funcao de algumas maneiras diferentes:

dart bin/cli.dart search Dart Programming

Voce deveria ver:

Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Execute sem argumentos (digite "Flutter Framework" quando solicitado):

dart bin/cli.dart search

Please provide an article title.
Flutter Framework

Codigo:
import 'dart:io'; // add this line on the top

const version = '0.0.9';
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into a single string.
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart || dart bin/cli.dart help || dart run

Saida: The following commands are valid: 'help', 'version'. 'search <ARTICLE-TITLE>'"

Comndo: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.9

Comando: dart bin/cli.dart search

Saida: Please provide an article title.
stdin.readLineSync() ?? ''
Looking up articles about "exemplo". Please wait.
Here ya go!
(Pretend this in an article about "exemplo")

Comando: dart bin/cli.dart search exemplo1 exemplo2...

Saida: Looking up articles about "exemplo1 exemplo2". Please wait.
Here ya go!
(Pretend this in an article about "exemplo1 exemplo2")

-------------------------------------------------------------------------------

o: 0.0.10

Data: 28/04/2026

Descricao do codigo: Agora que você adicionou o http pacote, precisa importá-lo para o seu arquivo Dart para usar suas funcionalidades.

Abra o dartpedia/bin/cli.dartarquivo.

Adicione a seguinte import declaração no início do arquivo, juntamente com a dart:ioimportação existente:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
Esta linha importa o httppacote e atribui a ele o alias http. Depois disso, você pode se referir a classes e funções dentro do httppacote usando http.(por exemplo, http.Client, http.get). A as httpparte é uma convenção padrão para evitar conflitos de nomenclatura caso outra biblioteca importada também tenha uma classe ou função com nome semelhante.

 Codigo:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.10';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

void searchWikipedia(List<String>? arguments) { 
  final String articleTitle;
 
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
} 

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.10

Comando: dart bin/cli.dart search Dart Programming

Saida: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Saida: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.11

Data: 28/04/2026

Descricao do codigo: Agora, crie uma nova função chamada `getData` getWikipediaArticleque lide com a busca de dados de uma API externa. Essa função será chamada asyncde `getData` porque as requisições de rede são operações assíncronas.

Defina a assinatura da função: Abaixo da sua mainfunção (e printUsagefunção), adicione a seguinte assinatura de função.

// ... (your existing printUsage() function)

Future<String> getWikipediaArticle(String articleTitle) async {
  //You'll add more code here soon
}
Principais trechos do código anterior:

O Future<String>tipo de retorno indica que esta função eventualmente produzirá um Stringresultado, mas não imediatamente, pois é uma operação assíncrona.
A asyncpalavra-chave marca a função como assíncrona, permitindo que você a utilize awaitdentro dela.

 Codigo:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.11';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

// Assinatura da função adicionada aqui
   Future<String> getWikipediaArticle(String articleTitle) async {
  return '';  
// You'll add more code here soon
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.11

Comando: dart bin/cli.dart search Dart Programming

Saida: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Saida: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.12

Data: 28/04/2026

Descricao docodigo: Construa a URL da API: Dentro da sua nova getWikipediaArticlefunção, crie um Uriobjeto. O `url` Urirepresenta o endpoint da API da Wikipédia que você chamará para obter um resumo do artigo.

Adicione estas linhas dentro da getWikipediaArticlefunção:

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org', // Wikipedia API domain
    '/api/rest_v1/page/summary/$articleTitle', // API path for article summary
  );
  // ...
}

 Codigo:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.12';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   return '';
   final url = Uri.https(
    'en.wikipedia.org', // Wikipedia API domain
    '/api/rest_v1/page/summary/$articleTitle', // API path for article summary
  );
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.12

Comando: dart bin/cli.dart search Dart Programming

Saida: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Saida: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.13

Data: 28/04/2026

Descricao do codigo: Faça a requisição HTTP e processe a resposta:get Agora, use a função de nível superior para package:http fazer uma GETrequisição HTTP para a URL que você acabou de construir. A awaitpalavra-chave `pause` pausa a execução de `request` getWikipediaArticle até que a getchamada seja concluída e retorne um http.Response objeto.

Após a conclusão da requisição, verifique o status response.statusCodepara garantir que a requisição foi bem-sucedida (um código de status 1 200significa OK). Se bem-sucedida, retorne o objeto response.body`request`, que contém os dados obtidos (neste caso, JSON bruto). Se a requisição falhar, retorne uma mensagem de erro informativa.

Adicione estas linhas após a Uriconstrução dentro de getWikipediaArticle:

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

 Codigo:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.13';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.13

Comando: dart bin/cli.dart search Dart Programming

Saida: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Saida: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.14

Data: 28/04/2026

Descricao do codigo: Atualização searchWikipediapara uso async: Localize sua searchWikipediafunção e atualize sua assinatura para asyncque ela agora execute operações assíncronas.

Sua searchWikipediafunção agora deve ter esta aparência (parte inicial):

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) async { // Added 'async'
  final String? articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    articleTitle = stdin.readLineSync(); // Await input from the user
    // You'll add error handling for null input here in a moment
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

// ... (your existing printUsage() function)
Principais trechos do código anterior:

void searchWikipedia(List<String>? arguments) asyncA função agora é async. Isso é essencial porque ela chamará getWikipediaArticle, que asyncpor si só é uma função e precisará de await seu resultado.


 Codigo:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.14';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) async { // Added 'async'
  final String? articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    articleTitle = stdin.readLineSync(); // Await input from the user
    // You'll add error handling for null input here in a moment
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

// ... (your existing printUsage() function)

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.14

Comando: dart bin/cli.dart search Dart Programming

Saida: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Saida: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.15

Data: 28/04/2026

Descricao do codigo: Adicione nullverificações de entrada do usuário para strings vazias: Dentro searchWikipediado ifbloco que trata o caso em que nenhum argumento é fornecido, refine-o. Se stdin.readLineSync()o resultado for nulo null(por exemplo, se o usuário pressionar Ctrl+D/Ctrl+Z) ou uma string vazia, imprima uma mensagem e saia da função.

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync(); // Read input
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return; // Exit the function if no valid input
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}


 Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.15';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync(); // Read input
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return; // Exit the function if no valid input
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.15

Comando: dart bin/cli.dart search Dart Programming

Saida: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Saida: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.16

Data: 28/04/2026

Descricao do codigo: Chame a função getWikipediaArticlee imprima o resultado: Agora, modifique a searchWikipediafunção para chamar sua nova getWikipediaArticlefunção e imprimir o resultado. Em seguida, substitua as printinstruções de espaço reservado anteriores pela chamada de API real.

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}
Principais trechos do código anterior:

await getWikipediaArticle(articleTitle)Como `is` getWikipediaArticleé uma asyncfunção, você precisa retornar o awaitresultado dela. Isso pausa a searchWikipediafunção até que o Future<String>resultado retornado por `is` getWikipediaArticle seja resolvido em um ` Stringarticle` contendo o conteúdo do artigo.
print(articleContent)Exibe o resumo do artigo obtido como uma string JSON bruta no console.


 Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.16';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
} 

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.16

Comando: dart bin/cli.dart search Dart Programming

Saida: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search

Saida: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao; 0.0.17

Data: 28/04/2026

Descricao do codigo: Por fim, atualize sua mainfunção para chamar a nova searchWikipediafunção quando o wikipediacomando for usado.

Localize o else ifbloco na sua mainfunção que atualmente lida com o searchcomando. Altere o nome do comando de searchpara wikipediae atualize a chamada da função.

No código de exemplo, mainnão há await chamada para searchWikipedia, o que significa que maino próprio não precisa ser marcado async.

Sua mainfunção agora deve ter esta aparência:

// ... (existing const version declaration and printUsage function)

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') { // Changed to 'wikipedia'
    // Pass all arguments *after* 'wikipedia' to searchWikipedia
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs); // Call searchWikipedia (no 'await' needed here for main)
  } else {
    printUsage(); // Catch all for any unrecognized command.
  }
}
arguments.sublist(1)Esta função extrai todos os elementos da argumentslista, começando pelo segundo elemento (índice 1). Isso remove efetivamente o wikipediapróprio comando, de forma que searchWikipediaa lista receba apenas os argumentos do título do artigo.
searchWikipedia(inputArgs)Isso chama searchWikipediadiretamente. Como mainnão precisa fazer nada depois de searchWikipediaser concluído, você não precisa chamá await-lo de main. Portanto main, não precisa ser async.


 Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.17';

// ... (existing const version declaration and printUsage function)

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') { // Changed to 'wikipedia'
    // Pass all arguments *after* 'wikipedia' to searchWikipedia
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs); // Call searchWikipedia (no 'await' needed here for main)
  } else {
    printUsage(); // Catch all for any unrecognized command.
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
} 

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.17

Comando: dart run bin/cli.dart wikipedia "Dart_(programming_language)"

Saida: Looking up articles about "Dart_(programming_language)". Please wait.
{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "<span class=\"mw-page-title-main\">Dart (programming language)</span>",
  "namespace": {
      "id": 0,
      "text": ""
    }

  // ... (rest of the JSON output will be present but truncated here)

}


Comando: dart bin/cli.dart wikipedia
Flutter_(software)
Voce deve ver: Please provide an article title.
Flutter_(software)
Looking up articles about "Flutter_(software)". Please wait.
{
  "type": "standard",
  "title": "Flutter (software)",
  "displaytitle": "<span class=\"mw-page-title-main\">Flutter (software)</span>",
  "namespace": {
      "id": 0,
      "text": ""
  }

// ... (rest of the JSON output will be present but truncated here)

}

-------------------------------------------------------------------------------

Versao: 0.0.18

Data: 12/05/2026

Descricao do Codigo: Criar o pacote command_runner
#
Primeiro, crie um novo pacote Dart para abrigar a lógica de análise de argumentos da linha de comando.

Navegue até o diretório raiz do seu projeto (/dartpédia) (S).

Execute o seguinte comando no seu terminal:

dardo criar - t pacote command_runner
Este comando cria um novo diretório chamado comando_ runner com com a estrutura básica de um pacote Dart. Agora você deve ver uma nova pasta comando_ runner em (em) sua raiz de projeto, ao lado de sua clí pacote.

Codigo: 
import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.18';

// ... (existing const version declaration and printUsage function)

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') { // Changed to 'wikipedia'
    // Pass all arguments *after* 'wikipedia' to searchWikipedia
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs); // Call searchWikipedia (no 'await' needed here for main)
  } else {
    printUsage(); // Catch all for any unrecognized command.
  }
}

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.18

Comando: dart run bin/cli.dart wikipedia "Dart_(programming_language)"

Saida: Looking up articles about "Dart_(programming_language)". Please wait.
{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "<span class=\"mw-page-title-main\">Dart (programming language)</span>",
  "namespace": {
      "id": 0,
      "text": ""
    }

  // ... (rest of the JSON output will be present but truncated here)

}


Comando: dart bin/cli.dart wikipedia
Flutter_(software)
Voce deve ver: Please provide an article title.
Flutter_(software)
Looking up articles about "Flutter_(software)". Please wait.
{
  "type": "standard",
  "title": "Flutter (software)",
  "displaytitle": "<span class=\"mw-page-title-main\">Flutter (software)</span>",
  "namespace": {
      "id": 0,
      "text": ""
  }

// ... (rest of the JSON output will be present but truncated here)

}

------------------------------------------------------------------------------

Versao: 0.0.19

Data: 12/05/2026

Descricao do Codigo:
Implementar a classe CommandRunner
#
Agora que você criou o comando_ runner pacote, adicionar uma classe de espaço reservado que acabará por lidar com a lógica de análise de argumentos da linha de comando.

Abrir o command_runner/lib/command_runner.dart arquivo. Remova qualquer código de espaço reservado existente e adicione o seguinte:

/// Um corredor de comando simples para lidar com argumentos de linha de comando.
///
/// Documentação mais extensa para esta biblioteca vai aqui.
biblioteca¡;

exportação ´ 'src/command_runner_base.dart´ '¡;
// TODO: Exportar quaisquer outras bibliotecas destinadas a clientes deste pacote.
Destaques do código anterior:

biblioteca; declara este arquivo como uma biblioteca, que define as fronteiras e a interface pública do uma unidade reutilizável de código Dart.
exportar 'src/command_runner_base.dart'; é uma linha crucial que faz declarações de command_runner_base.dart disponível para outros pacotes que importam o comando_ runner pacote. Sem isto exportação enunciado, as classes e funções dentro de command_runner_base.dart seria particular para o the comando_ runner pacote, e você não seria capaz use-os em seu dartpédia aplicação.
Abra o arquivo comando_runner/lib/src/comando_runner_base.dart.O.

Remova qualquer código de espaço reservado existente e adicione o seguinte Runner de comando classe para comando_runner/lib/src/comando_runner_base.dart¡::

classe Runner de comando {
  /// Executa a lógica de aplicação da linha de comando com os argumentos dados.
  Futuro<vazio› › correr((S)List<Barbante› › entrada(S) assíncrono {
    imprimir((S)´ 'CommandRunner recebeu argumentos: $entrada´ '(S)¡;
  O}
O}
Destaques do código anterior:

Runner de comando é uma classe que serve como um stand-in simplificado por enquanto. O ITS correr método atualmente apenas imprime os argumentos que recebe. Em capítulos posteriores, você expandirá essa classe para lidar com análise de comandos complexos e configuráveis.
Futuro<void> é um tipo de retorno que indica que este método pode realizar operações assíncronas, mas não retorna um valor.

Codigo: 
import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.19';

// ... (existing const version declaration and printUsage function)

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') { // Changed to 'wikipedia'
    // Pass all arguments *after* 'wikipedia' to searchWikipedia
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs); // Call searchWikipedia (no 'await' needed here for main)
  } else {
    printUsage(); // Catch all for any unrecognized command.
  }
}

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.19

Comando: dart run bin/cli.dart wikipedia "Dart_(programming_language)"

Saida: Looking up articles about "Dart_(programming_language)". Please wait.
{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "<span class=\"mw-page-title-main\">Dart (programming language)</span>",
  "namespace": {
      "id": 0,
      "text": ""
    }

  // ... (rest of the JSON output will be present but truncated here)

}


Comando: dart bin/cli.dart wikipedia
Flutter_(software)
Voce deve ver: Please provide an article title.
Flutter_(software)
Looking up articles about "Flutter_(software)". Please wait.
{
  "type": "standard",
  "title": "Flutter (software)",
  "displaytitle": "<span class=\"mw-page-title-main\">Flutter (software)</span>",
  "namespace": {
      "id": 0,
      "text": ""
  }

// ... (rest of the JSON output will be present but truncated here)

}

------------------------------------------------------------------------------

Versao: 0.0.20

Data: 12/05/2026

Descricao do Codigo:
Adicionar comando_ runner como uma dependência
#
Agora que você criou o comando_ runner pacote e adicionou um espaço reservado Runner de comando classe, você precisa contar seu clí aplicativo que ele depende comando_ runner.O. Porque o comando_ runner pacote está localizado localmente dentro do seu projeto, você pode usar a dependência path.O.

Abrir o cli/pubspec.yaml arquivo.

Observação
Certifique-se de abrir o correto /dartpedia/cli/pubspec.yaml arquivo. Quando você criou o comando_ runner pacote, ele também veio com a /dartpedia/command_runner/pubspec.yaml arquivo.

Porque o clí package é um pacote de aplicativos e não se destina a ser publicado para pub.dev, adicionar publish_to: nenhum após o nome (name) campo. Isso ajuda a evitar publicações acidentais e evita avisos do analisador sobre a adição de dependências de caminho.

nome (name)¡:: clí
publicar_ to¡:: nenhum nenhum
# ...
Localize o dependências secção. Adicione as seguintes linhas:

dependências¡::
  http¡:: ^1.3.0 # Mantenha sua dependência http existente
  comando_ runner¡::
    caminho¡:: ../command_ runner # Aponta para o seu comando local_runner package
Esta seção diz ao clí aplicação à dependem do comando_ runner pacote, e especifica que o pacote está localizado no ../command_ runner directório (relativo ao clí diretório).

Correr dart pub obter na mesma /dartpédia/cli diretório do seu terminal para buscar a nova dependência.

Codigo:
import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.20';

// ... (existing const version declaration and printUsage function)

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') { // Changed to 'wikipedia'
    // Pass all arguments *after* 'wikipedia' to searchWikipedia
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs); // Call searchWikipedia (no 'await' needed here for main)
  } else {
    printUsage(); // Catch all for any unrecognized command.
  }
}

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}


Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.20

Comando: dart run bin/cli.dart wikipedia "Dart_(programming_language)"

Saida: Looking up articles about "Dart_(programming_language)". Please wait.
{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "<span class=\"mw-page-title-main\">Dart (programming language)</span>",
  "namespace": {
      "id": 0,
      "text": ""
    }

  // ... (rest of the JSON output will be present but truncated here)

}


Comando: dart bin/cli.dart wikipedia
Flutter_(software)
Voce deve ver: Please provide an article title.
Flutter_(software)
Looking up articles about "Flutter_(software)". Please wait.
{
  "type": "standard",
  "title": "Flutter (software)",
  "displaytitle": "<span class=\"mw-page-title-main\">Flutter (software)</span>",
  "namespace": {
      "id": 0,
      "text": ""
  }

// ... (rest of the JSON output will be present but truncated here)

}

-------------------------------------------------------------------------------

Versao: 0.0.21

Data: 12/05/2026

Descricao do Codigo:
Import and use the command_runner package
#
Now that you've added command_runner as a dependency, you can import it into your cli application and replace your existing argument-handling logic with the new CommandRunner class. This step also fixes the program exit behavior discussed at the end of Chapter 3.

Open the cli/bin/cli.dart file.

Add the following import statement at the top of the file, alongside your other imports:

import 'package:command_runner/command_runner.dart';
This statement imports the command_runner package, making the CommandRunner class available for use.

Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';
const version = '0.0.21';

// ... (existing const version declaration and printUsage function)

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') { // Changed to 'wikipedia'
    // Pass all arguments *after* 'wikipedia' to searchWikipedia
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs); // Call searchWikipedia (no 'await' needed here for main)
  } else {
    printUsage(); // Catch all for any unrecognized command.
  }
}

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Saida: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Saida: Dartpedia CLI version 0.0.21

Comando: dart run bin/cli.dart wikipedia "Dart_(programming_language)"

Saida: Looking up articles about "Dart_(programming_language)". Please wait.
{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "<span class=\"mw-page-title-main\">Dart (programming language)</span>",
  "namespace": {
      "id": 0,
      "text": ""
    }

  // ... (rest of the JSON output will be present but truncated here)

}


Comando: dart bin/cli.dart wikipedia
Flutter_(software)
Voce deve ver: Please provide an article title.
Flutter_(software)
Looking up articles about "Flutter_(software)". Please wait.
{
  "type": "standard",
  "title": "Flutter (software)",
  "displaytitle": "<span class=\"mw-page-title-main\">Flutter (software)</span>",
  "namespace": {
      "id": 0,
      "text": ""
  }

// ... (rest of the JSON output will be present but truncated here)

}

-------------------------------------------------------------------------------

Versao: 0.0.22

Data: 12/05/2026

Descricao do Codigo:
Refactor the main function and remove old logic: Currently, your main function from Chapter 3 directly handles commands like version, help, and wikipedia, and then calls searchWikipedia. You'll now replace all of this custom command-handling logic with a single call to the new CommandRunner class.

Your cli/bin/cli.dart file (from Chapter 3) should currently look like this:

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

const version = '0.0.21';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) async {  ... existing logic ...  }
void printUsage() {  ... existing logic ...  }
Future<String> getWikipediaArticle(String articleTitle) async {  ... existing logic ...  }
**Now, replace the entire contents of cli/bin/cli.dart (except for the http import) with the following updated version:

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async { // main is now async and awaits the runner
  var runner = CommandRunner(); // Create an instance of your new CommandRunner
  await runner.run(arguments); // Call its run method, awaiting its Future<void>
}
Highlights from the preceding code:

void main(List<String> arguments) async directly addresses the program not exiting cleanly issue from Chapter 3. Notice that main is now declared async. This is essential because runner.run() returns a Future, and main must await its completion to ensure the program waits for all asynchronous tasks to finish before exiting.
var runner = CommandRunner(); creates an instance of the CommandRunner class from your new command_runner package.
await runner.run(arguments); calls the run method on the CommandRunner instance, passing in the command-line arguments.
Removed functions:

The printUsage, searchWikipedia, an getWikipediaArticle functions are now completely removed from cli/bin/cli.dart. Their logic will be redesigned and moved into the command_runner package in future chapters, as part of building the full command-line framework.

Codigo:
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async { // main is now async and awaits the runner
  var runner = CommandRunner(); // Create an instance of your new CommandRunner
  await runner.run(arguments); // Call its run method, awaiting its Future<void>
}


Saida padrao ao executar o codigo:

Comando: dart run bin/cli.dart wikipedia Computer_programming

Saida: CommandRunner received arguments: [wikipedia, Computer_programming]
-------------------------------------------------------------------------------
*/

// Codigo valido ate aqui

// Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async { // main is now async and awaits the runner
  var runner = CommandRunner(); // Create an instance of your new CommandRunner
  await runner.run(arguments); // Call its run method, awaiting its Future<void>
}

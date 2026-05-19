/*-----------------------------------------------------------------------------

Informacoes

O aplicativo cli faz parte do projeto Dartpedia.

O cli eh nosso primeiro aplicativo que esta sendo desenvolvido usando Dart.

cli.dart - FIca localizado na pasta dartpedia, em /dartpedia/cli/bin.

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
*/



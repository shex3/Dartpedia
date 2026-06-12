Projeto Dartpedia

DESCRIÇÃO

Este projeto foi desenvolvido em Dart com base na trilha oficial de aprendizado disponibilizada pela documentação da linguagem. Durante o desenvolvimento foram aplicados conceitos fundamentais e avançados, incluindo programação orientada a objetos, programação assíncrona, manipulação de dados JSON, testes automatizados, requisições HTTP e registro de logs. O objetivo principal é consolidar os conhecimentos da equipe sobre o ecossistema Dart por meio da construção de uma aplicação de linha de comando (CLI), além de ter a função de nos introduzir e aprimorar nossos conhecimentos de versionamento utilizando Git e GitHub. A implementação de um sistema de logging robusto foi crucial para depuração e monitoramento do comportamento da aplicação em diferentes ambientes.

OBJETIVOS

•Aplicar conceitos de Programação Orientada a Objetos (POO).

•Utilizar programação assíncrona com Future, async e await.

•Trabalhar com bibliotecas e pacotes externos.

•Manipular dados JSON.

•Consumir dados de serviços web através de requisições HTTP.

•Registrar eventos e erros utilizando logs.

TECNOLOGIAS UTILIZADAS

•Dart SDK

•Dart

•Git

•GitHub

•Package HTTP

•Package Test

•Package Logger

CONTEÚDOS ABORDADOS

•Crie Seu Primeiro Aplicativo (Realizado): Criação da estrutura inicial da aplicação e familiarização com a sintaxe básica da linguagem Dart.

•Adicione interatividade ao seu aplicativo (Realizado): Implementação de interação com o usuário por meio da linha de comando.

•Programação Assíncrona (Realizado): Utilização de Future, async e await para execução de tarefas assíncronas.

•Pacotes e Bibliotecas (Realizado): Organização do código em bibliotecas e utilização de dependências externas.

•Programação Orientada a Objetos (Realizado): Criação de classes, objetos, construtores, encapsulamento e herança.

•Tratamento de Erros (Realizado): Implementação de exceções e mecanismos de tratamento de falhas.

•Orientação a Objetos Avançada (Realizado): Uso de extensões, enums, abstrações e recursos avançados da linguagem.

•Aprimoramento da Aplicação CLI (Realizado): Melhorias na experiência do usuário em aplicações de terminal.

•Manipulação de Dados JSON (Pendente): Leitura, conversão e utilização de dados no formato JSON.

•Testes Automatizados (Pendente): Criação e execução de testes para validação das funcionalidades.

•Consumo de APIs (Pendente): Realização de requisições HTTP e processamento de respostas obtidas pela internet.

•Logging (Realizado): Implementação de um sistema de registro de informações, avisos e erros utilizando o pacote logging do Dart, configurado para gravar mensagens em arquivos.

ESTRUTURA DO PROJETO

Plain Text


dartpedia/
├── bin/
├── lib/
├── test/
├── pubspec.yaml
├── analysis_options.yaml
└── README.md



DESCRIÇÃO DAS PASTAS

•bin/: Ponto de entrada da aplicação.

•lib/: Código-fonte principal e regras de negócio.

•test/: Testes automatizados.

•pubspec.yaml: Gerenciamento de dependências e configurações do projeto.

•analysis_options.yaml: Regras de análise estática do Dart.

•README.md: Documentação do projeto.

COMO EXECUTAR

1.Clone o repositório

git clone 

2.Entre na pasta do projeto

cd dartpedia

3.Instale as dependências

rode o comando: dart pub get

4.Execute a aplicação

entre na pasta cli/ com o comando : cd cli/
rode o comando: dart run bin/cli.dart search blahblahblahblah
com este comando, buscando algo inesxistente a aplicação anota e guarda o erro dentro dentro do arquivo 2026_6_11_errors.txt que esta localizada
no caminho dartpedia/cli/logs/2026_6_11_errors.txt

rode o comando: dart run bin/cli.dart search Brazil
com este comando, buscando algo existente a aplicação entrega os links do wikipedia associados a palavra que foi buscada

EQUIPE

LÍDER:

• Henzo Marcos Caetano Lopes

LIDERADOS:

• Kenzo Masahiro Farias Tsumura

• Gabriel Barbosa Silva

• Jean Lucas Martins Silva

LICENÇA

Projeto realizado para fins estudantis.


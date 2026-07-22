# **Projeto Dartpedia** 
> 🔀 Este é um **fork** de um trabalho escolar em grupo. O repositório 
> original pertence ao líder do grupo, [Hzzyn-22](https://github.com/Hzzyn-22/Dartpedia), 
> e foi trazido para minha conta pessoal ([shex3](https://github.com/shex3)) 
> para compor meu portfólio.

# T1DEV-T5 - Professor Irineu Moura Caldeira

*   Henzo Marcos Caetano Lopes
*   Kenzo Masahiro Farias Tsumura
*   Gabriel Barbosa Silva
*   Jean Lucas Martins Silva
___
## DESCRIÇÃO
___
Este projeto foi desenvolvido em Dart com base na trilha oficial de aprendizado disponibilizada pela documentação da linguagem. Durante o desenvolvimento foram aplicados conceitos fundamentais e avançados, incluindo programação orientada a objetos, programação assíncrona, manipulação de dados JSON, testes automatizados, requisições HTTP e registro de logs. O objetivo principal é consolidar os conhecimentos da equipe sobre o ecossistema Dart por meio da construção de uma aplicação de linha de comando (CLI), além de ter a função de nos introduzir e aprimorar nossos conhecimentos de versionamento utilizando Git e GitHub. A implementação de um sistema de logging robusto foi crucial para depuração e monitoramento do comportamento da aplicação em diferentes ambientes.
___
## OBJETIVOS

*   Aplicar conceitos de Programação Orientada a Objetos (POO).
*   Utilizar programação assíncrona com `Future`, `async` e `await`.
*   Trabalhar com bibliotecas e pacotes externos.
*   Manipular dados JSON.
*   Consumir dados de serviços web através de requisições HTTP.
*   Registrar eventos e erros utilizando logs.
___
## TECNOLOGIAS UTILIZATED

*   Dart SDK
*   Dart
*   Git
*   GitHub
*   Package HTTP
*   Package Test
*   Package Logger
___
## CONTEÚDOS ABORDADOS

*   **Crie Seu Primeiro Aplicativo** (Realizado): Criação da estrutura inicial da aplicação e familiarização com a sintaxe básica da linguagem Dart.
*   **Adicione interatividade ao seu aplicativo** (Realizado): Implementação de interação com o usuário por meio da linha de comando.
*   **Programação Assíncrona** (Realizado): Utilização de `Future`, `async` e `await` para execução de tarefas assíncronas.
*   **Pacotes e Bibliotecas** (Realizado): Organização do código em bibliotecas e utilização de dependências externas.
*   **Programação Orientada a Objetos** (Realizado): Criação de classes, objetos, construtores, encapsulamento e herança.
*   **Tratamento de Erros** (Realizado): Implementação de exceções e mecanismos de tratamento de falhas.
*   **Orientação a Objetos Avançada** (Realizado): Uso de extensões, enums, abstrações e recursos avançados da linguagem.
*   **Aprimoramento da Aplicação CLI** (Realizado): Melhorias na experiência do usuário em aplicações de terminal.
*   **Manipulação de Dados JSON** (Pendente): Leitura, conversão e utilização de dados no formato JSON.
*   **Testes Automatizados** (Pendente): Criação e execução de testes para validação das funcionalidades.
*   **Consumo de APIs** (Pendente): Realização de requisições HTTP e processamento de respostas obtidas pela internet.
*   **Logging** (Realizado): Implementação de um sistema de registro de informações, avisos e erros utilizando o pacote `logging` do Dart, configurado para gravar mensagens em arquivos.
___
## ESTRUTURA DO PROJETO

```
dartpedia/
├── bin/
├── lib/
├── test/
├── pubspec.yaml
├── analysis_options.yaml
└── README.md
```
___
## DESCRIÇÃO DAS PASTAS

*   `bin/`: Ponto de entrada da aplicação.
*   `lib/`: Código-fonte principal e regras de negócio.
*   `test/`: Testes automatizados.
*   `pubspec.yaml`: Gerenciamento de dependências e configurações do projeto.
*   `analysis_options.yaml`: Regras de análise estática do Dart.
*   `README.md`: Documentação do projeto.
___
## COMO EXECUTAR

1.  **Clone o repositório**

    ```bash
    git clone https://github.com/Hzzyn-22/Dartpedia.git
    ```

2.  **Entre na pasta do projeto**

    ```bash
    cd dartpedia
    ```

3.  **Instale as dependências**

    Uma vez dentro da pasta do projeto, rode o comando:

    ```bash
    dart pub get
    ```

4.  **Execute a aplicação**

    Entre na pasta `cli/` com o comando `cd cli/`. A execução básica segue o formato `dart run bin/cli.dart [comando]`.

### COMANDOS DISPONÍVEIS

| Comando | Descrição | Exemplo de Uso |
| :--- | :--- | :--- |
| **help** | Exibe informações de uso na linha de comando. | `dart run bin/cli.dart help` |
| **search** | Busca artigos da Wikipédia. | `dart run bin/cli.dart search Brazil` |
| **article** | Lê um artigo específico da Wikipédia. | `dart run bin/cli.dart article Dart_(linguagem_de_programação)` |

### EXEMPLOS DE FUNCIONAMENTO

*   **Busca por termo inexistente (Registro de Erro):**
    ```bash
    dart run bin/cli.dart search wfmdfospcsab
    ```
    A aplicação anota e guarda o erro dentro do arquivo `2026_6_11_errors.txt`, localizado no caminho `dartpedia/cli/logs/`.

*   **Busca por termo existente:**
    ```bash
    dart run bin/cli.dart search Brazil
    ```
    A aplicação entrega os links da Wikipédia associados à palavra buscada.

*   **Leitura de Artigo:**
    ```bash
    dart run bin/cli.dart article Brazil
    ```
    Busca e exibe o conteúdo do artigo selecionado.
___
## MINHA CONTRIBUIÇÃO (Gabriel Barbosa)

*   Configuração inicial do espaço de trabalho Dart e criação do pacote `wikipedia`
*   Integração com a API da Wikipédia: dependência HTTP, testes de desserialização de dados JSON e implementação de logging em `cli.dart`
*   Núcleo da CLI (`command_runner`): hierarquia de classes de argumentos, tratamento de erros, comando de echo colorido e callback de saída (`onOutput`)
*   Projeto `vemProFut`: desenvolvimento do "Modelador de Seleções" e do "Simulador da Fase de Grupos – Copa 2026"

___
## EQUIPE

**LÍDER:**

*   Henzo Marcos Caetano Lopes

**LIDERADOS:**

*   Kenzo Masahiro Farias Tsumura
*   Gabriel Barbosa Silva
*   Jean Lucas Martins Silva
___
## LICENÇA

Projeto realizado para fins estudantis.

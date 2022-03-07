# Teste automatizado do site [saucedemo](https://www.saucedemo.com/). 🚀


#### As etapas realizadas no testes:
1. Autenticação do usuário;
2. Ordenação dos Produtos (Menor para o Maior Preço);
3. Selecionar 2 produtos e adicionar ao carrinho;
4. Finalizar o processo da compra.

#### Tecnologias/ ferramentas utilizadas:
* [Python](https://www.python.org)
* [Robot Framework](https://robotframework.org/)
* [Selenium With Python](https://selenium-python.readthedocs.io/)
* [Google Chrome](https://www.google.com/intl/pt-BR/chrome/) 

#### Dependências do Projeto:

1. Instalar o robot framework através do Pip => pip install robotframework
2. Instalar o Selenium => pip install robotframework-seleniumlibrary

#### Execução do Teste:

1. Comando: robot -d ./log saucedemo.robot => Executa o teste e registra o resultado na pasta log.
2. robot saucedemo.robot => Executa o teste sem registrar o log na pasta.

#### Estrutura das pastas no projeto :

* log => Local onde armazena o log, output, report e screenshot.
* PO => Page Objects: Armazena os cenários de testes criados para utilização do projeto.
* resource=> Recurso base utilizado no projeto.

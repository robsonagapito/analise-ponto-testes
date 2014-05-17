analise-ponto-testes
====================

SOBRE

O AgaAPT.exe é uma ferramenta de apoio para estimativa de testes utilizando a técnica de análise de pontos de testes. Foi idealizado e desenvolvido por Robson Agapito Correa e teve como tester o André Miranda.

VERSÃO E COMPILADOR

O sistema foi desenvolvido em Delphi 7 e necessita dele para compilação do mesmo.


INSTALAÇÃO

Para quem não tem nenhuma base do APT ainda, basta copiar todos os arquivos do ZIP em um diretório que tenha autorização de leitura/gravação e executar o APT.exe que já funcionará.

Para quem já possui o APT, inicialmente realizar um backup da base e do executável, pois a estrutura e posicionamento dos arquivos foram alterados a partir de agora.

Após o backup basta copiar os arquivos dentro do diretório e executar o programa.

A estrutura ficará da seguinte forma antes da primeira execução:

..\APT.exe
..\midas.dll
..\Linguagem\English.apt
..\Linguagem\Portuguese.apt
..\Linguagem\Tipo.txt
..\Linguagem\Test Point Analysis.pdf

Onde o que é novo hoje está na pasta Linguagem. Os arquivos “.apt” são arquivos para internacionalizar o sistema APT, hoje já temos o português e o inglês, mas pode ser criado uma tradução para qualquer língua onde basta apenas ter um novo arquivo com o nome da tradução e os textos deste arquivo traduzidos para a língua desejada. Sendo que a Tag do campo não pode ser alterado (a tag está entre parênteses) e o texto traduzido tem que ser colocado entre os sinais de menor “”. O símbolo “&” serve para colocar a tecla de atalho para um botão ou uma pasta.

O arquivo Tipo.txt define o Tipo do Projeto. Quando você vai inserir um projeto se deve definir um Tipo, e os tipos disponíveis devem estar informados neste arquivo. Temos informado como default: ERP, Bancário, Hospitalar, Governamental, Frente de Loja, Open Source e Telecomunicação.

O arquivo Test Point Analysis.pdf é um artigo falando sobre a APT, está em inglês, mas serviu de apoio juntamente com o Livro Base de Conhecimento em Testes de Software para criação do sistema.

Após executado o programa todos os arquivos XML que contém os dados e informações do sistema estarão dentro de uma pasta XML.

VIDEOS

http://www.youtube.com/watch?v=lY4p5bTtvIM
http://www.youtube.com/watch?v=q_criZhZ9lA
http://www.youtube.com/watch?v=q_criZhZ9lA
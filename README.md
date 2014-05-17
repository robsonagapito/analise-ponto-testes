analise-ponto-testes
====================

SOBRE

O AgaAPT.exe � uma ferramenta de apoio para estimativa de testes utilizando a t�cnica de an�lise de pontos de testes. Foi idealizado e desenvolvido por Robson Agapito Correa e teve como tester o Andr� Miranda.

VERS�O E COMPILADOR

O sistema foi desenvolvido em Delphi 7 e necessita dele para compila��o do mesmo.


INSTALA��O

Para quem n�o tem nenhuma base do APT ainda, basta copiar todos os arquivos do ZIP em um diret�rio que tenha autoriza��o de leitura/grava��o e executar o APT.exe que j� funcionar�.

Para quem j� possui o APT, inicialmente realizar um backup da base e do execut�vel, pois a estrutura e posicionamento dos arquivos foram alterados a partir de agora.

Ap�s o backup basta copiar os arquivos dentro do diret�rio e executar o programa.

A estrutura ficar� da seguinte forma antes da primeira execu��o:

..\APT.exe
..\midas.dll
..\Linguagem\English.apt
..\Linguagem\Portuguese.apt
..\Linguagem\Tipo.txt
..\Linguagem\Test Point Analysis.pdf

Onde o que � novo hoje est� na pasta Linguagem. Os arquivos �.apt� s�o arquivos para internacionalizar o sistema APT, hoje j� temos o portugu�s e o ingl�s, mas pode ser criado uma tradu��o para qualquer l�ngua onde basta apenas ter um novo arquivo com o nome da tradu��o e os textos deste arquivo traduzidos para a l�ngua desejada. Sendo que a Tag do campo n�o pode ser alterado (a tag est� entre par�nteses) e o texto traduzido tem que ser colocado entre os sinais de menor ��. O s�mbolo �&� serve para colocar a tecla de atalho para um bot�o ou uma pasta.

O arquivo Tipo.txt define o Tipo do Projeto. Quando voc� vai inserir um projeto se deve definir um Tipo, e os tipos dispon�veis devem estar informados neste arquivo. Temos informado como default: ERP, Banc�rio, Hospitalar, Governamental, Frente de Loja, Open Source e Telecomunica��o.

O arquivo Test Point Analysis.pdf � um artigo falando sobre a APT, est� em ingl�s, mas serviu de apoio juntamente com o Livro Base de Conhecimento em Testes de Software para cria��o do sistema.

Ap�s executado o programa todos os arquivos XML que cont�m os dados e informa��es do sistema estar�o dentro de uma pasta XML.

VIDEOS

http://www.youtube.com/watch?v=lY4p5bTtvIM
http://www.youtube.com/watch?v=q_criZhZ9lA
http://www.youtube.com/watch?v=q_criZhZ9lA
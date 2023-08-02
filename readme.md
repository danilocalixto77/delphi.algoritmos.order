# Algoritmos de Ordena��o em Delphi  
### Exercicios de l�gica utilizando algoritmos de ordena��o em Delphi/Pascal.
### Vers�o do Delphi : Delphi 11 CE

# Programa��o Orientada a Objetos com Delphi
##### Fonte: Youtube | Canal: Landerson Gomes

## Programa��o Orientada a Objetos com Delphi - Aula 01

## Programa��o Orientada a Objetos com Delphi - Aula 02

## Programa��o Orientada a Objetos com Delphi - Aula 03

## Programa��o Orientada a Objetos com Delphi - Aula 04
### Emcapsulamento: Atrav�s dos escopos de visibilidade de uma classe:
- Private: vis�vel a toda a classe e classes amigas. Classes amigas s�o todas declaradas dentro das mesma unit.
- Protected: vis�vel para a classes, classes amigas e para os herdeiros de subclasses.
- Public: acess�vel a todo que fizerem refer�ncia a classe.
- Published: � vis�vel e publicada no object inspector.

## Programa��o Orientada a Objetos com Delphi - Aula 05

## Programa��o Orientada a Objetos com Delphi - Aula 06

## Programa��o Orientada a Objetos com Delphi - Aula 07
### M�todos
- S�o respons�veis pelos comportamentos das classes. 
- Podendo ser: Get, Set, constructor, destructor e etc...

## Programa��o Orientada a Objetos com Delphi - Aula 08
### Polimorfismo
- Como utilizar dentro da mesma classe, usando a diretiva overload, uma sobrecarga dos m�todos.

## Programa��o Orientada a Objetos com Delphi - Aula 09
### Polimorfismo
- Utilizando a sobrescrita de m�todo usando as diretivas override, virtual e abstract. Na qual:
- Virtual: declara��o feita na classe m�e.
- Override: faz a re-escrita do m�todo na classe filha podendo ter o seu comportamento modificado pelo que foi definido na classe m�e.
- Abstract: esse m�todo tem a sua defini��o na classe ancestral, e pode ser implementado somente nas classes descendentes.

## Programa��o Orientada a Objetos com Delphi - Aula 10
### Strict
- Diretiretiva restritiva strict, est� ligada diretamente aos escopos de visibilidade da classe.
- Strict Private : � estritamente privada, acess�vel somente a propria classe.
- Strict Protected : � estritamente protegida, acess�vel a propria classe e as classes herdeiras.
- Nessas diretivas, ambas negam acesso a classes amigas(dentro da mesma unit).

## Programa��o Orientada a Objetos com Delphi - Aula 11
### Heran�a
- O Delphi n�o permite m�ltipas heran�as, � sempre de uma para uma classe.
- Diretiva inherited: quando a diretiva inherited � declarada ela executa e busca os valores da classe ancestral e concatena com o valores da classe descedente. E vice-versa conforme ordem de declara��o da diretiva.

## Programa��o Orientada a Objetos com Delphi - Aula 12
### Interfaces   
- Cria��o da interface. Por conver��o do Delphi, interfaces come�am com a letra I.
- Sintaxe � a seguinte:
---
	type
	  INomeInterface = Interface
	  [GUID]
	  metodos(function)
	  End;
---
- Toda interface necessita gerar um GUID - como identificador �nico da interface.
- Para gerar o GUID:
- Posicione o cursor logo abaixo da declara��o da interface;
- Tecle : Ctrl + Shift + G

- A classe por padr�o se n�o for herdar de uma classe m�e, n�o necessita ser declarada. Pois o Delphi implicitamente identifica que est� herdando TObject.
- E no Delphi n�o � permitido herdar mais de uma classe, todos os demais s�o implementa��es.
- Desta forma para declarar a interface requer que siga alguns padr�es. Informar a classe que est� herdando e em seguida a interface.
- type TClasse = class(TObject, IInterface)
- Contudo declarando da forma acima, ainda h� m�todos que n�o pertencem a classe m�e que caso a declara��o seja feita (TObject, IInterface) ir� solicitar sua implementa��o.
- Os m�todos s�o os seguinte:  
  - QueryInterface
  - _AddRef
  - _Release
- Para solucionar este problema o ideal � declar nos par�metros da classe da seguinte forma:
  - type TClasse = class(TInterfacedObject)
- Desta forma esta classe TInterfacedObject se encarrega de implemntar os m�todos que estavam faltando que pertencem a IInterface e faz ao mesmo a declara��o de TObject como classe m�e.

## Programa��o Orientada a Objetos com Delphi - Aula 13
### M�todo de Classe - Class Method (fuction/procedure)
- Para definir um m�todo de classe basta inserir antes da procedure ou function a palavra reservada 'class'.
- Umas das caracteristicas do m�todo de classe � permitir o uso deste m�todo, sem a necessidade de instanciar a classe para fazer uso do m�todo.

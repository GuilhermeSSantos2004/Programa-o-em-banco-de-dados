# Programação-em-banco-de-dados

### Modelagem de Dados

![modelo](https://github.com/GuilhermeSSantos2004/Programa-o-em-banco-de-dados/assets/107642647/bf0eda09-50a2-4934-8f65-0d40498fb2ef)

- Essa é a etapa de Modelagem de Bancos de Dados, pois é através dela que vamos
definir quais as informações serão armazenadas dentro das tabelas e como serão feitas as
relações entre elas.
- Um modelo de dados é uma descrição formal da estrutura de um banco de dados. Podemos
dividi-lo em três modelos: Modelo Conceitual, Modelo Lógico e Modelo Físico.

![image](https://github.com/GuilhermeSSantos2004/Programa-o-em-banco-de-dados/assets/107642647/39e27f7c-120e-45b5-8eb4-e8341211b7ca)

![image](https://github.com/GuilhermeSSantos2004/Programa-o-em-banco-de-dados/assets/107642647/a2c4cc7a-bf1a-4867-bda3-cced691b5a04)


## 1.Entendimento do Problema

Podemos começar dizendo que um banco de dados é feito para resolver um problema. Por este
motivo você vai precisar entender qual a natureza dos dados e como eles se conectam.

Se você é do setor financeiro em uma empresa você terá que saber o que é importante modelar
dentro daquele sistema.

Em uma faculdade, por exemplo:

O que é importante você modelar dentro do sistema para que a
universidade tire o maior proveito desse banco de dados?

Você terá que se informar com o responsável pelo projeto, fazer perguntas, saber o que é
importante para ele. Depois disso, começar a fazer a criação do modelo entidade relacionamento.

- Etapas para modelagem de dados

O que são entidades?

Entidades são elementos que são importantes dentro da realidade que nós vamos modelar.

Por exemplo:

Quais são os elementos importantes para você modelar em um banco de
dados de uma faculdade?

Nesse caso são os alunos, professores, os diretores, etc.

Cada uma dessas entidades terá uma série de características.

O que são características de uma entidade?

No caso dos professores será seu departamento, curso, matrícula, nome, contrato, etc.

No caso dos alunos será o nome, matricula, curso, etc.

- Etapas para modelagem de dados

## 2.Modelo Entidade Relacionamento (MER)

É no MER que nós iremos identificar essas entidades, atributos e relacionamentos.

Temos que identificar quais são os relacionamentos entre essas diferentes entidades.

O relacionamento entre a entidade PROFESSOR e a entidade ALUNO, por exemplo, é que o
“professor ministra aula” para o aluno.

- Etapas para modelagem de dados

## 3.Diagrama Entidade Relacionamento (DER)

Definido as nossas entidades, características e relacionamentos temos que colocá-los em um
diagrama simples de ser compreendido.

![image](https://github.com/GuilhermeSSantos2004/Programa-o-em-banco-de-dados/assets/107642647/6920ae28-28da-443a-ac92-c3198182b6c4)

## 5. Definição do Modelo Lógico

A quinta parte é definir o modelo lógico a partir do MER e do DER.

Quais são as tabelas que nós vamos ter dentro do nosso banco de dados?

Cada uma das nossas entidades vai dar origem as nossas tabelas e cada atributo vai dar origem as
nossas colunas dentro da tabela. Por exemplo:

A entidade professor vai dar origem a tabela professor, os seus atributos vão dar origem às
colunas, que podem ser seu ID, sua matrícula, departamento, etc.

Etapas para modelagem de dados

## 6. Normalização das Tabelas

O processo de normalização é aplicar uma série de verificações nas tabelas para garantir que elas
atendem a certos requisitos.

Daí vem a ideia de formas normais. Primeira forma normal, segunda forma normal, terceira,
quarta e assim sucessivamente.

Tudo isso para garantir que essas tabelas estarão bem estruturadas!

Feito isso, podemos ir para o sétimo passo, desenvolver o dicionário de dados.

## 7. Dicionário de Dados

O dicionário de dados vai ser um documento onde vamos registrar toda a lógica usada para a
criação daquele banco de dados.

Qual foi a lógica por trás de criar as entidades, os atributos, os
relacionamentos e as restrições?

Por que motivo criamos a coluna ou a tabela?

É basicamente uma forma de documentar o nosso projeto para ser fácil dentro de alguns meses ou
anos fazer a manutenção dessa tabela e manter a gestão do conhecimento.

### Modelagem
![Modelagem do Banco de Dados](https://github.com/GuilhermeSSantos2004/Programa-o-em-banco-de-dados/assets/107642647/af59573c-d302-4a6c-a029-a4cb8ae6e842)


## COMANDOS SQL

De forma geral, os comandos SQL são instruções ou consultas usadas para
interagir com um banco de dados relacional.

Essas instruções SQL permitem que as pessoas ou aplicativos realizem várias
operações, como recuperação, inserção, atualização e exclusão de dados em
tabelas de banco de dados.

Os comandos SQL são categorizados em várias linguagens específicas, cada uma com seu propósito e função. Análise a seguir algumas possibilidades.

![image](https://github.com/GuilhermeSSantos2004/Programa-o-em-banco-de-dados/assets/107642647/90f3f270-cab5-45fc-8399-590618ae295f)

## COMANDOS DDL(DATA DEFINITION LANGUAGE)

Os comandos DDL são usados para definir a estrutura do banco de dados:

- CREATE: cria objetos de banco de dados, como tabelas, índices, visões e procedimentos
armazenados.

- ALTER: modifica a estrutura de objetos de banco de dados existentes, como adicionar ou
remover colunas de tabelas.

- DROP: exclui objetos de banco de dados, como tabelas, índices ou visões.

- TRUNCATE: Remove todos os registros de uma tabela, mas mantém sua estrutura.

### Os comandos DML são usados para manipular os dados:

- INSERT: adiciona novos registros a uma tabela.

- UPDATE: modifica registros existentes em uma tabela.

- DELETE: remove registros de uma tabela.

- Os comandos DQL são usados para consultas:

##### SELECT: recupera dados de uma ou mais tabelas do banco de dados. É o comando principal para consultas.

Os comandos DCL controlam permissões de acesso e os comandos:

- GRANT: Concede permissões a usuários ou funções para acessar objetos de banco de dados.

- REVOKE: Remove permissões previamente concedidas a usuários.

### Os comandos TCL gerenciam transações:

- COMMIT: Confirma uma transação, tornando as alterações permanentes no banco de dados.

- ROLLBACK: Desfaz uma transação e restaura o banco de dados ao estado anterior.

- SAVEPOINT: Define um ponto de salvamento em uma transação, permitindo o rollback parcial.

- SET TRANSACTION: Define características de transação, como isolamento e nível de
isolamento.

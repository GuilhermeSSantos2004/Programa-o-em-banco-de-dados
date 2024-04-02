# Programação-em-banco-de-dados

### Modelagem de Dados 

Modelagem de banco de dados:
entidades, relacionamentos e atributos

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


### Comandos SQL 

##### Cláusula LIMIT

- A cláusula LIMIT é amplamente utilizada em SGBDs como MySQL, PostgreSQL e SQLite. Sua principal função é restringir o número de registros retornados por uma consulta.

###### Sintaxe Básica:

- SELECT colunas FROM tabela
LIMIT número;

- Enquanto LIMIT é mais comum em ambientes como MySQL e PostgreSQL, TOP é específico para o ambiente Microsoft. Além disso, a cláusula LIMIT pode ser acompanhada por #### OFFSET para pular um número específico de linhas, uma funcionalidade que é especialmente útil para implementar paginação em aplicações web.

- Por exemplo, para pular os primeiros 10 registros e retornar os seguintes 10, você usaria:

SELECT * FROM clientes
LIMIT 10 OFFSET 10;

#### Cláusula NULL

Para trazer as colunas vazias, ou NULL, em SQL, utilizamos o comando ISNULL: uma expressão específica do SQL para trazer justamente esses campos NULL de cada coluna.

- SELECT * FROM HistoricoEmprego
WHERE datatermino ISNULL
ORDER BY salario DESC
LIMIT 5;

#### Cláusula NOTNULL

Se quiséssemos, por exemplo, trazer apenas as pessoas colaboradoras que não estão empregadas no momento, ou seja, que têm uma data em DataTermino, neste caso, trocaríamos o comando ISNULL por NOTNULL.

- SELECT * FROM HistoricoEmprego
WHERE datatermino NOTNULL
ORDER BY salario DESC
LIMIT 5;

#### Utilizando o comando LIKE

- O comando LIKE é utilizado na linguagem SQL para realizar consultas que envolvem a busca de padrões em uma coluna de texto. Ele permite filtrar os resultados de uma consulta de acordo com um padrão específico. O símbolo de porcentagem (%) é utilizado para representar qualquer quantidade de caracteres desconhecidos. Por exemplo, o comando "SELECT * FROM tabela WHERE coluna LIKE 'padrão%'" irá retornar todas as linhas da tabela em que a coluna começa com o padrão especificado.

- SELECT * FROM func where hint like 'A real%';

##### Filtrando por palavras no meio de um nome

- SELECT * FROM Treinamento
WHERE curso LIKE '%realizar%';

#### Operadores lógicos

Os operadores lógicos servem para nos ajudar a trazer mais especificações, isto é, mais condições para as nossas consultas simultaneamente. No caso, o operador AND restringe nossas consultas.

Esse operador faz com que seja retornado apenas o registro verdadeiro para ambas as condições que definimos. Cada AND que adicionamos, adicionamos uma condição a mais que determinado registro precisa atender para que seja trazido na consulta.


SELECT * FROM HistoricoEmprego
WHERE cargo = 'Professor' AND
datatermino NOT NULL;


#### Utilizando o operador O

- o operador "OR" é utilizado para adicionar condições mais amplas a uma consulta. Ele retorna registros que atendam a pelo menos uma das condições especificadas. Por exemplo, em uma consulta na tabela "HistoricoEmprego" em busca de colaboradores com os cargos de "Oftalmologista" ou "Dermatologista", o operador "OR" é utilizado para retornar os colaboradores que atendam a uma das condições especificadas.

- SELECT * FROM HistoricoEmprego
WHERE cargo = 'Oftalmologista' OR
cargo = 'Dermatologista';

#### Utilizando o operador IN

- O IN vai fazer com que coloquemos entre parênteses todos os campos que queremos trazer de uma só vez, sem precisar repetir o operador (OR) diversas vezes. 

SELECT * FROM HistoricoEmprego
WHERE cargo IN ('Oftalmologista', 'Dermatologista', 'Professor');

#### Utilizando o operador NOT

- Poderíamos seguir o mesmo caminho se quiséssemos fazer uma consulta excluindo alguns registros. Por exemplo: se quiséssemos puxar todas as pessoas cadastradas com suas respectivas profissões, menos oftalmologista, dermatologista e professor.

- Como fazemos para excluir algum registro específico? Nesse caso, em vez de usar o operador IN, escrevemos antes do IN, o operador lógico NOT. Dessa forma, teremos o comando NOT IN.

- SELECT * FROM HistoricoEmprego
WHERE cargo NOT IN ('Oftalmologista', 'Dermatologista', 'Professor');


#### Utilizando funções de agregação

- Existem algumas funções específicas no SQL que conseguem trazer exatamente esse resultado: as funções de agregação. Elas agregam números (principalmente informações numéricas), e conseguem trazer o total de valores de vendas ou qualquer outro valor que trabalhe com números. Com elas, conseguimos trazer o total, o valor mínimo e o valor máximo, correlacionando com outras colunas da tabela.

#### função MAX()

- Em seguida, adicionaremos a função MAX() para saber o mês em que houve o maior faturamento na história da empresa. Entre seus parênteses, vamos colocar a coluna que queremos trazer. No caso, queremos saber o faturamento bruto, então, vamos colocar faturamento_bruto.

- SELECT mes, MAX(faturamento_bruto) FROM faturamento;

- Em seguida, temos que saber o faturamento mínimo, o mês que ela menos trouxe faturamento na história da empresa.

#### função MIN()

Para isso, manteremos a consulta SELECT mes e, ao invés de MAX(), vamos usar a função de agregação MIN(). Os nomes delas são bem intuitivos, tornando bem simples de entender qual função cada uma exerce.

#### função SUM()

A função SUM é uma função de agregação no SQL que permite somar os valores de uma coluna numérica em uma tabela. Ela é utilizada para obter a soma total de um conjunto de valores. No contexto do vídeo, a função SUM foi utilizada para somar o número de novos clientes do último ano na tabela de faturamento.

- SELECT SUM(numero_novos_clientes) AS 'Novos clientes 2023' FROM faturamento


#### Gerando as médias com AVG()

- Ela serve para ver a média — AVG vem de Average (média em inglês).

- SELECT AVG(despesas) FROM faturamento;

#### Gerando contagens de linhas com COUNT()

- Também temos a função de agregação COUNT(), que vai contar um número de linhas específicas que respondem a um determinado critério ou condição que colocarmos na nossa consulta. Ela será ótima para a próxima demanda da Fokus, já que ela deseja saber a quantidade exata de pessoas colaboradoras desempregadas.

- SELECT COUNT(*) FROM HistoricoEmprego
WHERE datatermino NOT NULL;

#### Mostrando tipos diferentes com o GROUP BY

- A cláusula GROUP BY agrupa linhas que têm os mesmos valores na coluna que especificamos.

- SELECT parentesco FROM Dependentes
GROUP BY parentesco;

- SELECT parentesco, COUNT(*) FROM Dependentes
GROUP BY parentesco;

- SELECT instituicao, COUNT(curso)
FROM Treinamento
GROUP BY instituicao
WHERE COUNT(curso) > 2;

# Condicionando dados agrupados com HAVING

A cláusula HAVING é utilizada em consultas SQL para condicionar dados agrupados após a aplicação da cláusula GROUP BY. Ela permite filtrar os resultados de acordo com uma condição específica, que pode ser baseada em funções de agregação, como COUNT, SUM, AVG, entre outras. Dessa forma, é possível selecionar apenas os grupos que atendem a determinada condição.

- SELECT instituicao, COUNT(curso)
FROM Treinamento
GROUP BY instituicao
HAVING COUNT(curso) > 2;

#### Verificando os CPFs com a função LENGTH



____________________________________________________________________________________________________________________________________

#### DDL - Data Definition Language - Linguagem de Definição de Dados.
- São comandos DDL : CREATE, ALTER e DROP

#### DML - Data Manipulation Language - Linguagem de Manipulação de Dados.

São os comandos que interagem com os dados dentro das tabelas.
- São comandos DML : INSERT, DELETE e UPDATE

#### DQL - Data Query Language - Linguagem de Consulta de dados.
São os comandos de consulta.

- São comandos DQL : SELECT (é o comando de consulta)
Aqui cabe um parenteses. Em alguns livros o SELECT fica na DML em outros tem esse grupo próprio.

#### DTL - Data Transaction Language - Linguagem de Transação de Dados.
São os comandos para controle de transação.

- São comandos DTL : BEGIN TRANSACTION, COMMIT E ROLLBACK



![image](https://github.com/GuilhermeSSantos2004/Programa-o-em-banco-de-dados/assets/107642647/c0808af8-33be-44c7-88f9-88bc55b0c0bc)

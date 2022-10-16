Source: https://github.com/leivio/work-at-boticario/blob/main/Engenheiro%20de%20Dados.pdf

Country: Brazil

## English

=====================
# Data Engineer - Boticário Group Practice Test

Along with this description, you are getting 3 files with random sales data from 2017 to 2019.
For the execution of this test, you can use the tools you are most familiar with, following only the following premises:
1. The data must necessarily be stored in database tables (MySQL, PostgreSQL, BigQuery, MS SQL, Oracle etc) and not in files or spreadsheets.
2. You must necessarily use SQL and Python in the processes of loading, querying and transforming data.
3. Use a tool that allows you to create ETL processes or DAG's for data ingestion and transformation.
4. You must implement version control for your code.
Note Although you can use tools of your choice, we are structuring our data platform on Google's cloud, if you perform the implementations using GCP tools, we will be even happier!

## You'll need:

1. Import the data from the 3 files into a table created by you in the database of your choice.
2. With the imported data, model 4 new tables and implement processes to make the necessary transformations and insert the following views into the tables:

        a. Table1: Consolidated sales by year and month.
        b. Table2: Consolidated sales by brand and line.
        c. Table3: Consolidated sales by brand, year and month.
        d. Table4: Consolidated sales by line, year and month.
3. Create a common Twitter account.
4. Access https://developer.twitter.com/en/apply-for-access and create an account
of developer.
5. After creating the account, access the App menu and create an application. For testing purposes, the data need not be accurate. The URL, for example, can put http://localhost.com.
6. After creating the app, access it and generate the token and secret token.
7. Create a data capture process through the Twitter API, using the following parameters:

        a. Words to search for: “Boticário” and the name of the line with the most sales in month 12 of 2019 (according to item 2.d.).
        a. Retrieve the 50 most recent tweets.
        c. Retrieve only tweets that are in Portuguese.
8. Create a process that saves the usernames and text of retrieved tweets in a database table.

## What do we expect from you?

1. That you can complete all the steps above.
2. It generates a repository with all the scripts and makes it available for consultation.
3. That shows us all the processes running and the tables being loaded. We'll set up a virtual meeting so you can demonstrate.
4. Tell us how you organized yourself to carry out the tasks.

## Original

# Engenheiro de Dados - Teste Prático Grupo Boticário

Junto com este descritivo, você está recebendo 3 arquivos com dados aleatórios de vendas de 2017 a 2019.
Para a execução deste teste, você pode utilizar as ferramentas que estiver mais familiarizado, seguindo apenas as seguintes premissas:
1. Os dados necessariamente devem ser armazenados em tabelas de banco de dados (MySQL, PostgreSQL, BigQuery, MS SQL, Oracle etc) e não em arquivos ou planilhas.
2. Você deve necessariamente utilizar as linguagens SQL e Python nos processos de carga, consulta e transformação dos dados.
3. Utilizar uma ferramenta que lhe permita criar os processos de ETL ou DAG’s para ingestão e transformação de dados.
4. Você deve implementar um controle de versionamento para seus códigos.
Obs. Embora você possa utilizar ferramentas de sua escolha, estamos estruturando nossa plataforma de dados na nuvem do Google, se você realizar as implementações utilizando ferramentas do GCP, ficaremos mais felizes ainda! #ficaadica ;-)

## Você precisará:

1. Realizar a importação dos dados dos 3 arquivos em uma tabela criada por você no banco de dados de sua escolha.
2. Com os dados importados, modelar 4 novas tabelas e implementar processos que façam as transformações necessárias e insiram as seguintes visões nas
tabelas:

        a. Tabela1: Consolidado de vendas por ano e mês.
        b. Tabela2: Consolidado de vendas por marca e linha.
        c. Tabela3: Consolidado de vendas por marca, ano e mês.
        d. Tabela4: Consolidado de vendas por linha, ano e mês.
3. Criar uma conta de acesso comum ao Twitter.
4. Acessar https://developer.twitter.com/en/apply-for-access e criar uma conta de desenvolvedor.
5. Após criar a conta, acesse o menu App e crie um aplicativo. Para fins de testes, os dados não precisam ser precisos. A URL por exemplo, pode colocar http://localhost.com.
6. Após criado o app, acesse o mesmo e gere o token e token secret.
7. Criar um processo de captura de dados através da API do Twitter, que utilize os seguintes parâmetros: 

        a. Palavras a serem pesquisadas: “Boticário” e o nome da linha com mais vendas no mês 12 de 2019 (conforme item 2.d.).
        b. Recuperar os 50 tweets mais recentes.
        c. Recuperar apenas tweets que estejam em português.
8. Criar um processo que salve os nomes dos usuários e o texto dos tweets recuperados em uma tabela do banco de dados.

## O que esperamos de você?

1. Que consiga realizar todas as etapas acima.
2. Que gere um repositório com todos os scripts e nos disponibilize para consulta.
3. Que nos demonstre todos os processos rodando e as tabelas sendo carregadas. Marcaremos uma reunião virtual para que possa demonstrar.
4. Que nos apresente como se organizou para realizar as tarefas.


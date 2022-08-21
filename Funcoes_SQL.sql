USE ContosoRetailDW;

SELECT * FROM DimProduct;

-- Pegar apenas os valores do campo ProductName que contem a palavra MP3 PLAYER, dentro do texto, ou seja, 
	-- ele analisa todo o registro e filtra apenas os que contem oq está pedindo --
SELECT * FROM DimProduct
	WHERE ProductName LIKE '%MP3 Player%' AND ClassID = 1;

-- Pegar todos os valores do campo ProductDescription começa com a palavra Type
SELECT * FROM DimProduct
	WHERE ProductDescription LIKE '%WMA';

-- Pega todos os valores do campo UnitPrice que esteja no intervalo de 50 e 100.
SELECT * FROM DimProduct
	WHERE UnitPrice BETWEEN 50 AND 100;

-- Pega todos os valores do campo UnitPrice que não esteja no intervalo de 50 e 100.
SELECT * FROM DimProduct
	WHERE UnitPrice NOT BETWEEN 50 AND 100;

SELECT * FROM DimCustomer;

-- Seleciona apenas os registros que são NULL do campo CompanyName;
SELECT * FROM DimCustomer
	WHERE CompanyName IS NULL;

-- Seleciona apenas os registros que não são NULL do campo CompanyName;
SELECT * FROM DimCustomer
	WHERE CompanyName IS NOT NULL;


SELECT * FROM DimStore;

-- Seleciona os Primeiros 20 registros da tabela DimCustomer.
SELECT TOP(20) * FROM DimCustomer;

-- Seleciona 50% dos primeiros registros da tabela DimStore
SELECT TOP(50) PERCENT * FROM DimStore;

-- Seleciona os 100 ultimos registros da tabela DimStore ordenado pelo campo Storekey
SELECT TOP(100) * FROM DimStore ORDER BY StoreKey DESC;

-- Seleciona os primeiros 100 registro do campo DimStore ordenado de for decrescente
SELECT TOP(100-1) * FROM DimStore ORDER BY EmployeeCount DESC;

-- Seleciona os 10 primeiros registros do campo UnitPrice aonde o mesmo sejam maiores
	-- que 1000 e ordenado de forma decrescente.
SELECT TOP(10) UnitPrice FROM DimProduct 
	WHERE UnitPrice > 1000 
	ORDER BY UnitPrice DESC;

-- Seleciona apenas os valores que estejam no campo DepartmentName
SELECT * FROM DimEmployee  
	WHERE DepartmentName IN ('Marketing', 'Engineering');


CREATE DATABASE AcademySQL
ON --Определяем свойства файла Базы Данных
(
NAME       = AcademySQL,
FILENAME   = 'D:\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AcademySQL.mdf',
SIZE       = 8 MB,
MAXSIZE    = 500 MB,
FILEGROWTH = 8 MB
)
LOG ON --Свойства файла журнала транзакций
(
NAME       = AcademySQL_Log,
FILENAME   = 'D:\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AcademySQL_Log.ldf',
SIZE       = 8 MB,
MAXSIZE    = 500 MB,
FILEGROWTH = 8 MB
)
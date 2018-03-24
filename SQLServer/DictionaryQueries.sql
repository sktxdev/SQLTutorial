-- ######################################################################
--	SQL Training sample scripts
-- ######################################################################

-- ######################################################################
-- List columns in a table
-- ######################################################################

SELECT * FROM [information_schema].[columns] WHERE   table_name = 'WellProperties' AND table_schema = 'dbo'

-- ######################################################################
-- List indexes for a table
-- ######################################################################

SELECT * FROM sys.indexes i WHERE i.object_ID=object_id('dbo.WellProperties')

-- ######################################################################
-- Listing foreign keys for a table
-- ######################################################################

select t.name as [Table Name], c.name as [Foreign Key Column], object_name(referenced_object_id) [Referenced Table]
from sys.foreign_key_columns as fk
inner join sys.tables as t on fk.parent_object_id = t.object_id
inner join sys.columns as c on fk.parent_object_id = c.object_id and fk.parent_column_id = c.column_id
where fk.referenced_object_id in (select object_id from sys.tables)
and t.Name = 'Wells' -- comment this out for all tables
order by [Table Name]

-- ######################################################################
-- Listing foreign keys referencing a table
-- ######################################################################

select t.name as [Table Name], c.name as [Foreign Key Column], object_name(referenced_object_id) [Referenced Table]
from sys.foreign_key_columns as fk
inner join sys.tables as t on fk.parent_object_id = t.object_id
inner join sys.columns as c on fk.parent_object_id = c.object_id and fk.parent_column_id = c.column_id
where fk.referenced_object_id in (select object_id from sys.tables)
and object_name(referenced_object_id) = 'Wells' -- comment this out for all tables
order by [Table Name]

-- ######################################################################
-- Generating a dictionary
-- ######################################################################

SELECT OBJECT_SCHEMA_NAME(T.[object_id],DB_ID()) AS [Schema],   
        T.[name] AS [table_name], AC.[name] AS [column_name],   
        TY.[name] AS system_data_type, AC.[max_length],  
        AC.[precision], AC.[scale], AC.[is_nullable], AC.[is_ansi_padded], ex.Value [Description]
FROM sys.[tables] AS T   
  INNER JOIN sys.[all_columns] AC ON T.[object_id] = AC.[object_id]  
 INNER JOIN sys.[types] TY ON AC.[system_type_id] = TY.[system_type_id] AND AC.[user_type_id] = TY.[user_type_id]
 LEFT OUTER JOIN  sys.extended_properties ex on 
     ex.major_id = ac.object_id 
     AND ex.minor_id = ac.column_id  
     AND ex.name = 'MS_Description'  
WHERE T.[is_ms_shipped] = 0  
-- and T.Name = 'WellProperties' -- comment this out for all tables
ORDER BY T.[name], AC.[column_id]


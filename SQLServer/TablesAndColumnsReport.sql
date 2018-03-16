-- #############################################################################
-- Tables and Columns Report
-- #############################################################################
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
ORDER BY T.[name], AC.[column_id]

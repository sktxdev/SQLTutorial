-- ####################################################################
--  Clean a database
--
--  Warning: This is destructive. If you unsure about what you
--           are doing, don't run this script!!
--
-- ####################################################################

DECLARE @execute bit = 0        -- set this to 1 to actually run the script
DECLARE @sql nvarchar(200)
DECLARE @cursor CURSOR

SET @cursor = CURSOR FAST_FORWARD FOR

-- drop constraints

SELECT DISTINCT sql = 'ALTER TABLE [' + t2.TABLE_SCHEMA + '].[' + t2.TABLE_NAME + '] DROP [' + t1.CONSTRAINT_NAME + '];'
FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS t1
LEFT JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS t2
    on t1.CONSTRAINT_NAME = t2.CONSTRAINT_NAME

OPEN @cursor FETCH NEXT FROM @cursor INTO @sql

WHILE (@@FETCH_STATUS = 0)
    BEGIN
        IF @execute = 1
        BEGIN
            EXEC sp_executesql @sql
        END
    FETCH NEXT FROM @cursor INTO @sql
    END

CLOSE @cursor 
DEALLOCATE @cursor

IF @execute = 1
    BEGIN
        EXEC sp_MSforeachtable 'DROP TABLE ?'
        PRINT 'DB Tables have been removed'
    END
    ELSE
    BEGIN
        PRINT '@execute is set to 0, script not executed'
    END
GO

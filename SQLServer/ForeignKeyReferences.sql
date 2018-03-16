-- ############################################################################
-- Get a list of tables that have foreign keys to other tables
-- You can copy the results of this query into Excel and have a useful
-- dictionary to document your database
-- ############################################################################

select t.name as TableWithForeignKey, c.name as ForeignKeyColumn, object_name(referenced_object_id) [ReferencedTable]
from sys.foreign_key_columns as fk
inner join sys.tables as t on fk.parent_object_id = t.object_id
inner join sys.columns as c on fk.parent_object_id = c.object_id and fk.parent_column_id = c.column_id
where fk.referenced_object_id in (select object_id from sys.tables)
order by TableWithForeignKey


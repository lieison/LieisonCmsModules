SELECT * FROM lieison_soft.sales_entradas;

SELECT COUNT(*) as 'count' , id_entrada as 'id' 
FROM sales_entradas WHERE  id_usuario LIKE 'rolando55admin18894933'
and id_prospecto LIKE 13;

SELECT * FROM lieison_soft.sales_prospect WHERE estado like 1 and meta_estado >= 0 and meta_estado <= 1
ORDER BY fecha DESC;

SELECT * FROM sales_entradas WHERE fecha = now();

SELECT concat(DATE_ADD(fecha, INTERVAL 1 DAY) , '-->' , date_format(now() , '%Y-%m-%d')) as id FROM sales_entradas;

SELECT id_entrada FROM sales_entradas WHERE DATE_ADD(fecha, INTERVAL 5 DAY)  < date_format(now() , '%Y-%m-%d');

call ProcGetEntrance();

call ProcGetOldEntrace();

SELECT 
concat(usuario.nombre , ' ' , usuario.apellido) as 'Uname' ,
usuario.imagen as 'Uimg' , 
usuario.id_usuario as 'Uid',
sales_prospect.nombre as 'Pname' , 
sales_prospect.estado as 'Pstate' , 
sales_entradas.id_entrada as 'id',
sales_entradas.fecha as 'date',
sales_entradas.hora as 'hour'
FROM sales_entradas 
INNER JOIN usuario ON sales_entradas.id_usuario=usuario.id_usuario
INNER JOIN sales_prospect ON sales_entradas.id_prospecto=sales_prospect.id_prospect
ORDER BY timestamp(sales_entradas.fecha , sales_entradas.hora) DESC;

SELECT count(*) as 'counter' FROM sales_prospect_bitacora
INNER JOIN sales_prospect_bitacora_log ON  sales_prospect_bitacora.id_bitacora=sales_prospect_bitacora_log.id_bitacora 
WHERE  sales_prospect_bitacora.id_prospecto LIKE 17;



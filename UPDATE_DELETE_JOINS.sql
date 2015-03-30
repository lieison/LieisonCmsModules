DELETE cl , tl , em  FROM clientes as cl
INNER JOIN telefono as tl ON  cl.idtelefono = tl.idtelefono
INNER JOIN email as em ON cl.idemail=em.idemail
WHERE cl.idcliente LIKE 12;

UPDATE clientes 
INNER JOIN telefono  ON clientes.idtelefono=telefono.idtelefono
SET clientes.nombre = 'jorge',
	telefono.numero_casa = '6666666'
WHERE clientes.idcliente LIKE 15;



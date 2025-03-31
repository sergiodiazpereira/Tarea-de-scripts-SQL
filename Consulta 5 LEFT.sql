SELECT visita.idVisita, jesuita.nombre, lugar.lugar  
FROM jesuita  
RIGHT JOIN visita ON visita.idJesuita = jesuita.idJesuita  
RIGHT JOIN lugar ON visita.ip = lugar.ip;

SELECT visita.idVisita, jesuita.nombre, lugar.lugar  
FROM visita  
RIGHT JOIN lugar ON visita.idJesuita = jesuita.idJesuita  
RIGHT JOIN jesuita ON visita.ip = lugar.ip;

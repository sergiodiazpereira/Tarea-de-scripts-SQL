SELECT idVisita, nombre, lugar FROM visita CROSS JOIN jesuita CROSS JOIN lugar WHERE visita.idJesuita = jesuita.idJesuita AND visita.ip = lugar.ip;
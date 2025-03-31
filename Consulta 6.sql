SELECT lugar.lugar, jesuita.nombre, visita.idVisita FROM lugar
LEFT JOIN visita ON lugar.ip = visita.ip
LEFT JOIN jesuita ON jesuita.idJesuita = visita.idJesuita;
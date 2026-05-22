% -- MAMIFEROS --%

identificar(cabra) :-               
    tiene(columna, si),
    tiene(piel, pelaje),
    tiene(tamano, grande),
    tiene(cuernos, si).

identificar (cerdo) :-
    tiene(columna, si),
    tiene(piel, pelaje),
    tiene(tamano, pequeno). 

identificar(conejo) :-               
    tiene(columna, si),
    tiene(piel, pelaje),
    tiene(tamano, pequeno),          
    tiene(roedor, si),
    tiene(orejas_largas, si).

identificar (cuy) :-
    tiene(columna, si),
    tiene(piel, pelaje),
    tiene(tamano, pequeno),          
    tiene(roedor, si),
    tiene(orejas_largas, no).

identificar (oveja) :-
    tiene(columna, si),
    tiene(piel, pelaje),
    tiene(tamano, grande),
    tiene(cuernos, no).

identificar (gato) :-
    tiene(columna, si),
    tiene(piel, pelaje),
    tiene(tamano, pequeno),
    tiene(roedor, no).

% -- AVES --%

identificar (avestruz) :-
    tiene(columna, si),
    tiene(piel, plumaje),
    tiene(tamano, grande).

identificar (gallina) :-
    tiene(columna, si),
    tiene(piel, plumaje),
    tiene(tamano, mediano), 
    tiene(vuela_alto,no),
    tiene(plumaje_exotico, no).

identificar (pato) :-
    tiene(columna, si),
    tiene(piel, plumaje),
    tiene(tamano, mediano), 
    tiene(vuela_alto, si),
    tiene(ciudad,no), 
    tiene(habla, no).

identificar (pavo) :-
    tiene(columna, si),
    tiene(piel, plumaje),
    tiene(tamano, mediano), 
    tiene(vuela_alto,no),
    tiene(plumaje_exotico, si).

identificar (loro) :-
    tiene(columna, si),
    tiene(piel, plumaje),
    tiene(tamano, mediano), 
    tiene(vuela_alto, si),
    tiene(ciudad,no), 
    tiene(habla, si).

identificar (paloma) :-
    tiene(columna, si),
    tiene(piel, plumaje),
    tiene(tamano, mediano), 
    tiene(vuela_alto, si),
    tiene(ciudad,si).

% -- ANFIBIOS -- %
identificar (rana) :-
    tiene(columna, si),
    tiene(piel, humeda),
    tiene(tamano, pequeno),
    tiene(veneno, si).

identificar (sapo) :-
    tiene(columna, si),
    tiene(piel, humeda),
    tiene(tamano, pequeno),
    tiene(veneno, no).
    
identificar (ajolote) :-
    tiene(columna, si),
    tiene(piel, humeda),
    tiene(tamano, mediano).

% -- REPTILES -- %

identificar (anaconda) :-
    tiene(columna, si),
    tiene(piel, escamas),
    tiene(tamano, grande).

identificar (tortuga) :-
    tiene(columna, si),
    tiene(piel, escamas),
    tiene(tamano, mediano), 
    tiene(caparazon,si).

identificar (iguana) :-
    tiene(columna, si),
    tiene(piel, escamas),
    tiene(tamano, mediano), 
    tiene(caparazon,no).

identificar (lagartija) :-
    tiene(columna, si),
    tiene(piel, escamas),
    tiene(tamano, pequeno).

% -- MOLUSCOS -- %

identificar (caracol) :-
    tiene(columna, no),
    tiene(agua, no).

identificar (pulpo) :-
    tiene(columna, no),
    tiene(agua, si),
    tiene(nada, si), 
    tiene(ocho_patas, si).

identificar (almeja) :-
    tiene(columna, no),
    tiene(agua, si),
    tiene(nada, no).

identificar (calamar) :-
    tiene(columna, no),
    tiene(agua, si),
    tiene(nada, si), 
    tiene(ocho_patas, no).   

% -- INSECTOS -- %

identificar (abeja) :-
    tiene(columna, no),
    tiene(agua, no),
    tiene(vuela, si),
    tiene(miel,si).

identificar(mariposa):-
    tiene(columna, no),
    tiene(agua, no),
    tiene(vuela, si),
    tiene(miel,no).
    
identificar (hormiga) :-
    tiene(columna, no),
    tiene(agua, no),
    tiene(vuela, no).

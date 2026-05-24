% ======================================================
% ARCHIVO: reglas_identificacion.pl
% ======================================================

% ========== MAMIFEROS ==========

identificar(gato) :-
    tiene(vertebrado, si),
    tiene(tamano, pequeno),
    tiene(piel, pelaje),
    tiene(roedor, no).

identificar(conejo) :-
    tiene(vertebrado, si),
    tiene(tamano, pequeno),
    tiene(piel, pelaje),
    tiene(roedor, si),
    tiene(orejas_largas, si).

identificar(cuy) :-
    tiene(vertebrado, si),
    tiene(tamano, pequeno),
    tiene(piel, pelaje),
    tiene(roedor, si),
    tiene(orejas_largas, no).

identificar(jabali) :-
    tiene(vertebrado, si),
    tiene(tamano, mediano),
    tiene(piel, pelaje).

identificar(cabra) :-
    tiene(vertebrado, si),
    tiene(tamano, grande),
    tiene(piel, pelaje),
    tiene(cuernos, si).

identificar(oveja) :-
    tiene(vertebrado, si),
    tiene(tamano, grande),
    tiene(piel, pelaje),
    tiene(cuernos, no).

% ========== AVES ==========

identificar(loro) :-
    tiene(vertebrado, si),
    tiene(tamano, pequeno),
    tiene(piel, plumas),
    tiene(habla, si).

identificar(paloma) :-
    tiene(vertebrado, si),
    tiene(tamano, pequeno),
    tiene(piel, plumas),
    tiene(habla, no).

identificar(pavo) :-
    tiene(vertebrado, si),
    tiene(tamano, mediano),
    tiene(piel, plumas),
    tiene(plumaje_exotico, si).

identificar(pato) :-
    tiene(vertebrado, si),
    tiene(tamano, mediano),
    tiene(piel, plumas),
    tiene(plumaje_exotico, no),
    tiene(nada, si).

identificar(gallina) :-
    tiene(vertebrado, si),
    tiene(tamano, mediano),
    tiene(piel, plumas),
    tiene(plumaje_exotico, no),
    tiene(nada, no).

identificar(avestruz) :-
    tiene(vertebrado, si),
    tiene(tamano, grande),
    tiene(piel, plumas).

% ========== ANFIBIOS ==========

identificar(rana) :-
    tiene(vertebrado, si),
    tiene(tamano, pequeno),
    tiene(piel, humeda),
    tiene(veneno_letal, si).

identificar(ajolote) :-
    tiene(vertebrado, si),
    tiene(tamano, pequeno),
    tiene(piel, humeda),
    tiene(veneno_letal, no).

identificar(sapo) :-
    tiene(vertebrado, si),
    tiene(tamano, mediano),
    tiene(piel, humeda).

identificar(hipopotamo) :-
    tiene(vertebrado, si),
    tiene(tamano, grande),
    tiene(piel, humeda).

% ========== REPTILES ==========

identificar(lagarto) :-
    tiene(vertebrado, si),
    tiene(tamano, pequeno),
    tiene(piel, escamas).

identificar(tortuga) :-
    tiene(vertebrado, si),
    tiene(tamano, mediano),
    tiene(piel, escamas),
    tiene(caparazon, si).

identificar(iguana) :-
    tiene(vertebrado, si),
    tiene(tamano, mediano),
    tiene(piel, escamas),
    tiene(caparazon, no).

identificar(serpiente) :-
    tiene(vertebrado, si),
    tiene(tamano, grande),
    tiene(piel, escamas).

% ========== INSECTOS ==========

identificar(abeja) :-
    tiene(vertebrado, no),
    tiene(insecto, si),
    tiene(vuela, si),
    tiene(produce_miel, si).

identificar(mariposa) :-
    tiene(vertebrado, no),
    tiene(insecto, si),
    tiene(vuela, si),
    tiene(produce_miel, no).

identificar(hormiga) :-
    tiene(vertebrado, no),
    tiene(insecto, si),
    tiene(vuela, no),
    tiene(forma_colonias, si).

% ========== MOLUSCOS ==========

identificar(pulpo) :-
    tiene(vertebrado, no),
    tiene(insecto, no),
    tiene(tiene_extremidades, si),
    tiene(ocho_extremidades, si).

identificar(calamar) :-
    tiene(vertebrado, no),
    tiene(insecto, no),
    tiene(tiene_extremidades, si),
    tiene(ocho_extremidades, no).

identificar(caracol) :-
    tiene(vertebrado, no),
    tiene(insecto, no),
    tiene(tiene_extremidades, no),
    tiene(concha_enrollada, si).

identificar(almeja) :-
    tiene(vertebrado, no),
    tiene(insecto, no),
    tiene(tiene_extremidades, no),
    tiene(concha_enrollada, no).
% Obtiene la lista de ancestros de un animal
obtener_taxonomia(animalia, [animalia]) :- !.
obtener_taxonomia(Animal, [Animal|Ancestros]) :-
    padre_taxonomico(Animal, Padre),
    obtener_taxonomia(Padre, Ancestros).

iniciar :-
    retractall(conocido(_, _)), % Resetea la memoria de trabajo
    write('=== SISTEMA EXPERTO: CLASIFICACIÓN DE ESPECIES MENORES ==='), nl,
    (identificar(Animal) ->
        reporte_final(Animal)
    ;
        write('Lo siento, no logré identificar la especie con las características dadas.'), nl
    ).

% Formatea e imprime el reporte final en pantalla
reporte_final(Animal) :-
    nl, write('======================================================'), nl,
    write('      ¡ESPECIE IDENTIFICADA POR EL SISTEMA EXPERTO!   '), nl,
    write('======================================================'), nl,
    format(' Animal detectado: ~w', [Animal]), nl, nl,
    write(' Línea de Clasificación Taxonómica:'), nl,
    obtener_taxonomia(Animal, Linea),
    imprimir_linea(Linea),
    write('======================================================'), nl.

imprimir_linea([]).
imprimir_linea([X|Xs]) :-
    format('  -> ~w', [X]), nl,
    imprimir_linea(Xs).
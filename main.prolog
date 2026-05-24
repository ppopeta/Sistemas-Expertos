% ======================================================
% ARCHIVO: main.pl
% Interfaz de Usuario y Control de Preguntas
% ======================================================

:- include ("hechos_padre_taxomicos")
:- include ("reglas_logicas")
:- include ("reglas_identificacion")
:- dynamic(conocido).

iniciar :-
    retractall(conocido(_, _)), % Resetea la memoria de consultas previas
    write("=== SISTEMA EXPERTO: CLASIFICACION DE ESPECIES MENORES ==="), nl,
    (identificar(Animal) ->
        reporte_final(Animal)
    ;
        write("Lo siento, no logre identificar la especie con las caracteristicas dadas."), nl
    ).

tiene(Atributo, Valor) :-
    conocido(Atributo, Valor), !.

tiene(Atributo, Valor) :-
    conocido(Atributo, _), !, fail.

tiene(Atributo, Valor) :-
    write("¿Su animal tiene la caracteristica ("), write(Atributo), write(")? "),
    read(Resp),
    assertz(conocido(Atributo, Resp)),
    Resp == Valor.

reporte_final(Animal) :-
    nl, write("======================================================"), nl,
    write("      ESPECIE IDENTIFICADA POR EL SISTEMA EXPERTO     "), nl,
    write("======================================================"), nl,
    write(" Animal detectado: "), write(Animal), nl, nl,
    write(" Linea de Clasificacion Taxonorica:"), nl,
    obtener_taxonomia(Animal, Linea),
    imprimir_linea(Linea),
    write("======================================================"), nl.

imprimir_linea([]).
imprimir_linea([X|Xs]) :-
    write("  -> "), write(X), nl,
    imprimir_linea(Xs).
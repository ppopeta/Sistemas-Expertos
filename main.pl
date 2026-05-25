% ======================================================
% ARCHIVO: main.pl
% ======================================================

:- include('hechos_taxonomicos.pl').
:- include('reglas_taxonomicas.pl').
:- include('reglas_identificacion.pl').
:- dynamic conocido/2.

% Suprime los warnings de predicados no contiguos
:- discontiguous padre_taxonomico/2.
:- discontiguous nombre/2.
:- discontiguous obtener_taxonomia/2.
:- discontiguous identificar/1.

% ======================================================
% CONTROL PRINCIPAL
% ======================================================

iniciar :-
    retractall(conocido(_, _)),
    nl,
    write('=== SISTEMA EXPERTO: CLASIFICACION DE ANIMALES ==='), nl,
    write('--- Responde cada pregunta con: si. | no.'), nl,
    write('--- Para tamano escribe:        pequeno. | mediano. | grande.'), nl,
    write('--- Para piel escribe:          pelaje. | plumas. | humeda. | escamas.'), nl,
    nl,
    (identificar(Animal) ->
        reporte_final(Animal)
    ;
        nl,
        write('No se pudo identificar el animal con las caracteristicas dadas.'), nl,
        write('Verifica que las respuestas coincidan con el animal que piensas.'), nl
    ).

% ======================================================
% MOTOR DE PREGUNTAS
% ======================================================

tiene(Atributo, Valor) :-
    conocido(Atributo, Valor), !.

tiene(Atributo, _) :-
    conocido(Atributo, _), !, fail.

tiene(Atributo, Valor) :-
    preguntar(Atributo, Respuesta),
    assertz(conocido(Atributo, Respuesta)),
    Respuesta == Valor.

preguntar(Atributo, Respuesta) :-
    pregunta(Atributo, Texto),
    write(Texto), nl,
    write('> '),
    catch(
        read(Respuesta),
        _,
        (
            write('Entrada invalida. Recuerda escribir el punto al final. Ej: si.'), nl,
            fail
        )
    ).

% ======================================================
% BANCO DE PREGUNTAS
% ======================================================

pregunta(vertebrado,         '¿El animal tiene columna vertebral?                        (si/no)').
pregunta(tamano,             '¿De que tamano es?                          (pequeno/mediano/grande)').
pregunta(piel,               '¿Que tipo de piel tiene?          (pelaje/plumas/humeda/escamas)').
pregunta(roedor,             '¿Es un roedor?                                             (si/no)').
pregunta(orejas_largas,      '¿Tiene orejas largas?                                      (si/no)').
pregunta(cuernos,            '¿Tiene cuernos?                                            (si/no)').
pregunta(habla,              '¿Puede hablar o imitar sonidos?                            (si/no)').
pregunta(plumaje_exotico,    '¿Tiene plumaje exotico o llamativo?                        (si/no)').
pregunta(nada,               '¿Nada habitualmente?                                       (si/no)').
pregunta(veneno_letal,       '¿Tiene veneno letal?                                       (si/no)').
pregunta(caparazon,          '¿Tiene caparazon?                                          (si/no)').
pregunta(insecto,            '¿Es un insecto (6 patas)?                                  (si/no)').
pregunta(vuela,              '¿Puede volar?                                              (si/no)').
pregunta(produce_miel,       '¿Produce miel?                                             (si/no)').
pregunta(forma_colonias,     '¿Forma colonias u hormigueros?                             (si/no)').
pregunta(tiene_extremidades, '¿Tiene extremidades (tentaculos o patas)?                  (si/no)').
pregunta(ocho_extremidades,  '¿Tiene exactamente 8 extremidades?                         (si/no)').
pregunta(concha_enrollada,   '¿Tiene una sola concha enrollada (como espiral)?           (si/no)').

reporte_final(Animal) :-
    nl,
    write('======================================================'), nl,
    write('              ESPECIE IDENTIFICADA                    '), nl,
    write('======================================================'), nl,
    write('  Animal: '), write(Animal), nl, nl,
    write('  Clasificacion taxonomica:'), nl,
    obtener_taxonomia(Animal, Linea),
    imprimir_linea(Linea),nl,
    write('  Consumibles:'), nl,
    consumible(Animal, carne,    VC), write('    Carne consumible    : '), write(VC), nl,
    consumible(Animal, derivados, VD), write('    Derivados consumibles: '), write(VD), nl,
    consumible(Animal, piel,     VP), write('    Piel consumible     : '), write(VP), nl,
    write('======================================================'), nl.

imprimir_linea([]).
imprimir_linea([X | Xs]) :-
    (nombre_taxonomico(X, N) -> write('    -> '), write(N)
    ; write('    -> '), write(X)),
    nl,
    imprimir_linea(Xs).
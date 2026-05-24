% ======================================================
% ARCHIVO: reglas_taxonomicas.pl
% Consultas taxonomicas directas
% ======================================================

% ============================================================
% 1. VERIFICAR PERTENENCIA A UN NIVEL TAXONOMICO
% Uso: ?- pertenece(conejo, mammalia).
% ============================================================

pertenece(Animal, Taxon) :-
    padre_taxonomico(Animal, Taxon).

pertenece(Animal, Taxon) :-
    padre_taxonomico(Animal, Intermedio),
    pertenece(Intermedio, Taxon).

% ============================================================
% 2. LISTAR ESPECIES DENTRO DE UNA CATEGORIA
% Uso: ?- listar_todas(aves).
% Uso: ?- listar_todas(mammalia).
% ============================================================

listar_especies(Categoria, Animal) :-
    es_especie(Animal),
    pertenece(Animal, Categoria).

listar_todas(Categoria) :-
    nl,
    write('Especies en la categoria: '), write(Categoria), nl,
    write('--------------------------------------'), nl,
    forall(
        listar_especies(Categoria, Animal),
        (nombre_taxonomico(Animal, N), write('  - '), write(N), nl)
    ),
    write('--------------------------------------'), nl.

% ============================================================
% 3. EXPLORAR JERARQUIA COMPLETA DE UNA ESPECIE
% Uso: ?- jerarquia(sapo).
% Uso: ?- jerarquia(conejo).
% ============================================================

jerarquia(Animal) :-
    (es_especie(Animal) ->
        nl,
        write('======================================================'), nl,
        write('  Jerarquia taxonomica de: '), write(Animal), nl,
        write('======================================================'), nl,
        obtener_taxonomia(Animal, Linea),
        imprimir_linea(Linea),
        write('======================================================'), nl
    ;
        write('No se encontro la especie: '), write(Animal), nl,
        write('Verifica que el nombre este en minusculas y sin tildes.'), nl
    ).

% ============================================================
% 4. CONSULTAR A QUE CATEGORIA PERTENECE UNA ESPECIE
% Uso: ?- categoria(conejo, X).
% ============================================================

categoria(Animal, 'Mammalia  (Mamifero)')  :- pertenece(Animal, mammalia).
categoria(Animal, 'Aves      (Ave)')       :- pertenece(Animal, aves).
categoria(Animal, 'Amphibia  (Anfibio)')   :- pertenece(Animal, amphibia).
categoria(Animal, 'Reptilia  (Reptil)')    :- pertenece(Animal, reptilia).
categoria(Animal, 'Insecta   (Insecto)')   :- pertenece(Animal, insecta).
categoria(Animal, 'Mollusca  (Molusco)')   :- pertenece(Animal, mollusca).

% ============================================================
% 5. LISTAR NOMBRES COMUNES POR CATEGORIA
% Uso: ?- nombres_comunes.
% ============================================================

es_especie(jabali).
es_especie(cabra).
es_especie(oveja).
es_especie(conejo).
es_especie(cuy).
es_especie(gato).
es_especie(hipopotamo).
es_especie(avestruz).
es_especie(gallina).
es_especie(pavo).
es_especie(pato).
es_especie(paloma).
es_especie(loro).
es_especie(rana).
es_especie(sapo).
es_especie(ajolote).
es_especie(serpiente).
es_especie(tortuga).
es_especie(iguana).
es_especie(lagarto).
es_especie(caracol).
es_especie(pulpo).
es_especie(almeja).
es_especie(calamar).
es_especie(abeja).
es_especie(mariposa).
es_especie(hormiga).

todos :-
    nl,
    write('======================================================'), nl,
    write('                  TOODOS LOS ANIMALES                 '), nl,
    write('======================================================'), nl,
    nl,
    forall(
        member(Cat, [mammalia, aves, amphibia, reptilia, insecta, mollusca]),
        (
            write('  '), write(Cat), write(':'), nl,
            forall(
                listar_especies(Cat, Animal),
                (write('    - '), write(Animal), nl)
            ),
            nl
        )
    ),
    write('======================================================'), nl.

% ============================================================
% 6. MOSTRAR TODA LA INFO DE UN ANIMAL POR NOMBRE COMUN
% Uso: ?- info(conejo).
% Uso: ?- info(abeja).
% ============================================================

info(Animal) :-
    (es_especie(Animal) ->
        nl,
        write('======================================================'), nl,
        write('  Informacion completa de: '), write(Animal), nl,
        write('======================================================'), nl,
        nl,
        nombre_taxonomico(Animal, NombreEsp),
        write('  Nombre cientifico : '), write(NombreEsp), nl,
        categoria(Animal, Cat),
        write('  Categoria         : '), write(Cat), nl,
        nl,
        write('  Clasificacion taxonomica completa:'), nl,
        obtener_taxonomia(Animal, Linea),
        imprimir_linea(Linea),
        write('======================================================'), nl
    ;
        nl,
        write('Animal no encontrado: '), write(Animal), nl,
        write('Usa ?- nombres_comunes. para ver los disponibles.'), nl
    ).

% ============================================================
% MENU DE CONSULTAS TAXONOMICAS
% Uso: ?- menu_taxonomico.
% ============================================================

help :-
    nl,
    write('======================================================'), nl,
    write('          CONSULTAS TAXONOMICAS DISPONIBLES           '), nl,
    write('======================================================'), nl,
    nl,
    write('  1. Verificar si un animal pertenece a una categoria'), nl,
    write('     Uso: ?- pertenece(conejo, mammalia).'), nl,
    nl,
    write('  2. Listar todas las especies de una categoria'), nl,
    write('     Uso: ?- listar_todas(aves).'), nl,
    write('     Categorias: mammalia, aves, amphibia,'), nl,
    write('                 reptilia, insecta, mollusca'), nl,
    nl,
    write('  3. Ver jerarquia taxonomica completa de un animal'), nl,
    write('     Uso: ?- jerarquia(sapo).'), nl,
    nl,
    write('  4. Consultar a que categoria pertenece un animal'), nl,
    write('     Uso: ?- categoria(pulpo, X).'), nl,
    nl,
    write('  5. Ver los nombres comunes de los animales disponibles'), nl,
    write('     Uso: ?- todos.'), nl,
    nl,
    write('  6. Ver informacion completa de un animal'), nl,
    write('     Uso: ?- info(conejo).'), nl,
    nl,
    write('------------------------------------------------------'), nl,
    write('  Para iniciar el sistema experto (akinator):'), nl,
    write('     Uso: ?- iniciar.'), nl,
    write('======================================================'), nl.
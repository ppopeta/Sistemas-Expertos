% ============================================================
%  SISTEMA EXPERTO - IDENTIFICACION DE ESPECIES MENORES
%  Compatible con SWI-Prolog y Strawberry Prolog
%
%  Para ejecutar en SWI-Prolog:
%    ?- iniciar.
%
%  Para ejecutar en Strawberry Prolog:
%    Cargar el archivo y consultar:  iniciar.
% ============================================================


% ============================================================
%  BASE DE HECHOS DINAMICOS
%  Almacena las respuestas del usuario durante la sesion
% ============================================================

:- dynamic tiene/2.


% ============================================================
%  HECHOS TAXONOMICOS
%  padre_taxonomico(Hijo, Padre)
% ============================================================

% CABRA
padre_taxonomico(cabra_domestica,  capra).
padre_taxonomico(capra,            bovidae).
padre_taxonomico(bovidae,          artiodactyla).
padre_taxonomico(artiodactyla,     mammalia).
padre_taxonomico(mammalia,         chordata).
padre_taxonomico(chordata,         animalia).

% CERDO
padre_taxonomico(cerdo_domestico,  sus).
padre_taxonomico(sus,              suidae).
padre_taxonomico(suidae,           artiodactyla).

% CONEJO
padre_taxonomico(conejo_europeo,   oryctolagus).
padre_taxonomico(oryctolagus,      leporidae).
padre_taxonomico(leporidae,        lagomorpha).
padre_taxonomico(lagomorpha,       mammalia).

% CUY
padre_taxonomico(cuy,              cavia).
padre_taxonomico(cavia,            caviidae).
padre_taxonomico(caviidae,         rodentia).
padre_taxonomico(rodentia,         mammalia).

% OVEJA
padre_taxonomico(oveja_domestica,  ovis).
padre_taxonomico(ovis,             bovidae).

% GATO
padre_taxonomico(gato_domestico,   felis).
padre_taxonomico(felis,            felidae).
padre_taxonomico(felidae,          carnivora).
padre_taxonomico(carnivora,        mammalia).

% AVESTRUZ
padre_taxonomico(avestruz,         struthio).
padre_taxonomico(struthio,         struthionidae).
padre_taxonomico(struthionidae,    struthioniformes).
padre_taxonomico(struthioniformes, aves).
padre_taxonomico(aves,             chordata).

% GALLINA
padre_taxonomico(gallina_domestica, gallus).
padre_taxonomico(gallus,            phasianidae).
padre_taxonomico(phasianidae,       galliformes).
padre_taxonomico(galliformes,       aves).

% PATO
padre_taxonomico(pato,             anas).
padre_taxonomico(anas,             anatidae).
padre_taxonomico(anatidae,         anseriformes).
padre_taxonomico(anseriformes,     aves).

% PAVO
padre_taxonomico(pavo,             meleagris).
padre_taxonomico(meleagris,        phasianidae).

% LORO
padre_taxonomico(loro,             amazona).
padre_taxonomico(amazona,          psittacidae).
padre_taxonomico(psittacidae,      psittaciformes).
padre_taxonomico(psittaciformes,   aves).

% PALOMA
padre_taxonomico(paloma,           columba).
padre_taxonomico(columba,          columbidae).
padre_taxonomico(columbidae,       columbiformes).
padre_taxonomico(columbiformes,    aves).

% RANA
padre_taxonomico(rana,             ranidae).
padre_taxonomico(ranidae,          anura).
padre_taxonomico(anura,            amphibia).
padre_taxonomico(amphibia,         chordata).

% SAPO
padre_taxonomico(sapo,             bufonidae).
padre_taxonomico(bufonidae,        anura).

% AJOLOTE
padre_taxonomico(ajolote,          ambystoma).
padre_taxonomico(ambystoma,        ambystomatidae).
padre_taxonomico(ambystomatidae,   caudata).
padre_taxonomico(caudata,          amphibia).

% ANACONDA
padre_taxonomico(anaconda,         eunectes).
padre_taxonomico(eunectes,         boidae).
padre_taxonomico(boidae,           squamata).
padre_taxonomico(squamata,         reptilia).
padre_taxonomico(reptilia,         chordata).

% TORTUGA
padre_taxonomico(tortuga,          testudines).
padre_taxonomico(testudines,       reptilia).

% IGUANA
padre_taxonomico(iguana,           iguanidae).
padre_taxonomico(iguanidae,        squamata).

% LAGARTIJA
padre_taxonomico(lagartija,        lacertidae).
padre_taxonomico(lacertidae,       squamata).

% CARACOL
padre_taxonomico(caracol,          gastropoda).
padre_taxonomico(gastropoda,       mollusca).
padre_taxonomico(mollusca,         animalia).

% PULPO
padre_taxonomico(pulpo,            octopoda).
padre_taxonomico(octopoda,         cephalopoda).
padre_taxonomico(cephalopoda,      mollusca).

% ALMEJA
padre_taxonomico(almeja,           bivalvia).
padre_taxonomico(bivalvia,         mollusca).

% CALAMAR
padre_taxonomico(calamar,          teuthida).
padre_taxonomico(teuthida,         cephalopoda).

% ABEJA
padre_taxonomico(abeja,            apidae).
padre_taxonomico(apidae,           hymenoptera).
padre_taxonomico(hymenoptera,      insecta).
padre_taxonomico(insecta,          arthropoda).
padre_taxonomico(arthropoda,       animalia).

% MARIPOSA
padre_taxonomico(mariposa,         lepidoptera).
padre_taxonomico(lepidoptera,      insecta).

% HORMIGA
padre_taxonomico(hormiga,          formicidae).
padre_taxonomico(formicidae,       hymenoptera).


% ============================================================
%  MAPEO: nombre comun -> especie (nodo hoja taxonomico)
% ============================================================

especie_base(cabra,     cabra_domestica).
especie_base(cerdo,     cerdo_domestico).
especie_base(conejo,    conejo_europeo).
especie_base(cuy,       cuy).
especie_base(oveja,     oveja_domestica).
especie_base(gato,      gato_domestico).
especie_base(avestruz,  avestruz).
especie_base(gallina,   gallina_domestica).
especie_base(pato,      pato).
especie_base(pavo,      pavo).
especie_base(loro,      loro).
especie_base(paloma,    paloma).
especie_base(rana,      rana).
especie_base(sapo,      sapo).
especie_base(ajolote,   ajolote).
especie_base(anaconda,  anaconda).
especie_base(tortuga,   tortuga).
especie_base(iguana,    iguana).
especie_base(lagartija, lagartija).
especie_base(caracol,   caracol).
especie_base(pulpo,     pulpo).
especie_base(almeja,    almeja).
especie_base(calamar,   calamar).
especie_base(abeja,     abeja).
especie_base(mariposa,  mariposa).
especie_base(hormiga,   hormiga).


% ============================================================
%  NOMBRE CIENTIFICO DE ESPECIE
% ============================================================

nombre_cientifico(cabra,     'Capra aegagrus hircus').
nombre_cientifico(cerdo,     'Sus scrofa domesticus').
nombre_cientifico(conejo,    'Oryctolagus cuniculus').
nombre_cientifico(cuy,       'Cavia porcellus').
nombre_cientifico(oveja,     'Ovis aries').
nombre_cientifico(gato,      'Felis catus').
nombre_cientifico(avestruz,  'Struthio camelus').
nombre_cientifico(gallina,   'Gallus gallus domesticus').
nombre_cientifico(pato,      'Anas platyrhynchos').
nombre_cientifico(pavo,      'Meleagris gallopavo').
nombre_cientifico(loro,      'Amazona sp.').
nombre_cientifico(paloma,    'Columba livia').
nombre_cientifico(rana,      'Rana temporaria').
nombre_cientifico(sapo,      'Bufo bufo').
nombre_cientifico(ajolote,   'Ambystoma mexicanum').
nombre_cientifico(anaconda,  'Eunectes murinus').
nombre_cientifico(tortuga,   'Testudo graeca').
nombre_cientifico(iguana,    'Iguana iguana').
nombre_cientifico(lagartija, 'Lacerta agilis').
nombre_cientifico(caracol,   'Helix aspersa').
nombre_cientifico(pulpo,     'Octopus vulgaris').
nombre_cientifico(almeja,    'Venerupis decussata').
nombre_cientifico(calamar,   'Loligo vulgaris').
nombre_cientifico(abeja,     'Apis mellifera').
nombre_cientifico(mariposa,  'Lepidoptera sp.').
nombre_cientifico(hormiga,   'Formica sp.').


% ============================================================
%  REGLAS DE IDENTIFICACION
%  tiene/2 se consulta dinamicamente (respuestas del usuario)
% ============================================================

% --- MAMIFEROS ---

identificar(cabra) :-
    tiene(columna,      si),
    tiene(piel,         pelaje),
    tiene(tamano,       grande),
    tiene(cuernos,      si).

identificar(oveja) :-
    tiene(columna,      si),
    tiene(piel,         pelaje),
    tiene(tamano,       grande),
    tiene(cuernos,      no).

identificar(cerdo) :-
    tiene(columna,      si),
    tiene(piel,         pelaje),
    tiene(tamano,       mediano).

identificar(conejo) :-
    tiene(columna,      si),
    tiene(piel,         pelaje),
    tiene(tamano,       pequeno),
    tiene(roedor,       si),
    tiene(orejas_largas, si).

identificar(cuy) :-
    tiene(columna,      si),
    tiene(piel,         pelaje),
    tiene(tamano,       pequeno),
    tiene(roedor,       si),
    tiene(orejas_largas, no).

identificar(gato) :-
    tiene(columna,      si),
    tiene(piel,         pelaje),
    tiene(tamano,       pequeno),
    tiene(roedor,       no).

% --- AVES ---

identificar(avestruz) :-
    tiene(columna,      si),
    tiene(piel,         plumaje),
    tiene(tamano,       grande).

identificar(gallina) :-
    tiene(columna,      si),
    tiene(piel,         plumaje),
    tiene(tamano,       mediano),
    tiene(vuela_alto,   no),
    tiene(plumaje_exotico, no).

identificar(pavo) :-
    tiene(columna,      si),
    tiene(piel,         plumaje),
    tiene(tamano,       mediano),
    tiene(vuela_alto,   no),
    tiene(plumaje_exotico, si).

identificar(paloma) :-
    tiene(columna,      si),
    tiene(piel,         plumaje),
    tiene(tamano,       mediano),
    tiene(vuela_alto,   si),
    tiene(ciudad,       si).

identificar(loro) :-
    tiene(columna,      si),
    tiene(piel,         plumaje),
    tiene(tamano,       mediano),
    tiene(vuela_alto,   si),
    tiene(ciudad,       no),
    tiene(habla,        si).

identificar(pato) :-
    tiene(columna,      si),
    tiene(piel,         plumaje),
    tiene(tamano,       mediano),
    tiene(vuela_alto,   si),
    tiene(ciudad,       no),
    tiene(habla,        no).

% --- ANFIBIOS ---

identificar(ajolote) :-
    tiene(columna,      si),
    tiene(piel,         humeda),
    tiene(tamano,       mediano).

identificar(rana) :-
    tiene(columna,      si),
    tiene(piel,         humeda),
    tiene(tamano,       pequeno),
    tiene(veneno,       si).

identificar(sapo) :-
    tiene(columna,      si),
    tiene(piel,         humeda),
    tiene(tamano,       pequeno),
    tiene(veneno,       no).

% --- REPTILES ---

identificar(anaconda) :-
    tiene(columna,      si),
    tiene(piel,         escamas),
    tiene(tamano,       grande).

identificar(tortuga) :-
    tiene(columna,      si),
    tiene(piel,         escamas),
    tiene(tamano,       mediano),
    tiene(caparazon,    si).

identificar(iguana) :-
    tiene(columna,      si),
    tiene(piel,         escamas),
    tiene(tamano,       mediano),
    tiene(caparazon,    no).

identificar(lagartija) :-
    tiene(columna,      si),
    tiene(piel,         escamas),
    tiene(tamano,       pequeno).

% --- MOLUSCOS ---

identificar(caracol) :-
    tiene(columna,      no),
    tiene(agua,         no),
    tiene(insecto,      no).

identificar(almeja) :-
    tiene(columna,      no),
    tiene(agua,         si),
    tiene(nada,         no).

identificar(pulpo) :-
    tiene(columna,      no),
    tiene(agua,         si),
    tiene(nada,         si),
    tiene(ocho_patas,   si).

identificar(calamar) :-
    tiene(columna,      no),
    tiene(agua,         si),
    tiene(nada,         si),
    tiene(ocho_patas,   no).

% --- INSECTOS ---

identificar(hormiga) :-
    tiene(columna,      no),
    tiene(agua,         no),
    tiene(insecto,      si),
    tiene(vuela,        no).

identificar(abeja) :-
    tiene(columna,      no),
    tiene(agua,         no),
    tiene(insecto,      si),
    tiene(vuela,        si),
    tiene(miel,         si).

identificar(mariposa) :-
    tiene(columna,      no),
    tiene(agua,         no),
    tiene(insecto,      si),
    tiene(vuela,        si),
    tiene(miel,         no).


% ============================================================
%  INFERENCIA TAXONOMICA
%  Construye la cadena completa desde especie hasta reino
% ============================================================

taxonomia_completa(Animal, Cadena) :-
    especie_base(Animal, Especie),
    construir_cadena(Especie, [Especie], Cadena).

construir_cadena(Nodo, Acum, Cadena) :-
    padre_taxonomico(Nodo, Padre),
    !,
    construir_cadena(Padre, [Padre | Acum], Cadena).
construir_cadena(_, Acum, Cadena) :-
    reverse(Acum, Cadena).


% ============================================================
%  MOTOR DE PREGUNTAS
%  preguntar/2: consulta al usuario si aun no tiene respuesta
% ============================================================

preguntar(Atributo, Valor) :-
    tiene(Atributo, Valor),
    !.

preguntar(Atributo, Valor) :-
    \+ tiene(Atributo, _),
    texto_pregunta(Atributo, Texto),
    opciones_validas(Atributo, Opciones),
    hacer_pregunta(Texto, Opciones, RespuestaAtomo),
    assertz(tiene(Atributo, RespuestaAtomo)),
    tiene(Atributo, Valor).


% ============================================================
%  PREGUNTAS Y OPCIONES
% ============================================================

texto_pregunta(columna,
    'Tiene columna vertebral (vertebrado)?  [si/no]').
texto_pregunta(tamano,
    'De que tamano es tu animal?  [pequeno/mediano/grande]').
texto_pregunta(piel,
    'Que tipo de piel tiene tu animal?  [pelaje/plumaje/humeda/escamas]').
texto_pregunta(cuernos,
    'Tiene cuernos?  [si/no]').
texto_pregunta(roedor,
    'Es un roedor (dientes incisivos prominentes)?  [si/no]').
texto_pregunta(orejas_largas,
    'Tiene orejas largas?  [si/no]').
texto_pregunta(vuela_alto,
    'Vuela alto con facilidad?  [si/no]').
texto_pregunta(ciudad,
    'Es un ave tipica de ciudad (plazas, tejados)?  [si/no]').
texto_pregunta(habla,
    'Puede imitar palabras humanas?  [si/no]').
texto_pregunta(plumaje_exotico,
    'Tiene plumaje muy llamativo o colorido?  [si/no]').
texto_pregunta(veneno,
    'Produce toxinas o veneno en la piel?  [si/no]').
texto_pregunta(caparazon,
    'Tiene caparazon?  [si/no]').
texto_pregunta(agua,
    'Vive o se encuentra usualmente en el agua?  [si/no]').
texto_pregunta(insecto,
    'Es un insecto (6 patas, cuerpo segmentado en 3 partes)?  [si/no]').
texto_pregunta(vuela,
    'Puede volar?  [si/no]').
texto_pregunta(miel,
    'Produce miel?  [si/no]').
texto_pregunta(nada,
    'Puede nadar activamente (se mueve en el agua)?  [si/no]').
texto_pregunta(ocho_patas,
    'Tiene exactamente ocho extremidades (8 patas)?  [si/no]').

opciones_validas(columna,        [si, no]).
opciones_validas(tamano,         [pequeno, mediano, grande]).
opciones_validas(piel,           [pelaje, plumaje, humeda, escamas]).
opciones_validas(cuernos,        [si, no]).
opciones_validas(roedor,         [si, no]).
opciones_validas(orejas_largas,  [si, no]).
opciones_validas(vuela_alto,     [si, no]).
opciones_validas(ciudad,         [si, no]).
opciones_validas(habla,          [si, no]).
opciones_validas(plumaje_exotico,[si, no]).
opciones_validas(veneno,         [si, no]).
opciones_validas(caparazon,      [si, no]).
opciones_validas(agua,           [si, no]).
opciones_validas(insecto,        [si, no]).
opciones_validas(vuela,          [si, no]).
opciones_validas(miel,           [si, no]).
opciones_validas(nada,           [si, no]).
opciones_validas(ocho_patas,     [si, no]).


% ============================================================
%  LECTURA DE RESPUESTA CON VALIDACION
% ============================================================

hacer_pregunta(Texto, Opciones, Respuesta) :-
    nl,
    write('  >>> '), write(Texto), nl,
    write('      Respuesta: '),
    read(RespuestaRaw),
    (   member(RespuestaRaw, Opciones)
    ->  Respuesta = RespuestaRaw
    ;   write('  [!] Opcion invalida. Intente de nuevo.'), nl,
        hacer_pregunta(Texto, Opciones, Respuesta)
    ).


% ============================================================
%  PRESENTACION DEL RESULTADO TAXONOMICO
% ============================================================

mostrar_resultado(Animal) :-
    nombre_cientifico(Animal, Cientifico),
    taxonomia_completa(Animal, Cadena),
    nl,
    separador,
    write('  RESULTADO: '), write(Animal), nl,
    write('  Nombre cientifico: '), write(Cientifico), nl,
    separador,
    write('  JERARQUIA TAXONOMICA COMPLETA:'), nl,
    nl,
    mostrar_cadena(Cadena),
    separador,
    nl.

mostrar_cadena([]) :- !.
mostrar_cadena([Nodo | Resto]) :-
    etiqueta_nivel(Nodo, Etiqueta),
    format('    ~w: ~w~n', [Etiqueta, Nodo]),
    mostrar_cadena(Resto).

etiqueta_nivel(Nodo, 'Especie  ') :-
    especie_base(_, Nodo), !.
etiqueta_nivel(animalia,   'Reino    ') :- !.
etiqueta_nivel(chordata,   'Filo     ') :- !.
etiqueta_nivel(arthropoda, 'Filo     ') :- !.
etiqueta_nivel(mollusca,   'Filo     ') :- !.
etiqueta_nivel(mammalia,   'Clase    ') :- !.
etiqueta_nivel(aves,       'Clase    ') :- !.
etiqueta_nivel(amphibia,   'Clase    ') :- !.
etiqueta_nivel(reptilia,   'Clase    ') :- !.
etiqueta_nivel(insecta,    'Clase    ') :- !.
etiqueta_nivel(cephalopoda,'Clase    ') :- !.
etiqueta_nivel(gastropoda, 'Clase    ') :- !.
etiqueta_nivel(bivalvia,   'Clase    ') :- !.
etiqueta_nivel(mammalia,   'Clase    ') :- !.
etiqueta_nivel(Nodo,       'Orden    ') :-
    miembro_orden(Nodo), !.
etiqueta_nivel(Nodo,       'Familia  ') :-
    miembro_familia(Nodo), !.
etiqueta_nivel(Nodo,       'Genero   ') :-
    miembro_genero(Nodo), !.
etiqueta_nivel(_,          'Taxon    ').

miembro_orden(artiodactyla).
miembro_orden(lagomorpha).
miembro_orden(rodentia).
miembro_orden(carnivora).
miembro_orden(struthioniformes).
miembro_orden(galliformes).
miembro_orden(anseriformes).
miembro_orden(columbiformes).
miembro_orden(psittaciformes).
miembro_orden(anura).
miembro_orden(caudata).
miembro_orden(squamata).
miembro_orden(testudines).
miembro_orden(hymenoptera).
miembro_orden(lepidoptera).
miembro_orden(octopoda).
miembro_orden(teuthida).
miembro_orden(stylommatophora).

miembro_familia(bovidae).
miembro_familia(suidae).
miembro_familia(leporidae).
miembro_familia(caviidae).
miembro_familia(felidae).
miembro_familia(struthionidae).
miembro_familia(phasianidae).
miembro_familia(anatidae).
miembro_familia(columbidae).
miembro_familia(psittacidae).
miembro_familia(ranidae).
miembro_familia(bufonidae).
miembro_familia(ambystomatidae).
miembro_familia(boidae).
miembro_familia(iguanidae).
miembro_familia(lacertidae).
miembro_familia(helicidae).
miembro_familia(octopodidae).
miembro_familia(loliginidae).
miembro_familia(apidae).
miembro_familia(formicidae).

miembro_genero(capra).
miembro_genero(sus).
miembro_genero(oryctolagus).
miembro_genero(cavia).
miembro_genero(ovis).
miembro_genero(felis).
miembro_genero(struthio).
miembro_genero(gallus).
miembro_genero(anas).
miembro_genero(meleagris).
miembro_genero(amazona).
miembro_genero(columba).
miembro_genero(ambystoma).
miembro_genero(eunectes).
miembro_genero(iguana).
miembro_genero(lacerta).
miembro_genero(helix).
miembro_genero(octopus).
miembro_genero(loligo).
miembro_genero(apis).
miembro_genero(formica).


% ============================================================
%  SEPARADOR VISUAL
% ============================================================

separador :-
    write('  --------------------------------------------------'), nl.


% ============================================================
%  MOTOR PRINCIPAL DE INFERENCIA
% ============================================================

diagnosticar :-
    identificar(Animal),
    !,
    mostrar_resultado(Animal).

diagnosticar :-
    nl,
    write('  [!] No fue posible identificar el animal con las'), nl,
    write('      respuestas proporcionadas.'), nl,
    write('      Verifique que las respuestas sean correctas.'), nl,
    nl.


% ============================================================
%  PUNTO DE ENTRADA PRINCIPAL
% ============================================================

iniciar :-
    nl,
    separador,
    write('  SISTEMA EXPERTO - IDENTIFICACION DE ESPECIES MENORES'), nl,
    separador,
    write('  Responda cada pregunta con el valor exacto indicado.'), nl,
    write('  Recuerde escribir un punto (.) al final de cada respuesta.'), nl,
    separador,
    nl,
    retractall(tiene(_, _)),
    diagnosticar,
    nl,
    write('  Desea identificar otro animal? [si/no]: '),
    read(Otra),
    (   Otra == si
    ->  iniciar
    ;   nl, write('  Fin del sistema experto. Hasta luego.'), nl, nl
    ).


% ============================================================
%  PREDICADOS DE CONSULTA ADICIONALES
% ============================================================

% Muestra todos los ancestros taxonomicos de un taxon dado
% Uso: ancestros(gallus).
ancestros(Taxon) :-
    nl, write('Ancestros de '), write(Taxon), write(':'), nl,
    mostrar_ancestros(Taxon).

mostrar_ancestros(animalia) :- !,
    write('  -> animalia (raiz)'), nl.
mostrar_ancestros(Taxon) :-
    padre_taxonomico(Taxon, Padre),
    write('  -> '), write(Padre), nl,
    mostrar_ancestros(Padre).

% Lista todos los animales de una clase
% Uso: listar_clase(mammalia).
listar_clase(Clase) :-
    nl, write('Animales en la clase '), write(Clase), write(':'), nl,
    forall(
        ( especie_base(Animal, Especie),
          ancestro(Especie, Clase) ),
        ( write('  - '), write(Animal), nl )
    ).

ancestro(Nodo, Ancestro) :-
    padre_taxonomico(Nodo, Padre),
    (   Padre == Ancestro
    ;   ancestro(Padre, Ancestro)
    ).

% Verifica si un animal pertenece a un taxon
% Uso: pertenece(loro, psittaciformes).
pertenece(Animal, Taxon) :-
    especie_base(Animal, Especie),
    (   Especie == Taxon
    ;   ancestro(Especie, Taxon)
    ),
    write(Animal), write(' pertenece a '), write(Taxon), write('.'), nl.

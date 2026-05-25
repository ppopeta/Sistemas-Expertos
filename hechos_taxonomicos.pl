% ======================================================
% ARCHIVO: hechos_taxonomicos.pl
% ======================================================

% ============================================================
% NODOS COMPARTIDOS
% ============================================================

padre_taxonomico(mammalia,      chordata).
padre_taxonomico(chordata,      animalia).
padre_taxonomico(aves,          chordata).
padre_taxonomico(amphibia,      chordata).
padre_taxonomico(reptilia,      chordata).
padre_taxonomico(mollusca,      animalia).
padre_taxonomico(arthropoda,    animalia).
padre_taxonomico(insecta,       arthropoda).

padre_taxonomico(artiodactyla,    mammalia).
padre_taxonomico(carnivora,       mammalia).
padre_taxonomico(lagomorpha,      mammalia).
padre_taxonomico(rodentia,        mammalia).
padre_taxonomico(galliformes,     aves).
padre_taxonomico(anseriformes,    aves).
padre_taxonomico(columbiformes,   aves).
padre_taxonomico(psittaciformes,  aves).
padre_taxonomico(struthioniformes,aves).
padre_taxonomico(anura,           amphibia).
padre_taxonomico(caudata,         amphibia).
padre_taxonomico(squamata,        reptilia).

padre_taxonomico(suidae,          artiodactyla).
padre_taxonomico(bovidae,         artiodactyla).
padre_taxonomico(hippopotamidae,  artiodactyla).
padre_taxonomico(felidae,         carnivora).
padre_taxonomico(phasianidae,     galliformes).
padre_taxonomico(anatidae,        anseriformes).
padre_taxonomico(hymenoptera,     insecta).
padre_taxonomico(cephalopoda,     mollusca).

% ============================================================
% MAMÍFEROS
% ============================================================

padre_taxonomico(jabali,       sus).
padre_taxonomico(sus,          suidae).

padre_taxonomico(cabra,        capra).
padre_taxonomico(capra,        bovidae).

padre_taxonomico(oveja,        ovis).
padre_taxonomico(ovis,         bovidae).

padre_taxonomico(conejo,       oryctolagus).
padre_taxonomico(oryctolagus,  leporidae).
padre_taxonomico(leporidae,    lagomorpha).

padre_taxonomico(cuy,          cavia).
padre_taxonomico(cavia,        caviidae).
padre_taxonomico(caviidae,     rodentia).

padre_taxonomico(gato,         felis).
padre_taxonomico(felis,        felidae).

padre_taxonomico(hipopotamo,   hippopotamus).
padre_taxonomico(hippopotamus, hippopotamidae).

% ============================================================
% AVES
% ============================================================

padre_taxonomico(avestruz,      struthio).
padre_taxonomico(struthio,      struthionidae).
padre_taxonomico(struthionidae, struthioniformes).

padre_taxonomico(gallina,       gallus).
padre_taxonomico(gallus,        phasianidae).

padre_taxonomico(pavo,          meleagris).
padre_taxonomico(meleagris,     phasianidae).

padre_taxonomico(pato,          anas).
padre_taxonomico(anas,          anatidae).

padre_taxonomico(paloma,        columba).
padre_taxonomico(columba,       columbidae).
padre_taxonomico(columbidae,    columbiformes).

padre_taxonomico(loro,          amazona).
padre_taxonomico(amazona,       psittacidae).
padre_taxonomico(psittacidae,   psittaciformes).

% ============================================================
% ANFIBIOS
% ============================================================

padre_taxonomico(rana,           ranidae).
padre_taxonomico(ranidae,        anura).

padre_taxonomico(sapo,           bufonidae).
padre_taxonomico(bufonidae,      anura).

padre_taxonomico(ajolote,        ambystoma).
padre_taxonomico(ambystoma,      ambystomatidae).
padre_taxonomico(ambystomatidae, caudata).

% ============================================================
% REPTILES
% ============================================================

padre_taxonomico(serpiente,  serpentes).
padre_taxonomico(serpentes,  squamata).

padre_taxonomico(tortuga,    testudines).
padre_taxonomico(testudines, reptilia).

padre_taxonomico(iguana,     iguanidae).
padre_taxonomico(iguanidae,  squamata).

padre_taxonomico(lagarto,    lacertidae).
padre_taxonomico(lacertidae, squamata).

% ============================================================
% MOLUSCOS
% ============================================================

padre_taxonomico(caracol,   gastropoda).
padre_taxonomico(gastropoda,mollusca).

padre_taxonomico(pulpo,     octopoda).
padre_taxonomico(octopoda,  cephalopoda).

padre_taxonomico(almeja,    bivalvia).
padre_taxonomico(bivalvia,  mollusca).

padre_taxonomico(calamar,   teuthida).
padre_taxonomico(teuthida,  cephalopoda).

% ============================================================
% INSECTOS
% ============================================================

padre_taxonomico(abeja,      apidae).
padre_taxonomico(apidae,     hymenoptera).

padre_taxonomico(mariposa,   lepidoptera).
padre_taxonomico(lepidoptera,insecta).

padre_taxonomico(hormiga,    formicidae).
padre_taxonomico(formicidae, hymenoptera).

% ============================================================
% NOMBRES LEGIBLES CON NIVEL TAXONÓMICO
% ============================================================

% --- Reinos y Filos ---
nombre_taxonomico(animalia,        'Animalia          (Reino)').
nombre_taxonomico(chordata,        'Chordata          (Filo)').
nombre_taxonomico(arthropoda,      'Arthropoda        (Filo)').
nombre_taxonomico(mollusca,        'Mollusca          (Filo)').

% --- Clases ---
nombre_taxonomico(mammalia,        'Mammalia          (Clase)').
nombre_taxonomico(aves,            'Aves              (Clase)').
nombre_taxonomico(amphibia,        'Amphibia          (Clase)').
nombre_taxonomico(reptilia,        'Reptilia          (Clase)').
nombre_taxonomico(insecta,         'Insecta           (Clase)').

% --- Órdenes ---
nombre_taxonomico(artiodactyla,    'Artiodactyla      (Orden)').
nombre_taxonomico(carnivora,       'Carnivora         (Orden)').
nombre_taxonomico(lagomorpha,      'Lagomorpha        (Orden)').
nombre_taxonomico(rodentia,        'Rodentia          (Orden)').
nombre_taxonomico(galliformes,     'Galliformes       (Orden)').
nombre_taxonomico(anseriformes,    'Anseriformes      (Orden)').
nombre_taxonomico(columbiformes,   'Columbiformes     (Orden)').
nombre_taxonomico(psittaciformes,  'Psittaciformes    (Orden)').
nombre_taxonomico(struthioniformes,'Struthioniformes  (Orden)').
nombre_taxonomico(anura,           'Anura             (Orden)').
nombre_taxonomico(caudata,         'Caudata           (Orden)').
nombre_taxonomico(squamata,        'Squamata          (Orden)').
nombre_taxonomico(hymenoptera,     'Hymenoptera       (Orden)').
nombre_taxonomico(lepidoptera,     'Lepidoptera       (Orden)').

% --- Familias ---
nombre_taxonomico(suidae,          'Suidae            (Familia)').
nombre_taxonomico(bovidae,         'Bovidae           (Familia)').
nombre_taxonomico(hippopotamidae,  'Hippopotamidae    (Familia)').
nombre_taxonomico(felidae,         'Felidae           (Familia)').
nombre_taxonomico(leporidae,       'Leporidae         (Familia)').
nombre_taxonomico(caviidae,        'Caviidae          (Familia)').
nombre_taxonomico(phasianidae,     'Phasianidae       (Familia)').
nombre_taxonomico(anatidae,        'Anatidae          (Familia)').
nombre_taxonomico(columbidae,      'Columbidae        (Familia)').
nombre_taxonomico(psittacidae,     'Psittacidae       (Familia)').
nombre_taxonomico(struthionidae,   'Struthionidae     (Familia)').
nombre_taxonomico(ranidae,         'Ranidae           (Familia)').
nombre_taxonomico(bufonidae,       'Bufonidae         (Familia)').
nombre_taxonomico(ambystomatidae,  'Ambystomatidae    (Familia)').
nombre_taxonomico(serpentes,       'Serpentes         (Familia)').
nombre_taxonomico(testudines,      'Testudines        (Familia)').
nombre_taxonomico(iguanidae,       'Iguanidae         (Familia)').
nombre_taxonomico(lacertidae,      'Lacertidae        (Familia)').
nombre_taxonomico(gastropoda,      'Gastropoda        (Familia)').
nombre_taxonomico(cephalopoda,     'Cephalopoda       (Familia)').
nombre_taxonomico(bivalvia,        'Bivalvia          (Familia)').
nombre_taxonomico(apidae,          'Apidae            (Familia)').
nombre_taxonomico(formicidae,      'Formicidae        (Familia)').

% --- Géneros ---
nombre_taxonomico(sus,             'Sus               (Genero)').
nombre_taxonomico(capra,           'Capra             (Genero)').
nombre_taxonomico(ovis,            'Ovis              (Genero)').
nombre_taxonomico(oryctolagus,     'Oryctolagus       (Genero)').
nombre_taxonomico(cavia,           'Cavia             (Genero)').
nombre_taxonomico(felis,           'Felis             (Genero)').
nombre_taxonomico(hippopotamus,    'Hippopotamus      (Genero)').
nombre_taxonomico(struthio,        'Struthio          (Genero)').
nombre_taxonomico(gallus,          'Gallus            (Genero)').
nombre_taxonomico(meleagris,       'Meleagris         (Genero)').
nombre_taxonomico(anas,            'Anas              (Genero)').
nombre_taxonomico(columba,         'Columba           (Genero)').
nombre_taxonomico(amazona,         'Amazona           (Genero)').
nombre_taxonomico(ambystoma,       'Ambystoma         (Genero)').
nombre_taxonomico(octopoda,        'Octopoda          (Genero)').
nombre_taxonomico(teuthida,        'Teuthida          (Genero)').
nombre_taxonomico(hymenoptera,     'Hymenoptera       (Genero)').

% --- Especies ---
nombre_taxonomico(jabali,          'Sus scrofa                    (Especie)').
nombre_taxonomico(cabra,           'Capra aegagrus hircus         (Especie)').
nombre_taxonomico(oveja,           'Ovis aries                    (Especie)').
nombre_taxonomico(conejo,          'Oryctolagus cuniculus         (Especie)').
nombre_taxonomico(cuy,             'Cavia porcellus               (Especie)').
nombre_taxonomico(gato,            'Felis catus                   (Especie)').
nombre_taxonomico(hipopotamo,      'Hippopotamus amphibius        (Especie)').
nombre_taxonomico(avestruz,        'Struthio camelus              (Especie)').
nombre_taxonomico(gallina,         'Gallus gallus domesticus      (Especie)').
nombre_taxonomico(pavo,            'Meleagris gallopavo           (Especie)').
nombre_taxonomico(pato,            'Anas platyrhynchos            (Especie)').
nombre_taxonomico(paloma,          'Columba livia                 (Especie)').
nombre_taxonomico(loro,            'Amazona sp.                   (Especie)').
nombre_taxonomico(rana,            'Rana temporaria               (Especie)').
nombre_taxonomico(sapo,            'Bufo bufo                     (Especie)').
nombre_taxonomico(ajolote,         'Ambystoma mexicanum           (Especie)').
nombre_taxonomico(serpiente,       'Serpentes sp.                 (Especie)').
nombre_taxonomico(tortuga,         'Testudo graeca                (Especie)').
nombre_taxonomico(iguana,          'Iguana iguana                 (Especie)').
nombre_taxonomico(lagarto,         'Lacerta agilis                (Especie)').
nombre_taxonomico(caracol,         'Helix pomatia                 (Especie)').
nombre_taxonomico(pulpo,           'Octopus vulgaris              (Especie)').
nombre_taxonomico(almeja,          'Ruditapes philippinarum       (Especie)').
nombre_taxonomico(calamar,         'Loligo vulgaris               (Especie)').
nombre_taxonomico(abeja,           'Apis mellifera                (Especie)').
nombre_taxonomico(mariposa,        'Lepidoptera sp.               (Especie)').
nombre_taxonomico(hormiga,         'Formica rufa                  (Especie)').

% ============================================================
% REGLA: obtener cadena taxonómica completa
% ============================================================

obtener_taxonomia(Animal, [Animal | Resto]) :-
    padre_taxonomico(Animal, Padre), !,
    obtener_taxonomia(Padre, Resto).
obtener_taxonomia(Taxon, [Taxon]).
% --- REGLAS LOGICAS DEL MOTOR ---

% Obtiene recursivamente la lista de ancestros
obtener_taxonomia(animalia, [animalia]) :- !.
obtener_taxonomia(Animal, [Animal|Ancestros]) :-
    padre_taxonomico(Animal, Padre),
    obtener_taxonomia(Padre, Ancestros).
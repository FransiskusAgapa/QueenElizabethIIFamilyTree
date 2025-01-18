% To Run: swipl > [main].

% Define the fact
status(frans, billionaire).

% Rules of Queen Elizabeth II

% parents
queen_father(george, father).
queen_mother(elizabeth, mother).

% sibling
queen_sister(margaret, sister).

% grandchildren
queen_1st_son(charles, 1st_son).
queen_daughter(anne, daughter)
queen_2nd_son(andrew, 2nd_son).
queen_3rd_son(edward, 3rd_son).

show_queen_mother :-
    write("> "),
    queen_mother(X, Y),
    write(X),
    write(" is the queen's "),
    write(Y),nl. 

show_queen_father :-
    write("> "),
    queen_father(X,Y),
    write(X),
    write(" is the queen's "),
    write(Y), nl. 

show_queen_sibling :-
    queen_sister(X, Y),
    write("> "),
    write(X),
    write(" is the queen's "),
    write(Y),nl.

% Quiz 
who_is_the_father :-
    show_queen_father.

who_is_the_mother :-
    show_queen_mother.

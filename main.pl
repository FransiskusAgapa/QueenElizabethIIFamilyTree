% To Run: swipl > [main].

% Define the fact
status("Frans", "Billionaire").

% Rules of Queen Elizabeth II

% parents
queen_father("George", "Father").
queen_mother("Elizabeth", "Mother").

% sibling
queen_sister("Margaret", "Sister").

% children
queen_1st_son("Charles", "1st son").
queen_daughter("Anne", "Daughter").
queen_2nd_son("Andrew", "2nd son").
queen_3rd_son("Edward", "3rd son").

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

who_is_1st_son :-
    queen_1st_son(Name,Title),
    write(Name),
    write(" is the "),
    write(Title),nl. 

who_is_2nd_son :-
    queen_2nd_son(Name, Title),
    write(Name),
    write(" is the "),
    write(Title).

who_is_3rd_son :-
    queen_3rd_son(Name,Title),
    write(Name),
    write(" is the "),
    write(Title).

who_is_the_daughter :-
    queen_daughter(Name,Title),
    write(Name),
    write(" is the "),
    write(Title).
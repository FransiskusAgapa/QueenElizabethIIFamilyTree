% Define the fact
status(frans, billionaire).

% Define the predicate to display the status
show_status :-
    status(X, Y),       % Query the fact
    write(X),           % Print the first argument
    write(" is a "),
    write(Y), nl.       % Print the second argument

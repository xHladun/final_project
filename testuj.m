 % Definovanie matic a vektorov pre optimalizacny problem
    constraints_matrix = [1, -1; 2, 1];
    constraints_vector = [1; 2];
    linear_objective = [3; 4];
    
    % Zavolanie funkcie vyries_optimalizaciu
    solution = vyries_optimalizaciu(constraints_matrix, constraints_vector, linear_objective);
    
    % Vypis vysledku
    if solution.problem == 0
        disp('Optimalne riesenie:');
        disp(value(x));
        disp(['Optimalna hodnota: ', num2str(value(linear_objective' * x))]);
    else
        disp('Nepodarilo sa najst optimalne riesenie');
    end
 % Definovanie matic a vektorov pre optimalizacny problem
    constraints_matrix = [1, -1; 2, 1];
    constraints_vector = [1; 2];dd
    constraints_vector1 = [1; 2; 3];
    linear_objective = [3; 4];
   quadratic_objective = [1, -1; 2, 1];
    
    % Zavolanie funkcie vyries_optimalizaciu
    linear_solution = vyries_optimalizaciu(linear_constraints_matrix, linear_constraints_vector, linear_objective, []);
% Zavolanie funkcie vyries_optimalizaciu
    solution1 = vyries_optimalizaciu(constraints_matrix, constraints_vector1, linear_objective);

    % Vypis vysledku
    if solution.problem == 0
        disp('Optimalne riesenie:');
        disp(value(x));
        disp(['Optimalna hodnota: ', num2str(value(linear_objective' * x))]);
    else
        disp('Nepodarilo sa najst optimalne riesenie');
    end
quadratic_solution = vyries_optimalizaciu(quadratic_constraints_matrix, quadratic_constraints_vector, quadratic_linear_objective, quadratic_quadratic_objective);

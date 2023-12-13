unction solution = vyries_optimalizaciu(constraints_matrix, constraints_vector, linear_objective, quadratic_objective)
    % Vyhodnotenie optimalizacneho problemu pomocou YALMIP toolboxu
    
    % Definovanie premennych
    x = sdpvar(size(constraints_matrix, 2), 1);
    
    % Definovanie optimalizacneho problemu
    constraints = constraints_matrix * x <= constraints_vector;
    objective = linear_objective' * x;
    
    % Resenie optimalizacneho problemu
    options = sdpsettings('solver', 'solver_name'); % Nastavte spravny solver
    solution = optimize(constraints, objective, options);
    
    % Overenie, ci bolo riešenie nájdené
    if problem_is_solvable
        disp('Successfully solved.');
    else
        disp('Infeasible problem.');
    end
solver = 'nazov solvera'
end
vyhodnotilkvadratick´y optimalizaˇcn´y probl´em.
function [solution] = vyries_optimalizaciu(constraints_matrix, constraints_vector, linear_objective)
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
    if solution.problem == 0
        disp('Optimalne riesenie najdene');
    else
        disp('Nepodarilo sa najst optimalne riesenie');
    end
end
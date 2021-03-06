% reduce_matrix.m

function [lows, t] = reduce_matrix(D, algorithm)

    % Vanilla algorithm for testing.
    if strcmp(algorithm, 'testing')
        R = D.matrix;
        [lows, t] = std_red_testing(R);
    % Standard algorithm
    elseif strcmp(algorithm, 'std') 
        [lows, t] = std_red(D);
    % Twist algorithm
    elseif strcmp(algorithm, 'twist') 
        [lows, t] = twist_red(D);
    %% Alpha-beta algorithm
    % Standard reduction
    elseif strcmp(algorithm, 'alpha_beta_std') 
        [lows, t] = alpha_beta_std(D);
    % Twist reduction
    elseif strcmp(algorithm, 'alpha_beta_twist') 
        [lows, t] = alpha_beta_twist(D);
    %% Rho-curve algorithm
    % Standard reduction
    elseif strcmp(algorithm, 'rho_std') 
        [lows, t] = rho_std(D);
    %Twist algorithm
    elseif strcmp(algorithm, 'rho_twist') 
        [lows, t] = rho_twist(D);
    % C8 algorithm
    % Standard reduction
    elseif strcmp(algorithm, 'c8_std') 
        [lows, t] = c8_std(D);
    % C8 algorithm
    % Twist reduction
    elseif strcmp(algorithm, 'c8_twist') 
        [lows, t] = c8_twist(D);
    % C8 algorithm
    % Twist reduction
    elseif strcmp(algorithm, 'alpha_beta_parallel')
        [lows, t] = alpha_beta_parallel(D);
    else
        error('Algorithm not identified\n');
    end

end

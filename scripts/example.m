%% Example: evaluate the posterior mean function
%% Start
clear;
addpath './classes';
addpath './functions';


%% Set parameters
% Model
g = @t_distribution; % Must first run `create_tpdf_gradient.m`
beta = [-0.0009, 0.0030, 1.3090]; % Parameters from the PnP piece
std_error = 0.0224;

% Number of points to plot
n_points = 100;


%% Calculate posterior mean
P = @(x) ...
    AB.mean_posterior(x, std_error, beta, g);

delta_hat_grid = linspace(-0.15, 0.15, n_points);
y = P(delta_hat_grid);

plot(delta_hat_grid, y);
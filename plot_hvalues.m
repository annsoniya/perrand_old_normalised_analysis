% Example matrix h
function plot_hvalues(h)

% Determine the size of the matrix
[n, m] = size(h);

% Create a figure
figure;
hold on; % Keeps the plot from being overwritten

% Set the axes limits and ensure grid is displayed
axis([1 m 1 n]);
grid on; % Show grid
set(gca, 'YDir','reverse'); % Reverse the Y-axis direction
xlabel('Column Index');
ylabel('Row Index');
title('Matrix Visualization with "*" for 1s');

% Change grid color and style if needed
ax = gca;
ax.GridColor = [0, 0, 0];  % [R, G, B]
ax.GridLineStyle = '--';

% Iterate over each element in the matrix
for i = 1:n
    for j = 1:m
        if h(i, j) == 1
            % Plot * for each 1, customize 'Color' as needed
            text(j, i, '*', 'HorizontalAlignment', 'center', 'Color', 'r');
        end
    end
end

hold off;
end

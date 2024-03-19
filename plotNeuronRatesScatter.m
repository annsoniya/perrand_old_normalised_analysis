function plotNeuronRatesScatter(dataPeriodic, dataAperiodic)
% Validate input sizes


% Determine the number of neurons (n) and columns (m)
[n, m] = size(dataPeriodic);

% Create a figure to hold the subplots
figure;

% Loop through each column to create a scatter plot
for i = 1:m
    figure;
    
    x = 1:size(dataPeriodic, 1);
    hold on;
    % Plot the periodic data in red
    scatter(x, dataPeriodic(:,i), 'r');
    % Plot the aperiodic data in blue
    scatter(x, dataAperiodic(:,i), 'b');
    hold off;
    title(['Scatter Plot of all neurons Rates of Segment ', num2str(i)]);
    ylabel('Rates');
    xlabel('neurons');
    pause;
    
end

end


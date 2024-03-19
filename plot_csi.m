function plot_csi(matrices)
nRows = 2;
nCols = 2;

figure; % Creates a new figure

for i = 1:length(matrices)
    subplot(nRows, nCols, i); % Selects the appropriate subplot
    
    % Current matrix
    currentMatrix = matrices{i};
    
     % Calculating the mean and SEM across columns (ignoring NaNs) for the current matrix
     columnMeans = nanmean(currentMatrix, 1); % Column-wise mean ignoring NaNs
     columnSEMs = nanstd(currentMatrix, 0, 1) ./ sqrt(sum(~isnan(currentMatrix), 1)); % Standard Error of the Mean ignoring NaNs
     
     % Plotting the mean
     plot(columnMeans, 'LineWidth', 2); % Adjust 'LineWidth' as needed
     
     hold on; % Ensures error bars are plotted on top of the mean plot
     
     % Plotting the error bars
     errorbar(1:length(columnMeans), columnMeans, columnSEMs, 'LineStyle', 'none', 'Color', 'r');
     
    % Aesthetics (Adjust labels as needed)
    xlabel('cummulative segments ');
    ylabel('CSI mean of neurons');
    %title(sprintf('Matrix %d: Row-wise Mean and SEM (ignoring NaN)', i));
    
    hold off; % Prepares for the next subplot
end

% Adjust overall figure properties as needed
end

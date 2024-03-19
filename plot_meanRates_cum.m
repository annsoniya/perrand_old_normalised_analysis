function plot_meanRates_cum(matrices,matrices2)
    nRows = 2;
    nCols = 2;
    
    figure; % Creates a new figure
    
    for i = 1:length(matrices)
        subplot(nRows, nCols, i); % Selects the appropriate subplot
        
        % Current matrix
        currentMatrix = matrices{i};
        currentMatrix2 = matrices2{i};
        columnMeans = nanmean(currentMatrix, 1); % Column-wise mean ignoring NaNs
     columnSEMs = nanstd(currentMatrix, 0, 1) ./ sqrt(sum(~isnan(currentMatrix), 1)); % Standard Error of the Mean ignoring NaNs
      columnMeans2 = nanmean(currentMatrix2, 1); % Column-wise mean ignoring NaNs
        columnSEMs2 = nanstd(currentMatrix2, 0, 1) ./ sqrt(sum(~isnan(currentMatrix2), 1)); % Standard Error of the Mean ignoring NaNs
        
         % Calculating the mean and SEM across columns (ignoring NaNs) for the current matrix

         %specifiy plot colour
             p1 = plot(columnMeans, 'LineWidth', 2, 'Color', 'g', 'DisplayName', 'Periodic'); % Use 'DisplayName' for legend

%          plot(columnMeans, 'LineWidth', 2,'Color','g'); % Adjust 'LineWidth' as needed
         hold on; % Ensures error bars are plotted on top of the mean plot
         errorbar(1:length(columnMeans), columnMeans, columnSEMs, 'LineStyle', 'none', 'Color', 'r');
             p2 = plot(columnMeans2, 'LineWidth', 2, 'Color', 'c', 'DisplayName', 'Aperiodic'); % Use 'DisplayName' for legend

%          plot(columnMeans2, 'LineWidth', 2,'Color','c'); % Adjust 'LineWidth' as needed
        errorbar(1:length(columnMeans2), columnMeans2, columnSEMs2, 'LineStyle', 'none', 'Color', 'r');
        legend('periodic','Aperiodic');
         
         % Plotting the error bars
         
        % Aesthetics (Adjust labels as needed)
        xlabel('cummulative segments ');
        ylabel('mean rates');
        % add legend to the plot
        

        %title(sprintf('Matrix %d: Row-wise Mean and SEM (ignoring NaN)', i));
        
         % Prepares for the next subplot
    end
    
    % Adjust overall figure properties as needed
    end
    

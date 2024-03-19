function plotscatterXvsY(dataPeriodic, dataAperiodic)
    % Convert cell arrays to matrices
    [n, m] = size(dataPeriodic);

    % Create a figure to hold the subplots
   

    % Loop through each column to create a scatter plot
  for i = 1:m
      figure;
    
        
    scatter(dataPeriodic(:,i), dataAperiodic(:,i), 'filled');
    title(['Scatter Plot of all neurons Rates of Segment ', num2str(i)]);  
      xlabel('Periodic Data');
    ylabel('Aperiodic Data');
pause 
    % Add title and labels
    
  end
   
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculate the average mean value for each segment across all neurons(iirespective of significant or not)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function plotAverageMeanOfSegments_allneurons(periodicData, AperiodicData)

figure;
subplot(2,1,1);

averageMeans_per = mean(periodicData, 1);
% Generate segment indices (1 to 13)
segmentIndices = 1:size(averageMeans_per, 2); 
% Plot the average mean values against the segments
plot(segmentIndices, averageMeans_per, '-o', 'LineWidth', 2);
title('Average Mean of PERIODIC Segments Across Neurons');
xlabel('Segment Index');
ylabel('Average Mean Value');
grid on;
% Optionally, customize the plot for better visualization
set(gca, 'XTick', segmentIndices); % Ensure all segments are marked on the x-axis

subplot(2,1,2);
averageMeans_aper = mean(AperiodicData, 1);
plot(segmentIndices, averageMeans_aper, '-o', 'LineWidth', 2);
title('Average Mean of APERIODIC Segments Across Neurons');
xlabel('Segment Index');
ylabel('Average Mean Value');
grid on;
% Optionally, customize the plot for better visualization
set(gca, 'XTick', segmentIndices); % Ensure all segments are marked on the x-axis

    

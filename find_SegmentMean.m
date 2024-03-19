function [seg_mean_per,seg_mean_aper]=find_SegmentMean(data_per,data_aper,segments)
% find the mean of each segment
% data_per: data from the perfect model
% data_aper: data from the aperiodic model
% segments: the segments of the data
%declare the cell array to store the mean of each segment
seg_mean_per = cell(size(data_per, 1),length(segments)-1);
seg_mean_aper = cell(size(data_aper, 1),length(segments)-1);

for rowIndex = 1:size(data_per, 1)
     per= cat(1,data_per{rowIndex,:});
    aper= cat(1,data_aper{rowIndex,:});
    for i = 1:(length(segments)-1)
        
        % Calculate the current range to process
        seg_mean_per{rowIndex,i} = mean((per(:, (segments(i):segments(i+1)-1))),2);
        seg_mean_aper{rowIndex,i} = mean((aper(:, (segments(i):segments(i+1)-1))),2);
    end
 end

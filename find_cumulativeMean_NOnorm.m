%function for cumulative analysis of the data
function [cum_data_per,cum_data_aper]= find_cumulativeMean_NOnorm(data_per,data_aper,startBin,endBins)

%segments =500:300:4400;

for rowIndex = 1:size(data_per, 1)
    per= cat(1,data_per{rowIndex,:});
    aper= cat(1,data_aper{rowIndex,:});
    for i = 1:length(endBins)
 
        currentRange = startBin:endBins(i);
        cum_data_per{rowIndex,i} = nanmean(per(:, currentRange),2);
        cum_data_aper{rowIndex,i} = nanmean(aper(:, currentRange),2);

    end   
end
end

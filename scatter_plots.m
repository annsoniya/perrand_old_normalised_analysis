% load teh datasets
Periodic = cum_data_per;% here each cell is( no of trials *1)
Aperiodic = cum_data_aper;
clear dataPeriodic;
clear dataAperiodic;
for units= 1:size(Periodic ,1)
    for col=1:size(Periodic ,2)
        x=mean(cell2mat(Periodic(units,col)),1);
        y=mean(cell2mat(Aperiodic(units,col)),1);
        dataPeriodic(units,col)=x;% each cell has only one value
        dataAperiodic(units,col)=y;
    end
end
%plotNeuronRatesScatter(dataPeriodic, dataAperiodic)-- this has error

%%% same for segment wise data%%%

Periodic = seg_mean_per;% here each cell is( no of trials *1)
Aperiodic = seg_mean_aper;
clear dataPeriodic;
clear dataAperiodic;
for units= 1:size(Periodic ,1)
    for col=1:size(Periodic ,2)
        x=mean(cell2mat(Periodic(units,col)),1);
        y=mean(cell2mat(Aperiodic(units,col)),1);
        dataPeriodic(units,col)=x;% each cell has only one value
        dataAperiodic(units,col)=y;
    end
end
% plots scatter of every segment seperately

plotNeuronRatesScatter(dataPeriodic, dataAperiodic)

%% plot periodic vs aperiodic in a single scatter plot (pervs aper) as x and y axis
plotscatterXvsY(dataPeriodic, dataAperiodic);




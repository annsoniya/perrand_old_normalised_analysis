%% aim
% to find the peak mean amongst the segments temporally
% both for cumulative and segment wise mean of the data

per=cum_data_per; % 132*13( each cell having 30*1 vector)
aper=cum_data_aper;

% for segment data

per=seg_mean_per;% 132*13( each cell having 30*1 vector)
aper=seg_mean_aper;

%%% 
for units=1:size(per,1)
    for i=1:size(per,2)
        xx(units,i)=mean(cell2mat(per(units,i)));
        yy(units,i)=mean(cell2mat(aper(units,i)));
    end
end
%% aim
% to find the peak mean amongst the segments temporally
% both for cumulative and segment wise mean of the data

per=cum_data_per; % 132*13( each cell having 30*1 vector)
aper=cum_data_aper;

% for segment data

per=seg_mean_per;% 132*13( each cell having 30*1 vector)
aper=seg_mean_aper;

%%% 
%%% 
for units=1:size(per,1)
    for i=1:size(per,2)
        xx(units,i)=mean(cell2mat(per(units,i)));
        yy(units,i)=mean(cell2mat(aper(units,i)));
    end
end


per_allUnit_mean=mean(xx(:,1:13));
aper_allUnit_mean=mean(yy(:,1:13));

figure
hold on;
plot(per_allUnit_mean(1:13))
plot(aper_allUnit_mean(1:13))
hold off;
legend('per','aper')
xlabel('segments of 300 ms each ')
ylabel('mean of all neurons in periodic and aperiodic seperatley the segments')
% Customize the x-axis
set(gca, 'XTick', 1:13);
set(gca, 'XTickLabel',{'900', '1200', '1500', '1800', '2100', '2400', '2700', '3000', '3300', '3600', '3900'}


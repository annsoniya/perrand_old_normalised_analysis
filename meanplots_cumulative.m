function[x,y] = meanplots_cumulative(periodic,aperiodic)
%% periodic and aperiodic are mean rate for each segments( cumulative or segmentwise data )
%x=zeros(size(periodic,1),size(periodic,2));
%y=zeros(size(aperiodic,1),size(aperiodic,2));
for units= 1:size(periodic,1)
   % if sum(isnan(cell2mat(periodic(units,:)))) + sum(isnan(cell2mat(aperiodic(units,:)))) ==0
        for col=1:size(periodic,2)
            
            x(units,col)=nanmean(cell2mat(periodic(units,col)),1);
            y(units,col)=nanmean(cell2mat(aperiodic(units,col)),1);
       % end
        end
        
    
    
end
t=find(isnan(y(:,1)));
 y(t,:)=[];
 x(t,:)=[];

%mean of all units
%exclude nan and inf
% x(isnan(x))=0;
% x(isinf(x))=0;
% y(isnan(y))=0;
% y(isinf(y))=0;
%
% mean_allunits_periodic=nanmean(x,1);
% mean_allunits_aperiodic=nanmean(y,1);
end

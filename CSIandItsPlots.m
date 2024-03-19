function [sel]= CSIandItsPlots(periodic,aperiodic)
   %% periodic and aperiodic are mean rate for each segments( cumulative or segmentwise data )
   sel=zeros(size(periodic,1),size(periodic,2));
    for units= 1:size(periodic,1)
        for col=1:size(periodic,2)
            x=nanmean(cell2mat(periodic(units,col)),1);
            y=nanmean(cell2mat(aperiodic(units,col)),1);
            
            sel(units,col)=(x-y)/(x+y);
        end

    end
end 

    

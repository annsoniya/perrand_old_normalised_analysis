% run selectivity codes for all datasets

%% cumulative selectivity
%load data
clear all;
load('withgap_cum_analysis_norm_avgtrials.mat')

% declare
[i,j]=size(cum_analysis.cum_per_4_periodicData);
periodic=cell(i,j);
aperiodic=cell(i,j);

%%% j is same for all the cases

% plot CSI for three cases. all neurons,
% neurons sig diff for periodic and aperiodic
% neurons Per>APer
% neurons Aper>Per
%cum_analysis.cum_per_4_diff.index
%cum_analysis.cum_per_4_periodic.index
%cum_analysis.cum_per_4_Aperiodic.index
for csitype=1:4
    switch csitype
        case 1
            disp('all neurons');
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_4_periodicData;
            aperiodic=cum_analysis.cum_per_4_AperiodicData;
            [mean_allunits_periodic_all,mean_allunits_aperiodic_all]=meanplots_cumulative(periodic,aperiodic);
      
        case 2
            disp('neurons sig diff for periodic and aperiodic');
            i=size(cum_analysis.cum_per_4_diff.index,1);
            %%% j is same for all the cases
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_4_periodicData(cum_analysis.cum_per_4_diff.index,:);
            aperiodic=cum_analysis.cum_per_4_AperiodicData(cum_analysis.cum_per_4_diff.index,:);
            [mean_allunits_periodic_diff,mean_allunits_aperiodic_diff]=meanplots_cumulative(periodic,aperiodic);
        
        case 3
            disp('neurons Per>APer');
            i=size(cum_analysis.cum_per_4_periodic.index ,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_4_periodicData(cum_analysis.cum_per_4_periodic.index,: );
            aperiodic=cum_analysis.cum_per_4_AperiodicData(cum_analysis.cum_per_4_periodic.index,: );
            [mean_allunits_periodic_P,mean_allunits_aperiodic_P]=meanplots_cumulative(periodic,aperiodic);
        
        case 4
            disp('neurons Aper>Per');
            i=size(cum_analysis.cum_per_4_Aperiodic.index,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_4_periodicData(cum_analysis.cum_per_4_Aperiodic.index,: );
            aperiodic=cum_analysis.cum_per_4_AperiodicData(cum_analysis.cum_per_4_Aperiodic.index,: );
            [mean_allunits_periodic_Ap,mean_allunits_aperiodic_Ap]=meanplots_cumulative(periodic,aperiodic);
    
    end
end

%% plot 
% Assuming matrix1, matrix2, matrix3, and matrix4 are your n*m matrices with potential NaNs
matrices2 = {mean_allunits_aperiodic_all, mean_allunits_aperiodic_diff,mean_allunits_aperiodic_P,mean_allunits_aperiodic_Ap};
matrices= {mean_allunits_periodic_all, mean_allunits_periodic_diff,mean_allunits_periodic_P,mean_allunits_periodic_Ap};
plot_meanRates_cum(matrices,matrices2);
suptitle('Periodicity =4 Mean cumulative normalised rates  '); 

%% %%%%%%%%%%% %%%%%%%%%%%%%%%%%%
%%%%periodicity =3 

%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
load('withgap_cum_analysis_norm_avgtrials.mat')
% declare
[i,j]=size(cum_analysis.cum_per_3_periodicData);
periodic=cell(i,j);
aperiodic=cell(i,j);

%%% j is same for all the cases

% plot CSI for three cases. all neurons,
% neurons sig diff for periodic and aperiodic
% neurons Per>APer
% neurons Aper>Per
%cum_analysis.cum_per_3_diff.index
%cum_analysis.cum_per_3_periodic.index
%cum_analysis.cum_per_3_Aperiodic.index
for csitype=1:4
    switch csitype
        case 1
            disp('all neurons');
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_periodicData;
            aperiodic=cum_analysis.cum_per_3_AperiodicData;
            [mean_allunits_periodic_all,mean_allunits_aperiodic_all]=meanplots_cumulative(periodic,aperiodic);
       
        case 2
            disp('neurons sig diff for periodic and aperiodic');
            i=size(cum_analysis.cum_per_3_diff.index,1);
            %%% j is same for all the cases
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_periodicData(cum_analysis.cum_per_3_diff.index,:);
            aperiodic=cum_analysis.cum_per_3_AperiodicData(cum_analysis.cum_per_3_diff.index,:);
            [mean_allunits_periodic_diff,mean_allunits_aperiodic_diff]=meanplots_cumulative(periodic,aperiodic);
       
        case 3
            disp('neurons Per>APer');
            i=size(cum_analysis.cum_per_3_periodic.index ,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_periodicData(cum_analysis.cum_per_3_periodic.index,: );
            aperiodic=cum_analysis.cum_per_3_AperiodicData(cum_analysis.cum_per_3_periodic.index,: );
            [mean_allunits_periodic_P,mean_allunits_aperiodic_P]=meanplots_cumulative(periodic,aperiodic);
      
        case 4
            disp('neurons Aper>Per');
            i=size(cum_analysis.cum_per_3_Aperiodic.index,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_periodicData(cum_analysis.cum_per_3_Aperiodic.index,: );
            aperiodic=cum_analysis.cum_per_3_AperiodicData(cum_analysis.cum_per_3_Aperiodic.index,: );
            [mean_allunits_periodic_Ap,mean_allunits_aperiodic_Ap]=meanplots_cumulative(periodic,aperiodic);
   
    end
end

%% plot 
matrices2 = {mean_allunits_aperiodic_all, mean_allunits_aperiodic_diff,mean_allunits_aperiodic_P,mean_allunits_aperiodic_Ap};
matrices= {mean_allunits_periodic_all, mean_allunits_periodic_diff,mean_allunits_periodic_P,mean_allunits_periodic_Ap};
plot_meanRates_cum(matrices,matrices2);
suptitle('Periodicity =3 Mean cumulative normalised rates  '); 
                          %%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%
                               

%% %% dataset 2f1f2

clear all;
load('withgap_cum_analysis_norm_avgtrials.mat');
% declare
[i,j]=size(cum_analysis.cum_per_3_2f1f2_periodicData);
periodic=cell(i,j);
aperiodic=cell(i,j);

%%% j is same for all the cases

% plot CSI for three cases. all neurons,
% neurons sig diff for periodic and aperiodic
% neurons Per>APer
% neurons Aper>Per
%cum_analysis.cum_per_3_diff.index
%cum_analysis.cum_per_3_periodic.index
%cum_analysis.cum_per_3_Aperiodic.index
for csitype=1:4
    switch csitype
        case 1
            disp('all neurons');
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f1f2_periodicData;
            aperiodic=cum_analysis.cum_per_3_2f1f2_AperiodicData;
            [mean_allunits_periodic_all,mean_allunits_aperiodic_all]=meanplots_cumulative(periodic,aperiodic);
        
        case 2
            disp('neurons sig diff for periodic and aperiodic');
            i=size(cum_analysis.cum_per_3_2f1f2_diff.index,1);
            %%% j is same for all the cases
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f1f2_periodicData(cum_analysis.cum_per_3_2f1f2_diff.index,:);
            aperiodic=cum_analysis.cum_per_3_2f1f2_AperiodicData(cum_analysis.cum_per_3_2f1f2_diff.index,:);
            [mean_allunits_periodic_diff,mean_allunits_aperiodic_diff]=meanplots_cumulative(periodic,aperiodic);
      
        case 3
            disp('neurons Per>APer');
            i=size(cum_analysis.cum_per_3_2f1f2_periodic.index ,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f1f2_periodicData(cum_analysis.cum_per_3_2f1f2_periodic.index,: );
            aperiodic=cum_analysis.cum_per_3_2f1f2_AperiodicData(cum_analysis.cum_per_3_2f1f2_periodic.index,: );
            [mean_allunits_periodic_P,mean_allunits_aperiodic_P]=meanplots_cumulative(periodic,aperiodic);
       
        case 4
            disp('neurons Aper>Per');
            i=size(cum_analysis.cum_per_3_2f1f2_Aperiodic.index,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f1f2_periodicData(cum_analysis.cum_per_3_2f1f2_Aperiodic.index,: );
            aperiodic=cum_analysis.cum_per_3_2f1f2_AperiodicData(cum_analysis.cum_per_3_2f1f2_Aperiodic.index,: );
            [mean_allunits_periodic_Ap,mean_allunits_aperiodic_Ap]=meanplots_cumulative(periodic,aperiodic);
  
    end
end

matrices2 = {mean_allunits_aperiodic_all, mean_allunits_aperiodic_diff,mean_allunits_aperiodic_P,mean_allunits_aperiodic_Ap};
matrices= {mean_allunits_periodic_all, mean_allunits_periodic_diff,mean_allunits_periodic_P,mean_allunits_periodic_Ap};
plot_meanRates_cum(matrices,matrices2);
suptitle('Periodicity =3 , 2f1f2- Mean cumulative normalised rates  '); 


%% clear all;
clear all;
load('withgap_cum_analysis_norm_avgtrials.mat');
% declare
[i,j]=size(cum_analysis.cum_per_3_2f2f1_periodicData);
periodic=cell(i,j);
aperiodic=cell(i,j);

%%% j is same for all the cases

% plot CSI for three cases. all neurons,
% neurons sig diff for periodic and aperiodic
% neurons Per>APer
% neurons Aper>Per
%cum_analysis.cum_per_3_diff.index
%cum_analysis.cum_per_3_periodic.index
%cum_analysis.cum_per_3_Aperiodic.index
for csitype=1:4
    switch csitype
        case 1
            disp('all neurons');
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f2f1_periodicData;
            aperiodic=cum_analysis.cum_per_3_2f2f1_AperiodicData;
            [mean_allunits_periodic_all,mean_allunits_aperiodic_all]=meanplots_cumulative(periodic,aperiodic);
        
        case 2
            disp('neurons sig diff for periodic and aperiodic');
            i=size(cum_analysis.cum_per_3_2f2f1_diff.index,1);
            %%% j is same for all the cases
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f2f1_periodicData(cum_analysis.cum_per_3_2f2f1_diff.index,:);
            aperiodic=cum_analysis.cum_per_3_2f2f1_AperiodicData(cum_analysis.cum_per_3_2f2f1_diff.index,:);
            [mean_allunits_periodic_diff,mean_allunits_aperiodic_diff]=meanplots_cumulative(periodic,aperiodic);
   
        case 3
            disp('neurons Per>APer');
            i=size(cum_analysis.cum_per_3_2f2f1_periodic.index ,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f2f1_periodicData(cum_analysis.cum_per_3_2f2f1_periodic.index,: );
            aperiodic=cum_analysis.cum_per_3_2f2f1_AperiodicData(cum_analysis.cum_per_3_2f2f1_periodic.index,: );
            [mean_allunits_periodic_P,mean_allunits_aperiodic_P]=meanplots_cumulative(periodic,aperiodic);
        
        case 4
            disp('neurons Aper>Per');
            i=size(cum_analysis.cum_per_3_2f2f1_Aperiodic.index,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f2f1_periodicData(cum_analysis.cum_per_3_2f2f1_Aperiodic.index,: );
            aperiodic=cum_analysis.cum_per_3_2f2f1_AperiodicData(cum_analysis.cum_per_3_2f2f1_Aperiodic.index,: );
            [mean_allunits_periodic_Ap,mean_allunits_aperiodic_Ap]=meanplots_cumulative(periodic,aperiodic);
    
    end
end

%% periodicity 3- 1200,2400,3600 dataset


%% plot
% Assuming matrix1, matrix2, matrix3, and matrix4 are your n*m matrices with potential NaNs
   matrices2 = {mean_allunits_aperiodic_all, mean_allunits_aperiodic_diff,mean_allunits_aperiodic_P,mean_allunits_aperiodic_Ap};
matrices= {mean_allunits_periodic_all, mean_allunits_periodic_diff,mean_allunits_periodic_P,mean_allunits_periodic_Ap};
plot_meanRates_cum(matrices,matrices2);
suptitle('Periodicity =3 , 2f2f1- Mean cumulative normalised rates  '); 




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
            [sel_all]=CSIandItsPlots(periodic,aperiodic);
        case 2
            disp('neurons sig diff for periodic and aperiodic');
            i=size(cum_analysis.cum_per_4_diff.index,1);
            %%% j is same for all the cases
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_4_periodicData(cum_analysis.cum_per_4_diff.index,:);
            aperiodic=cum_analysis.cum_per_4_AperiodicData(cum_analysis.cum_per_4_diff.index,:);
            [sel_diff]=CSIandItsPlots(periodic,aperiodic);
        case 3
            disp('neurons Per>APer');
            i=size(cum_analysis.cum_per_4_periodic.index ,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_4_periodicData(cum_analysis.cum_per_4_periodic.index,: );
            aperiodic=cum_analysis.cum_per_4_AperiodicData(cum_analysis.cum_per_4_periodic.index,: );
            [sel_perAper]=CSIandItsPlots(periodic,aperiodic);
        case 4
            disp('neurons Aper>Per');
            i=size(cum_analysis.cum_per_4_Aperiodic.index,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_4_periodicData(cum_analysis.cum_per_4_Aperiodic.index,: );
            aperiodic=cum_analysis.cum_per_4_AperiodicData(cum_analysis.cum_per_4_Aperiodic.index,: );
            [sel_Aperper]=CSIandItsPlots(periodic,aperiodic);
    end
end

%% plot 
% Assuming matrix1, matrix2, matrix3, and matrix4 are your n*m matrices with potential NaNs
matrices = {sel_all, sel_diff,sel_perAper,sel_Aperper};

plot_csi(matrices);

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
            [sel_all]=CSIandItsPlots(periodic,aperiodic);
        case 2
            disp('neurons sig diff for periodic and aperiodic');
            i=size(cum_analysis.cum_per_3_diff.index,1);
            %%% j is same for all the cases
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_periodicData(cum_analysis.cum_per_3_diff.index,:);
            aperiodic=cum_analysis.cum_per_3_AperiodicData(cum_analysis.cum_per_3_diff.index,:);
            [sel_diff]=CSIandItsPlots(periodic,aperiodic);
        case 3
            disp('neurons Per>APer');
            i=size(cum_analysis.cum_per_3_periodic.index ,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_periodicData(cum_analysis.cum_per_3_periodic.index,: );
            aperiodic=cum_analysis.cum_per_3_AperiodicData(cum_analysis.cum_per_3_periodic.index,: );
            [sel_perAper]=CSIandItsPlots(periodic,aperiodic);
        case 4
            disp('neurons Aper>Per');
            i=size(cum_analysis.cum_per_3_Aperiodic.index,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_periodicData(cum_analysis.cum_per_3_Aperiodic.index,: );
            aperiodic=cum_analysis.cum_per_3_AperiodicData(cum_analysis.cum_per_3_Aperiodic.index,: );
            [sel_Aperper]=CSIandItsPlots(periodic,aperiodic);
    end
end

%% plot 
% Assuming matrix1, matrix2, matrix3, and matrix4 are your n*m matrices with potential NaNs
matrices = {sel_all, sel_diff,sel_perAper,sel_Aperper};

% Number of subplots along each dimension
plot_csi(matrices);
suptitle('Periodicity =3,CSI plots for  cumulative segments(500:300:4100) - all periodicity3 stimuli'); % Su
%%                            %%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%
                                %%% SEGMENT WISE ANALYSIS 
                                    %%%%%%%%%%%%%%%%%%%%%%%
%%  periodicity =4
clear all;
load('seg_analysis.mat');
% declare
[i,j]=size(seg_analysis.seg_per_4_periodicData);
periodic=cell(i,j);
aperiodic=cell(i,j);

%%% j is same for all the cases

% plot CSI for three cases. all neurons,
% neurons sig diff for periodic and aperiodic
% neurons Per>APer
% neurons Aper>Per
%seg_analysis.seg_per_4_diff.index
%seg_analysis.seg_per_4_periodic.index
%seg_analysis.seg_per_4_Aperiodic.index
for csitype=1:4
    switch csitype
        case 1
            disp('all neurons');
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=seg_analysis.seg_per_4_periodicData;
            aperiodic=seg_analysis.seg_per_4_AperiodicData;
            [sel_all]=CSIandItsPlots(periodic,aperiodic);
        case 2
            disp('neurons sig diff for periodic and aperiodic');
            i=size(seg_analysis.seg_per_4_diff.index,1);
            %%% j is same for all the cases
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=seg_analysis.seg_per_4_periodicData(seg_analysis.seg_per_4_diff.index,:);
            aperiodic=seg_analysis.seg_per_4_AperiodicData(seg_analysis.seg_per_4_diff.index,:);
            [sel_diff]=CSIandItsPlots(periodic,aperiodic);
        case 3
            disp('neurons Per>APer');
            i=size(seg_analysis.seg_per_4_periodic.index ,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=seg_analysis.seg_per_4_periodicData(seg_analysis.seg_per_4_periodic.index,: );
            aperiodic=seg_analysis.seg_per_4_AperiodicData(seg_analysis.seg_per_4_periodic.index,: );
            [sel_perAper]=CSIandItsPlots(periodic,aperiodic);
        case 4
            disp('neurons Aper>Per');
            i=size(seg_analysis.seg_per_4_Aperiodic.index,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=seg_analysis.seg_per_4_periodicData(seg_analysis.seg_per_4_Aperiodic.index,: );
            aperiodic=seg_analysis.seg_per_4_AperiodicData(seg_analysis.seg_per_4_Aperiodic.index,: );
            [sel_Aperper]=CSIandItsPlots(periodic,aperiodic);
    end
end

%% plot
% Assuming matrix1, matrix2, matrix3, and matrix4 are your n*m matrices with potential NaNs
matrices = {sel_all, sel_diff,sel_perAper,sel_Aperper};

plot_csi(matrices);
suptitle('Periodicity =4,CSI plots for  segments(500:400:4100) '); % Super title for the figure

%%%% 
%% periodicity =3
clear all;
load('seg_analysis.mat');
% declare
[i,j]=size(seg_analysis.seg_per_3_periodicData);
periodic=cell(i,j);
aperiodic=cell(i,j);

%%% j is same for all the cases

% plot CSI for three cases. all neurons,
% neurons sig diff for periodic and aperiodic
% neurons Per>APer
% neurons Aper>Per
%seg_analysis.seg_per_3_diff.index
%seg_analysis.seg_per_3_periodic.index
%seg_analysis.seg_per_3_Aperiodic.index
for csitype=1:4
    switch csitype
        case 1
            disp('all neurons');
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=seg_analysis.seg_per_3_periodicData;
            aperiodic=seg_analysis.seg_per_3_AperiodicData;
            [sel_all]=CSIandItsPlots(periodic,aperiodic);
        case 2
            disp('neurons sig diff for periodic and aperiodic');
            i=size(seg_analysis.seg_per_3_diff.index,1);
            %%% j is same for all the cases
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=seg_analysis.seg_per_3_periodicData(seg_analysis.seg_per_3_diff.index,:);
            aperiodic=seg_analysis.seg_per_3_AperiodicData(seg_analysis.seg_per_3_diff.index,:);
            [sel_diff]=CSIandItsPlots(periodic,aperiodic);
        case 3
            disp('neurons Per>APer');
            i=size(seg_analysis.seg_per_3_periodic.index ,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=seg_analysis.seg_per_3_periodicData(seg_analysis.seg_per_3_periodic.index,: );
            aperiodic=seg_analysis.seg_per_3_AperiodicData(seg_analysis.seg_per_3_periodic.index,: );
            [sel_perAper]=CSIandItsPlots(periodic,aperiodic);
        case 4
            disp('neurons Aper>Per');
            i=size(seg_analysis.seg_per_3_Aperiodic.index,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=seg_analysis.seg_per_3_periodicData(seg_analysis.seg_per_3_Aperiodic.index,: );
            aperiodic=seg_analysis.seg_per_3_AperiodicData(seg_analysis.seg_per_3_Aperiodic.index,: );
            [sel_Aperper]=CSIandItsPlots(periodic,aperiodic);
    end
end


%% %% dataset 2f1f2

clear all;
load('withgap_cum_analysis.mat')
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
            [sel_all]=CSIandItsPlots(periodic,aperiodic);
        case 2
            disp('neurons sig diff for periodic and aperiodic');
            i=size(cum_analysis.cum_per_3_2f1f2_diff.index,1);
            %%% j is same for all the cases
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f1f2_periodicData(cum_analysis.cum_per_3_2f1f2_diff.index,:);
            aperiodic=cum_analysis.cum_per_3_2f1f2_AperiodicData(cum_analysis.cum_per_3_2f1f2_diff.index,:);
            [sel_diff]=CSIandItsPlots(periodic,aperiodic);
        case 3
            disp('neurons Per>APer');
            i=size(cum_analysis.cum_per_3_2f1f2_periodic.index ,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f1f2_periodicData(cum_analysis.cum_per_3_2f1f2_periodic.index,: );
            aperiodic=cum_analysis.cum_per_3_2f1f2_AperiodicData(cum_analysis.cum_per_3_2f1f2_periodic.index,: );
            [sel_perAper]=CSIandItsPlots(periodic,aperiodic);
        case 4
            disp('neurons Aper>Per');
            i=size(cum_analysis.cum_per_3_2f1f2_Aperiodic.index,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f1f2_periodicData(cum_analysis.cum_per_3_2f1f2_Aperiodic.index,: );
            aperiodic=cum_analysis.cum_per_3_2f1f2_AperiodicData(cum_analysis.cum_per_3_2f1f2_Aperiodic.index,: );
            [sel_Aperper]=CSIandItsPlots(periodic,aperiodic);
    end
end

matrices = {sel_all, sel_diff,sel_perAper,sel_Aperper};

plot_csi(matrices);
suptitle('Periodicity =3 2f1f2,CSI plots for  segments(500:300:4100) '); % Super title for the figure


%% clear all;
load('withgap_cum_analysis.mat')
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
            [sel_all]=CSIandItsPlots(periodic,aperiodic);
        case 2
            disp('neurons sig diff for periodic and aperiodic');
            i=size(cum_analysis.cum_per_3_2f2f1_diff.index,1);
            %%% j is same for all the cases
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f2f1_periodicData(cum_analysis.cum_per_3_2f2f1_diff.index,:);
            aperiodic=cum_analysis.cum_per_3_2f2f1_AperiodicData(cum_analysis.cum_per_3_2f2f1_diff.index,:);
            [sel_diff]=CSIandItsPlots(periodic,aperiodic);
        case 3
            disp('neurons Per>APer');
            i=size(cum_analysis.cum_per_3_2f2f1_periodic.index ,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f2f1_periodicData(cum_analysis.cum_per_3_2f2f1_periodic.index,: );
            aperiodic=cum_analysis.cum_per_3_2f2f1_AperiodicData(cum_analysis.cum_per_3_2f2f1_periodic.index,: );
            [sel_perAper]=CSIandItsPlots(periodic,aperiodic);
        case 4
            disp('neurons Aper>Per');
            i=size(cum_analysis.cum_per_3_2f2f1_Aperiodic.index,1);
            periodic=cell(i,j);
            aperiodic=cell(i,j);
            periodic=cum_analysis.cum_per_3_2f2f1_periodicData(cum_analysis.cum_per_3_2f2f1_Aperiodic.index,: );
            aperiodic=cum_analysis.cum_per_3_2f2f1_AperiodicData(cum_analysis.cum_per_3_2f2f1_Aperiodic.index,: );
            [sel_Aperper]=CSIandItsPlots(periodic,aperiodic);
    end
end

%% periodicity 3- 1200,2400,3600 dataset


%% plot
% Assuming matrix1, matrix2, matrix3, and matrix4 are your n*m matrices with potential NaNs
    matrices = {sel_all, sel_diff,sel_perAper,sel_Aperper};

    plot_csi(matrices);
    suptitle('Periodicity =3 2f2f1,CSI plots for  segments(500:300:4100) '); % Super title for the figure




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

%% plot
% Assuming matrix1, matrix2, matrix3, and matrix4 are your n*m matrices with potential NaNs
matrices = {sel_all, sel_diff,sel_perAper,sel_Aperper};

plot_csi(matrices);
suptitle('Periodicity =3,CSI plots for  segments(500:300:4100) '); % Super title for the figure




% get the index of neurons from each categpory
%then see if there are neurons whihc belong to same index ffor each of these case
% this is an example of more periodic selective neurons in both periodicities for cumulatove analysis


% load from saved mats 
token_only=load('withoutgap.mat');
token_gap=load('withoutgap_cum_analysis.mat');

x=cum_analysis.cum_per_3_diff_1200_2400_3600 .index ;
y=cum_analysis.cum_per_4_periodic.index;
z=cum_analysis.cum_per_4_Aperiodic.index  ;
intersectABC = intersect(intersect(x, y), z)


neurons_common.periodic_sel=intersect(x,y);

%% this is an example of more periodic selective neurons in both periodicities for cumulatove analysis  

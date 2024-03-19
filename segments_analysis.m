    % segment wise - not cumultive - treat as indepoendant segments 
    % aim
    % 1) divide into segments 
    % find ttest2 (both, right,left)
    % 3)find peak of all these segmenst and for which per or paer ist highest
    % 4)plot the means for each segments and see if any trend is there

%%%%% run teh data classification file and use teh corresponding database 

% load teh data to be analysed (every time chnage the file name)
data_per=data_per_3;
data_aper=data_aper_3;

% divide into segments
segments=500:300:4100;

%% periodicity 4- 
data_per=data_per_4;
data_aper=data_aper_4;
segments=500:400:4100

%%
%declare seg_mean_per and seg_mean_aper
% load teh data to be analysed (every time chnage the file name)
seg_mean_per=cell(size(data_per,1),length(segments)-1);
seg_mean_aper=cell(size(data_aper,1),length(segments)-1);
%declare all h and p values
h=zeros(size(seg_mean_per,1),length(segments)-1);
p=zeros(size(seg_mean_per,1),length(segments)-1);
h_t=zeros(size(seg_mean_per,1),length(segments)-1);
p_t=zeros(size(seg_mean_per,1),length(segments)-1);
h_t_rt=zeros(size(seg_mean_per,1),length(segments)-1);
p_t_rt=zeros(size(seg_mean_per,1),length(segments)-1);
h_t_lt=zeros(size(seg_mean_per,1),length(segments)-1);
p_t_lt=zeros(size(seg_mean_per,1),length(segments)-1);

[seg_mean_per,seg_mean_aper]=find_SegmentMean(data_per,data_aper,segments)
for i=1:size(seg_mean_per,1)
    for j=1:size(seg_mean_per,2)
        [p(i,j),h(i,j)] = ranksum(seg_mean_per{i,j},seg_mean_aper{i,j});%
        % t test    
        [h_t(i,j),p_t(i,j)] = ttest2(seg_mean_per{i,j},seg_mean_aper{i,j},'Alpha',0.05,'Vartype','unequal');
        [h_t_rt(i,j),p_t_rt(i,j)] = ttest2(seg_mean_per{i,j},seg_mean_aper{i,j},'Tail','right','Alpha',0.05,'Vartype','unequal');
        % right tail means right>left= per>aper ,but with unequal variances 
        [h_t_lt(i,j),p_t_lt(i,j)] = ttest2(seg_mean_per{i,j},seg_mean_aper{i,j},'Tail','left','Alpha',0.05,'Vartype','unequal');
    end
end

% Calculate the average mean value for each segment across all neurons(iirespective of significant or not)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
periodicData=cell(size(seg_mean_per,1),size(seg_mean_per,2));
AperiodicData=cell(size(seg_mean_aper,1),size(seg_mean_aper,2));
periodicData=seg_mean_per;
AperiodicData=seg_mean_aper;
% load teh data to be analysed (every time chnage the file name)
dataPeriodic=zeros(size(seg_mean_per,1),size(seg_mean_per,2));
dataAperiodic=zeros(size(seg_mean_aper,1),size(seg_mean_aper,2));
% load teh data to be analysed (every time chnage the file name)
% data formatting of cells into average of all trials in each cells as nd as a matrix
for units= 1:size(periodicData ,1)
    for col=1:size(periodicData ,2)
        x=mean(cell2mat(periodicData(units,col)),1);
        y=mean(cell2mat(AperiodicData(units,col)),1);
        dataPeriodic(units,col)=x;% each cell has only one value
        dataAperiodic(units,col)=y;
    end
 end
  plotAverageMeanOfSegments_allneurons(dataPeriodic, dataAperiodic);
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h=0;
numSegments_h1=0;
max_h1=0;

h=h_t_rt;
% Find the number of segments with h values = 1
numSegments_h1 = sum(h(:, 1:size(h, 2)), 'omitnan');
%%%%% Find the number of units with h values = 1
rowsWithOne = any(h == 1, 2);
indicesOfNeurons = find(rowsWithOne);
numberOfNeurons = numel(indicesOfNeurons);
% Display the results
disp('Indices of Neurons with at least one column = 1:');
disp(indicesOfNeurons);
disp(['Total Number of such Neurons: ', num2str(numberOfNeurons)]);
tot_nof_segments= sum(numSegments_h1);
disp(['Total Number of such segments: ', num2str(tot_nof_segments)]);

%% to plot significntly different neuron rates
%declare periodicData and AperiodicData
% load teh data to be analysed (every time chnage the file name)
periodicData=cell(length(indicesOfNeurons),size(seg_mean_per,2));
AperiodicData=cell(length(indicesOfNeurons),size(seg_mean_aper,2));
periodicData=seg_mean_per(indicesOfNeurons,:);
AperiodicData=seg_mean_aper(indicesOfNeurons,:);
% load teh data to be analysed (every time chnage the file name)
dataPeriodic=zeros(length(indicesOfNeurons),size(seg_mean_per,2));
dataAperiodic=zeros(length(indicesOfNeurons),size(seg_mean_aper,2));
% load teh data to be analysed (every time chnage the file name)
% data formatting of cells into average of all trials in each cells as nd as a matrix
for units= 1:size(periodicData ,1)
    for col=1:size(periodicData ,2)
        x=mean(cell2mat(periodicData(units,col)),1);
        y=mean(cell2mat(AperiodicData(units,col)),1);
        dataPeriodic(units,col)=x;% each cell has only one value
        dataAperiodic(units,col)=y;
    end
 end
  plotAverageMeanOfSegments_allneurons(dataPeriodic, dataAperiodic);

%% find teh peak mean of each cell for periodic and aperiodic seperately and see if any pattern 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%comment out the unnecessary lines%%%%%%%%%%%%%%
%wriet teh below lines for segments.. replace cum by seg

seg_analysis.seg_per_3_periodicData=seg_mean_per;
seg_analysis.seg_per_3_AperiodicData=seg_mean_aper;

seg_analysis.seg_per_3_periodic.index=indicesOfNeurons;
seg_analysis.seg_per_3_periodic.numberOfNeurons=numberOfNeurons;
seg_analysis.seg_per_3_periodic.tot_nof_segments=tot_nof_segments;

% for neurons mean sig higher for aperiodic data
seg_analysis.seg_per_3_Aperiodic.index=indicesOfNeurons;
seg_analysis.seg_per_3_Aperiodic.numberOfNeurons=numberOfNeurons;
seg_analysis.seg_per_3_Aperiodic.tot_nof_segments=tot_nof_segments;


seg_analysis.seg_per_3_diff.index=indicesOfNeurons;
seg_analysis.seg_per_3_diff.numberOfNeurons=numberOfNeurons;
seg_analysis.seg_per_3_diff.tot_nof_segments=tot_nof_segments;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%periodicty 4

seg_analysis.seg_per_4_periodicData=seg_mean_per;
seg_analysis.seg_per_4_AperiodicData=seg_mean_aper;

seg_analysis.seg_per_4_periodic.index=indicesOfNeurons;
seg_analysis.seg_per_4_periodic.numberOfNeurons=numberOfNeurons;
seg_analysis.seg_per_4_periodic.tot_nof_segments=tot_nof_segments;

% for neurons mean sig higher for aperiodic data
seg_analysis.seg_per_4_Aperiodic.index=indicesOfNeurons;
seg_analysis.seg_per_4_Aperiodic.numberOfNeurons=numberOfNeurons;
seg_analysis.seg_per_4_Aperiodic.tot_nof_segments=tot_nof_segments;

% for diff means periodicity 4
seg_analysis.seg_per_4_diff.index=indicesOfNeurons;
seg_analysis.seg_per_4_diff.numberOfNeurons=numberOfNeurons;
seg_analysis.seg_per_4_diff.tot_nof_segments=tot_nof_segments;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%save the data
save('seg_analysis.mat','seg_analysis');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


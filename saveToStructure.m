function cum_analysis = saveToStructure(periodicity, tag, type)
    % Construct the base field name based on inputs
    fieldNameBase = sprintf('cum_per_%d_%s_%s', periodicity, tag, type);
    
    % Define the variable names that correspond to the fields
    varNames = {'indicesOfNeurons', 'numberOfNeurons', 'tot_nof_segments', 'h', 'p_t', 'columnSums'};
    
    % Initialize the structure if it doesn't already exist
    if ~exist('cum_analysis', 'var')
        cum_analysis = struct();
    end
    
    % Iterate over the variable names and assign them to the structure
    for i = 1:length(varNames)
        % Construct the full field name
        fieldName = sprintf('%s.%s', fieldNameBase, varNames{i});
        
        % Use evalin to get the variable value from the caller workspace
        varValue = evalin('caller', varNames{i});
        
        % Dynamically set the field in the structure
        cum_analysis = setfield(cum_analysis, strsplit(fieldName, '.'), varValue);
    end
end

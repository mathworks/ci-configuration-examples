function plan = buildfile
plan = buildplan(localfunctions);

end

function testTask(context)
% Run all tests
testFolder = fullfile(context.Plan.RootFolder, "tests");
srcFolder = fullfile(context.Plan.RootFolder, "code");

% Add code folder to MATLAB search path
origPath = addpath(srcFolder);
disp(testFolder);

% Run tests
results = runtests(testFolder, ...
    IncludeSubfolders = true, ...
    OutputDetail = "terse");
results.assertSuccess;

% Reset the original path
path(origPath);
end


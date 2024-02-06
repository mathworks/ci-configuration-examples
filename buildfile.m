function plan = buildfile

import matlab.buildtool.tasks.TestTask
import matlab.buildtool.tasks.CleanTask

% Create a plan from task functions
plan = buildplan(localfunctions);

% Add a task to run tests
plan("test") = TestTask(SourceFiles="code", ...
    TestResults="test-results/results.html", ...
    CodeCoverageResults="code-coverage/results.xml");

% Set default task
plan.DefaultTasks = "test";

plan("clean") = CleanTask;
plan("test").Dependencies = "setUp";

end

function setUpTask(context)
srcFolder = fullfile(context.Plan.RootFolder, "code");
addpath(srcFolder);
end


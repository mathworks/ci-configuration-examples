function plan = buildfile

% Add the source folder to the path
addpath("code");

% Create a plan
plan = buildplan(localfunctions);

% Add a task to run tests
plan("test") = matlab.buildtool.tasks.TestTask("tests");

% Make the "test" task the default task in the plan
plan.DefaultTasks = "test";

end


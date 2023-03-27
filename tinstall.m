classdef tinstall < matlab.unittest.TestCase
    properties (TestParameter)
        % This is not the complete list of allowed products, it is just a
        % small sample to smoke test license checkout.
        allowed = {'matlab', 'simulink', 'signal_toolbox', 'statistics_toolbox', ...
            'optimization_toolbox', 'symbolic_toolbox', 'image_toolbox', 'control_toolbox', ...
            'signal_blocks', 'curve_fitting_toolbox'}
        restricted = {'rtw_embedded_coder', 'filter_design_hdl_coder', 'gpu_coder', ...
            'simulink_hdl_coder', 'matlab_coder', 'real-time_workshop', 'simulink_plc_coder'}
        example = {'matlab/intro', 'optim/SolveAConstrainedNonlinearProblemProblemBasedExample', ...
            'curvefit/FitPolynomialExample', 'simulink_general/sldemo_bounceExample'}
    end
    
    methods (Test)
        function testCheckoutAllowedLicense(testCase, allowed)
            [status, msg] = license('checkout', allowed);
            testCase.verifyThat(logical(status), IsTrue, msg);
        end
        
        function testFailToCheckoutRestrictedLicense(testCase, restricted)
            import matlab.unittest.diagnostics.Diagnostic;
            
            [status, msg] = license('checkout', restricted);
            testCase.verifyThat(logical(status), IsFalse, Diagnostic.join([restricted ' should not checkout'], msg));
        end
        
        function testRunExample(testCase, example)
            meta = findExample(example);
            testCase.assumeTrue(isfolder(fullfile(meta.componentDir, 'main')), 'Demo not available');

            testCase.applyFixture(PathFixture(meta.componentDir));
            
            startingFigs = findall(groot, 'Type','figure');
            testCase.addTeardown(@() close(setdiff(findall(groot, 'Type','figure'), startingFigs)));
            
            [log, ex] = evalc('runDemo(fullfile(meta.componentDir, ''main'', meta.main));');
            if ~isempty(ex)
                disp(log);
                rethrow(ex);
            end
        end
    end
    
end

function ex = runDemo(demo) %#ok<DEFNU> evalc
try
run(demo)
ex = MException.empty;
catch ex
end
end

% imports
function c = IsTrue(varargin)
c = matlab.unittest.constraints.IsTrue(varargin{:});
end
function c = IsFalse(varargin)
c = matlab.unittest.constraints.IsFalse(varargin{:});
end
function c = PathFixture(varargin)
c = matlab.unittest.fixtures.PathFixture(varargin{:});
end
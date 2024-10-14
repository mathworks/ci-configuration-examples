classdef tinstall < matlab.unittest.TestCase
    properties (TestParameter)
        % This is not the complete list of allowed products, it is just a
        % small sample to smoke test license checkout.
        allowed = {'matlab', 'simulink', 'signal_toolbox', 'statistics_toolbox', ...
            'optimization_toolbox', 'symbolic_toolbox', 'image_toolbox', 'control_toolbox', ...
            'signal_blocks', 'curve_fitting_toolbox'}
        restricted = {'rtw_embedded_coder', 'filter_design_hdl_coder', 'gpu_coder', ...
            'simulink_hdl_coder', 'matlab_coder', 'simulink_plc_coder', 'matlab_excel_builder', ...
            'compiler', 'matlab_builder_for_java', 'matlab_builder_for_dot_net', ...
            'polyspace_client_c_cpp', 'simulink_compiler'}
            % Add to restricted list once licensing server is fixed (a few weeks after 10/7/24)
            % 'simulink_code_inspector', 'simulink_design_verifier', 'real-time_workshop'
        example = {'matlab', 'optimization_toolbox', 'curve_fitting_toolbox'}
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
            testCase.verifyTrue(isInstalled(example), 'Product not installed');
            
            startingFigs = findall(groot, 'Type','figure');
            testCase.addTeardown(@() close(setdiff(findall(groot, 'Type','figure'), startingFigs)));
            
            [log, ex] = evalc('runExample(fullfile(''examples'',example));');
            if ~isempty(ex)
                disp(log);
                rethrow(ex);
            end
        end
    end
    
end

function ex = runExample(example)
try
    run(example)
    ex = MException.empty;
catch ex
end
end

function tf = isInstalled(productName)
v = ver();
n = strrep(productName, '_', ' ');
tf = any(strcmpi(n, {v.Name}));
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
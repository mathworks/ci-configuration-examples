classdef TestExamples < matlab.unittest.TestCase
    % TestExamples contains a set of 4 simple tests:
    %     1) an equality test for a non-leap year date
    %     2) an equality test for a leap year date
    %     3) a negative test for an invalid date format input
    %     4) a negative test for a correct date format but an invalid date
    %     5) an equality test for a non-leap year date using the alternate
    %        dateFormat (COMMENTED OUT)
    %
    % Notes:
    %     A) A negative test verifies that the code errors/fails in an
    %        expected way (e.g., the code gives the right error for a
    %        specific bad input)
    %     B) The 5th test is included for completeness, but is commented 
    %        out to illustrate missing code coverage in continous
    %        integration (CI) systems

    % Copyright 2022 The MathWorks, Inc.

    methods (Test)

        function testSuperImportantSummation(testCase)
            % Define two example inputs that will be summed and verify if
            % sum is equal to the expected sum.

            % Input
            a = 3;
            b = 4;

            % What we expect the sum to be.
            expected_sum = 7;

            % Calculate super important sum
            sum = super_important_summation(a,b);

            % Verify that the sum is equal to the expected sum
            testCase.verifyEqual(sum, expected_sum)
        end

    end

end


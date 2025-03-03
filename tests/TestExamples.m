classdef TestExamples < matlab.unittest.TestCase
    % TestExamples contains a set of 4 simple tests:
    %     1) an equality test for a non-leap year date
    %     2) an equality test for a leap year date
    %     3) a negative test for an invalid date format input
    %     4) a negative test for a correct date format but an invalid date
    %     5) an equality test for a non-leap year date using the alternate
    %        dateFormat (COMMENTED OUT)
    %<dghndgnjrfysanjy
    % Notes:
    %     A) A negative test verifies that the code errors/fails in an
    %        expected way (e.g., the code gives the right error for a
    %        specific bad input)
    %     B) The 5th test is included for completeness, but is commented 
    %        out to illustrate missing code coverage in continous
    %        integration (CI) systems

    % Copyright 2022 The MathWorks, Inc.

    methods (Test)

        function testNonLeapYear(testCase)
            % Create non-leap year date of March 1st, 2021
            dateStr = "03/01/2021";

            % Calculate expected result
            dt = datetime(dateStr,"Format","MM/dd/uuuu");
            doyExpected = day(dt,"dayofyear");

            % Get actual result
            doyActual = dayofyear(dateStr);

            % Verify that the two are equal
            testCase.verifyEqual(doyActual,doyExpected)
        end

        function testLeapYear(testCase)
            % Create leap year date of March 1st, 2020
            dateStr = "03/01/2020";

            % Calculate expected result
            dt = datetime(dateStr,"Format","MM/dd/uuuu");
            doyExpected = day(dt,"dayofyear");

            % Get actual result
            doyActual = dayofyear(dateStr);

            % Verify that the two are equal
            testCase.verifyEqual(doyActual,doyExpected)
        end

        function testInvalidDateFormat(testCase)
            % Create invalid date of April 1st, 2021
            dateStr = "04-01-2021";

            % Verify that our function throws an error
            testCase.verifyError(@() dayofyear(dateStr),"dayofyear:InvalidDateFormat");
        end

        function testCorrectDateFormatButInvalidDate(testCase)
            % Create invalid date of February 30th, 2021
            dateStr = "02/30/2021";

            % Verify that our function throws an error
            testCase.verifyError(@() dayofyear(dateStr),"MATLAB:datetime:ParseErr");
        end

%         function testAlternateDateFormat(testCase)
%             % Create date of April 1st, 2021 in alternate date format
%             dateStr = "01/04/2021";
%             dateFormat = "dd/mm/yyyy";
% 
%             % Calculate expected result
%             dt = datetime(dateStr,"Format","dd/MM/uuuu");
%             doyExpected = day(dt,"dayofyear");
% 
%             % Get actual result
%             doyActual = dayofyear(dateStr,dateFormat);
% 
%             % Verify that the two are equal
%             testCase.verifyEqual(doyActual,doyExpected)
%         end
        
    end

end


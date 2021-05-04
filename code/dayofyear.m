function doy = dayofyear(ddmmyyyy,dateFormat)
%DAYOFYEAR Converts a date string ("dd/mm/yyyy") to the day number of the
%year.

% NOTE: MATLAB already does easily this using:
%           doy = day(d,"dayofyear")
%       where d is a datetime object

% Copyright 2021 The MathWorks, Inc.

arguments
    ddmmyyyy string;
    dateFormat (1,1) string {mustBeMember(dateFormat,["mm/dd/yyyy","dd/mm/yyyy"])} = "mm/dd/yyyy";
end

% Check that ddmmyyyy was provided in the appropriate format
if numel(split(ddmmyyyy,"/")) ~= 3
    error("dayofyear:InvalidDateFormat","Invalid date string. Expected date formatted as dd/mm/yyyy.")
end

% Create a datetime object depending on the dateFormat provided
if dateFormat == "mm/dd/yyyy"
    d = datetime(ddmmyyyy,"Format","MM/dd/uuuu");
else
    d = datetime(ddmmyyyy,"Format","dd/MM/uuuu");
end

% Initialize the days per month
daysPerMonth = [31,28,31,30,31,30,31,31,30,31,30,31];

% Check for leap year
if mod(d.Year,4) == 0
    % This is a leap year, so February to 29 days
    daysPerMonth(2) = 29;
end

% Calculate day of year
doy = sum(daysPerMonth(1:d.Month-1)) + d.Day;


end


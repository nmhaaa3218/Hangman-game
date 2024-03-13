%Written by Manh Ha Nguyen _ Aug-Sep.2021
%function to display dash lines for user to guess and display turn
%-----------------------------------%

function [] = visualmodule1(wordguess,wordlen,turn)

%display turn
disp("TURN " + turn);

%display dashes for the user to know the length 
%and the position of correct letter
for i = 1:wordlen
    fprintf("%s ", wordguess(i));
end

%insert new line
fprintf("\n")

end

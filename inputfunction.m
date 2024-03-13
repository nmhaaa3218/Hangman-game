%Written by Manh Ha Nguyen _ Aug-Sep.2021
%input module of hangman
%----------------------------%

function [userinput] = inputfuction(guessalready,turn)

%display what the user have guessed
if turn ~= 1 
    fprintf("You have already guessed: ");
    fprintf("%c ", guessalready);
    fprintf("\n");
end

%take the user guess and convert to lowercase if applicable
userinput = input("Please take a guess: ", 's');
userinput = lower(userinput);
    
%check if user input is one character, a letter, and not already guessed
while length(userinput) ~= 1 || isletter(userinput) == false || ismember(userinput, guessalready) == true
    userinput = input("Please only entered a single letter that have not been guessed: ", 's');
    userinput = lower(userinput);
end
    
end


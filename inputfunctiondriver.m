%Written by Manh Ha Nguyen _ Aug-Sep.2021
%driver for inputfunction function
%--------------------------%

%create guessalready vector
guessalready = [];

for i = 1:10
    %for the purpose of testing
    turn = i;
    
    %get user input
    [userinput] = inputfunction(guessalready,turn);
    
    %add the letter to guessed already vector
    guessalready = [guessalready, userinput];
    
end

disp("Guess already vector is " + guessalready)



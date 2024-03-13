%Written by Manh Ha Nguyen _ Aug-Sep.2021
%Hangman Project
%-------------------------%

%generate random word
word = randword();

%find the length of the word
wordlen = length(word);

%initialize value as listed below
chancelimit = 7;
wordcorrect = 0;
wrongguess = 0;
turn = 1;

%create array for already guessed letter
guessalready = [];


%create an array of the correct letter the user will guess 
wordguess = [];
for i = 1:wordlen
    wordguess = [wordguess, "__"];
end



%MAIN ELEMENTS OF GAME START HERE
while wrongguess < chancelimit
    
    
    %DISPLAY MODULE 1
    %display turn and dashed line for the user to guess
    visualmodule1(wordguess,wordlen,turn);
    
    
    %DISPLAY MODULE 2
    %display hangman figure according to the number of wrongguess
    visualmodule2(wrongguess);
    
    
    %INPUT MODULE
    %get userinput and append it to guessalready array
    userinput = inputfunction(guessalready,turn);
    guessalready = [guessalready userinput];
       
    
    
    %WORD CHECK MODULE
    %check if the user guess is in the word
    [iscorrect, iswrong] = wordcheckmodule(userinput, word);
    
    
    if iscorrect == 1
        %add up to the wordcorrect variable
        wordcorrect = wordcorrect + iscorrect;
        
        %replace the the word the user guest to wordguess array
        for j = 1:wordlen
            if userinput == word(j)
                wordguess(j) = userinput;
            end
        end
    
    %if the user guess is wrong add up to the wrongguess variable    
    elseif iswrong == 1
        wrongguess = wrongguess + iswrong;
    end
    
    
    %if the user get all the letters, end the program
    if wordcorrect == length(unique(word))
        %display message to the user that he/she win
        fprintf("The word is %s\n", word);
        fprintf("You win mate!!! \nYou are awesome.\n");
        break;
    end
   
    
    %add up the turn by 1
    turn = turn + 1;
end

%loop with wrongguess == 7, display the user lost
if wrongguess == 7
    fprintf("You have lost the game.\n");
    fprintf("The word is %s\n", word);
end



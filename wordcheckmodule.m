%Written by Manh Ha Nguyen _ Aug-Sep.2021
%function to check if the userinput is correct or not and print out message
%to the user
%--------------------------%

%name the function
function [iscorrect,iswrong] = wordcheckmodule(userinput, word)

%give initial value for iscorrect, iswrong
iscorrect = 0;
iswrong = 0;

%check if the user guess is in the word
if ismember(userinput, word) == true 
    
    %increase the number of correct letter by 1
    iscorrect = iscorrect + 1;
    
    %let the user know that he/her is correct
    fprintf("That is correct. \n");
    
    %display dashes to imply a new turn start under the dash
    fprintf("===========================================================\n");
        
        
%if letter is not in the word    
else
    
    %display message to the user that he/she have wrong guess
    fprintf("Wrong guess my friend. \n");
    
    %display dashes to imply a new turn start under the dash
    fprintf("===========================================================\n");
        
    %increase the number of incorrect guess by 1
    iswrong = iswrong + 1;
end





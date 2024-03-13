%Written by Manh Ha Nguyen _ Aug-Sep.2021
%Driver code for wordcheckmodule.m
%--------------------------%

%for the purpose of testing, assign string to word variable
word = 'abcdefg';

%get user input
userinput = input("please enter a letter ", 's');

%check if the user input correct or wrong
[iscorrect, iswrong] = wordcheckmodule(userinput, word);

%print out value for iscorrect, iswrong
iscorrect
iswrong

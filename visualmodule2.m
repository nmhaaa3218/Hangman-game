%Written by Manh Ha Nguyen _ Aug-Sep.2021
%Hangman visual module 1
%display hangman figure according to number of wrong guess
%-------------------------%

%name the function
function [] = visualmodule2(wrongguess)
    
    %switch case for the number of wrong guess
    switch wrongguess
    case 0
        fprintf(" ___________ \n");
        fprintf("||          \n");
        fprintf("||           \n");
        fprintf("||            \n");
        fprintf("||           \n");
        fprintf("||           \n");
        fprintf("||           \n");
    case 1
        fprintf(" ___________ \n");
        fprintf("||         | \n");
        fprintf("||           \n");
        fprintf("||            \n");
        fprintf("||           \n");
        fprintf("||           \n");
        fprintf("||           \n");
    case 2
        fprintf(" ___________ \n");
        fprintf("||         | \n");
        fprintf("||         O \n");
        fprintf("||           \n");
        fprintf("||           \n");
        fprintf("||           \n");
        fprintf("||           \n");
    case 3
        fprintf(" ___________ \n");
        fprintf("||         | \n");
        fprintf("||         O \n");
        fprintf("||         |  \n");
        fprintf("||           \n");
        fprintf("||           \n");
        fprintf("||           \n");
    case 4
        fprintf(" ___________ \n");
        fprintf("||         | \n");
        fprintf("||         O \n");
        fprintf("||        ~|  \n");
        fprintf("||           \n");
        fprintf("||           \n");
        fprintf("||           \n");
    case 5
        fprintf(" ___________ \n");
        fprintf("||         | \n");
        fprintf("||         O \n");
        fprintf("||        ~|~ \n");
        fprintf("||           \n");
        fprintf("||           \n");
        fprintf("||           \n");
    case 6
        fprintf(" ___________ \n");
        fprintf("||         | \n");
        fprintf("||         O \n");
        fprintf("||        ~|~ \n");
        fprintf("||         | \n");
        fprintf("||           \n");
        fprintf("||           \n");
    case 7
        fprintf(" ___________ \n");
        fprintf("||         | \n");
        fprintf("||         O \n");
        fprintf("||        ~|~ \n");
        fprintf("||         | \n");
        fprintf("||         ^ \n");
        fprintf("||           \n");
        return;
    end
    
end



      
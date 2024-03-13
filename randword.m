%Written by Manh Ha Nguyen _ Aug-Sep.2021
%Function to generate random word
%------------------------------%

function word = randword()

%import data from external files
%credit to https://englishgrammarhere.com/vocabulary/10000-most-common-words-in-english/
filename = '9998englishwords.txt';
database = importdata(filename);

%give random seed
rng('shuffle');

%generate a random number to pick a random word
randnum = round(rand()*9997) + 1;

%convert data type of a single array to character array 
word = char(database(randnum));

end
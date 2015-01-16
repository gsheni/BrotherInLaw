%Brother in law relationship
%Written by Gaurav Sheni
%CSC 371
%To use
% brotherinlaw(male, female)
% the 1st argument must be a male and the 2nd argument must be a female
%
:-
	nl,
	write('Brother in Law Relationship'),
	nl,nl,
	write('To begin, please enter an input as such'),
	nl,nl,
	write('brotherinlaw(male,female)'),
	nl,nl.

female(joan).
female(cindy).
female(nancy).
female(jennifer).
male(andy).
male(joe).
male(jim).
male(tony).
male(ted).
male(gary).
sister(cindy, joan).
sister(joan, cindy).
sister(joan, nancy).
sister(nancy, joan).
sister(joan, jennifer).
sister(jennifer, joan).
sister(cindy, nancy).
sister(nancy, cindy).
sister(cindy, jennifer).
sister(jennifer, cindy).
sister(nancy, jennifer).
sister(jennifer, nancy).
brother(andy, joe).
brother(joe, andy).
brother(jim, tony).
brother(tony, jim).
brother(jim, ted).
brother(ted, jim).
married(nancy, andy).
married(jennifer, jim).
married(joan, gary).
married(andy, nancy).
married(jim, jennifer).
married(gary, joan).
brotherinlaw(X,Y):-
	male(X), female(Y),
	brother(X,P), married(P,Y).
brotherinlaw(X,Y):-
	male(X), female(Y),
	married(X,Z), sister(Z,Y).

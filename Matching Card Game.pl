card(1,2).
card(1,14).

card(2,11).
card(2,13).

card(3,4).
card(3,5).

card(4,3).
card(4,9).

card(5,6).
card(5,15).

card(6,8).
card(6,10).

card(7,12).
card(7,7).

card(8,1).
card(8,16).

match_turn(Match,Match_count):- Match_count is Match+1.

incr(Counter,Counter_):- Counter_ is Counter+1.


is_match(W,Z,X,Y,Match1,Match_count) :- card(W,X), card(Z,Y),W == Z -> (write("You got match at "),
                    write(X),write(" and "),write(Y),write(" of card "),write(W),write(" \n"),match_turn(Match1,Match_count));
                    card(W,X),card(Z,Y),W =\= Z -> (write("They are not match."),
                    write(" At "),write(X),write(", there is card "),write(W),write(". At "),write(Y),
                    write(", there is card "),write(Z),write(" \n")),Match_count = Match1.
main(Match,Counter):-
    
    Match < 8 ->
	(write("\nPlease inputs your input data x to play game:"), read(Data1),
    write("\nPlease inputs your input data y to play game:\n "),read(Data2),incr(Counter,Counter_), is_match(Card1,Card2,Data1,Data2,Match,Match_count),main(Match_count,Counter_));
	
	write("\nAll Match. Score: "),write(Counter),write("\nGoodbye").
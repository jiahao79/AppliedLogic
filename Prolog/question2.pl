%% In Feb of 2011, Jeopardy invited two top human champions and IBM's computer program
%% Watson in a competition between the best of human and the computer in this wellknown quiz
%% show. On day 2, the Final Jeopardy is a question in the category: US cities. The clue is: Its
%% largest airport is named for a World War II hero; its second largest, for a World War II battle. The
%% two human champions answered it correctly (Chicago), but Watson answered "Toronto", and it
%% only betted a small amount of money.
%% Write a Prolog program so when the question is asked, the correct answer will be returned. You
%%need to include a dozen or so US cities, airport names, WWII hero names, and so on. Load your
%% code in Prolog, issue the query, and see if Program can return the correct answer (also include 12
%% screenshots). To make the Prolog programming easier, you could modify the clue to be
%% "One of its airport is named for a World War II hero; the other airport, for a World War II battle".

%% Its largest airport is named for a World War II hero
%% Its second largest, for a World War II battle

airport(pearson).
airport(ottawaInternational).
airport(vancouverInternational).
airport(ohare).
airport(newyorkInternational).
airport(logan).
airport(miamiInternational).
airport(losAngelesInternational).
airport(philadelphiaInternational).
airport(nashvilleInternational).
airport(hobby).
airport(mccaran).

city(toronto).
city(ottawa).
city(vancouver).
city(chicago).
city(newyork).
city(boston).
city(miami).
city(losangeles).
city(philadelphia).
city(nashville).
city(houston).
city(lasvegas).

hero(ohare).
hero(churchill).
hero(eisenhower).
hero(patton).
hero(bader).
hero(reid).
hero(cheshire).
hero(wallenberg).

has_airport(toronto,pearson).
has_airport(ottawa,ottawaInternational).
has_airport(vancouver,vancouverInternational).
has_airport(chicago,ohare).
has_airport(newyork,newyorkInternational).
has_airport(boston,logan).
has_airport(miami,miamiInternational).
has_airport(losangeles,losAngelesInternational).
has_airport(philadelphia,philadelphiaInternational).
has_airport(nashville,nashvilleInternational).
has_airport(houston,hobby).
has_airport(lasvegas,mccaran).

battle(midway).
battle(atlantic).
battle(normandy).
battle(anzio).
battle(metz).
battle(bulge).
battle(dunkirk).
battle(astonia).
battle(cherbourg).
battle(caen).
battle(lille).
battle(arras).

has_airport(toronto,bishop).
has_airport(ottawa,rockcliffe).
has_airport(vancouver,langley).
has_airport(chicago,midway).
has_airport(newyork,newark).
has_airport(boston,worcester).
has_airport(miami,fort).
has_airport(losangeles,wayne).
has_airport(philadelphia,newcastle).
has_airport(nashville,tune).
has_airport(houston,ellington).
has_airport(lasvegas,north).

has_airport(X,Y,Z) :- has_airport(X,Y),has_airport(X,Z),hero(Y),battle(Z),Y\=Z.

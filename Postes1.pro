predicates
nondeterm
  beli(symbol,symbol,symbol)
  orang(symbol) - nondeterm (o)
  mi(symbol)
  tersedia(symbol,symbol)
  suka_mi(symbol,symbol) - nondeterm (i,o)
  toko(symbol)
  
clauses
  beli(X,Y,Z):-
  	orang(X),
  	suka_mi(X,Y),
  	mi(Y),
  	tersedia(Y,Z),
  	toko(Z).
  
  orang(mahatir).
  orang(andre).
  orang(fajar).

  mi(sedaap).
  mi(indomie).
  
  suka_mi(fajar, sedaap).
  suka_mi(fajar, indomie).
  suka_mi(andre, indomie).  
  suka_mi(mahatir, sedaap).
  suka_mi(mahatir, indomie). 
  
  tersedia(sedaap,indomaret).
  tersedia(indomie,indomaret).
  tersedia(indomie,warung).
  
  toko(indomaret).
  toko(warung).
goal
  beli(X,Y,warung).

  
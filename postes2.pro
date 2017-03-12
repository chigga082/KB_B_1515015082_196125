predicates
nondeterm
  beli(symbol,symbol,symbol)
  orang(symbol) - nondeterm (o)
  makanan(symbol)
  tersedia(symbol,symbol)
  suka_makanan(symbol,symbol) - nondeterm (i,o) 
  toko(symbol)
  
clauses
  beli(X,Y,Z):-
  	orang(X),
  	suka_makanan(X,Y),
  	makanan(Y),
  	tersedia(Y,Z),
  	toko(Z).

  orang(syamsul).
  orang(kating).
  orang(asyahrul).

  makanan(korea).
  makanan(jepang).

  suka_makanan(syamsul, korea).
  suka_makanan(syamsul, jepang).
  suka_makanan(kating, jepang).  
  suka_makanan(asyahrul, korea).
  suka_makanan(asyahrul, jepang). 

  tersedia(korea,indomaret).
  tersedia(korea,mall).
  tersedia(jepang,alfamart).
  tersedia(jepang,mall).

  toko(indomaret).
  toko(alfamart).
  toko(mall).
goal
  beli(X,Y,mall).

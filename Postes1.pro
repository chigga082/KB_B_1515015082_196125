predicates
nondeterm
/*beberapa predikat tidak bekerja jika menggunakan 
nondeterm yang bersifat general oleh karena itu
ada beberapa predikat yang menggunakan nondeterm yang
bersifat khusus*/
  beli(symbol,symbol,symbol)
  orang(symbol) - nondeterm (o)
  mi(symbol)
  tersedia(symbol,symbol)
  suka_mi(symbol,symbol) - nondeterm (i,o) 
  toko(symbol)
  
clauses
/*
ini merupakan clausa pertama untuk menentukan 
nama pembeli, mi yang dibeli, dan toko yang 
menyediakan mi tsb
*/
  beli(X,Y,Z):-
  	orang(X),
  	suka_mi(X,Y),
  	mi(Y),
  	tersedia(Y,Z),
  	toko(Z).
/*
ini untuk menentukan orang yang terlibat
*/  
  orang(mahatir).
  orang(andre).
  orang(fajar).
/*
ini untuk menentukan nama mi yang dibutuhkan
*/
  mi(sedaap).
  mi(indomie).
/*
ini untuk menghubungkan orang-orang yang suka kepada
jenis-jenis mi yang sudah ditetapkna diatas
*/
  suka_mi(fajar, sedaap).
  suka_mi(fajar, indomie).
  suka_mi(andre, indomie).  
  suka_mi(mahatir, sedaap).
  suka_mi(mahatir, indomie). 
/*
ini untuk menentukan toko yang menjual
mi yang disebutkan diatas
*/
  tersedia(sedaap,indomaret).
  tersedia(indomie,indomaret).
  tersedia(indomie,warung).
/*
ini untuk menentukan toko yang terlibat
*/
  toko(indomaret).
  toko(warung).
goal
/*
goal nya adalah untuk mencari nama orang dan mi
kesukaannya pada toko yaitu warung
*/
  beli(X,Y,warung).

  
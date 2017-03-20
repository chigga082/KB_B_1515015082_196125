DOMAINS
%untuk memudahkan dalam pendefinisian variabel saya mendeklarasikan terlebih dahulu pada section domain
%disini ada 4 variabel yaitu s untuk shift, h untuk hari, o untuk orang, dan t untuk waktu
  s,h,o,t=symbol
PREDICATES
%disini terdapat 5 predikat, yang pertama untuk shift, kedua untuk jadwal dan hari
%ketiga untuk shift dan orang-orangnya, keempat untuk menetapkan shift,hari dan waktu
%dan yang terakhir untuk mencari kondisi berdasarkan hari dan waktu untuk shift dan orang-orang tertentu
  nondeterm shift(s)
  nondeterm jadwal(h,h,h,h,h,h,t,t,t)
  nondeterm kerja(s,o,o,o)
  nondeterm masuk(s,h,t)
  nondeterm pada(h,t,s,o,o,o)
CLAUSES
  shift(shift_a).
  shift(shift_b).
  shift(shift_c).

  jadwal(senin,selasa,rabu,kamis,jumat,sabtu,pagi,siang,malam).
  
  kerja(shift_a,nami,luffy,sanji).
  kerja(shift_b,chopper,ussop,brook).
  kerja(shift_c,frengki,zorro,robin).
%predikat ini berfungsi untuk menentukan jadwal-jadwal untuk setiap shift
  masuk(shift_a,W,X):-
    jadwal(W,_,_,_,_,_,X,_,_);jadwal(_,_,_,W,_,_,X,_,_);
    jadwal(_,W,_,_,_,_,_,X,_);jadwal(_,_,_,_,W,_,_,X,_);
    jadwal(_,_,W,_,_,_,_,_,X);jadwal(_,_,_,_,_,W,_,_,X).
  masuk(shift_b,W,X):-
    jadwal(W,_,_,_,_,_,_,X,_);jadwal(_,_,_,W,_,_,_,X,_);
    jadwal(_,W,_,_,_,_,_,_,X);jadwal(_,_,_,_,W,_,_,_,X);
    jadwal(_,_,W,_,_,_,X,_,_);jadwal(_,_,_,_,_,W,X,_,_).
  masuk(shift_c,W,X):-
    jadwal(W,_,_,_,_,_,_,_,X);jadwal(_,_,_,W,_,_,_,_,X);
    jadwal(_,W,_,_,_,_,X,_,_);jadwal(_,_,_,_,W,_,X,_,_);
    jadwal(_,_,W,_,_,_,_,X,_);jadwal(_,_,_,_,_,W,_,X,_).
%predikat pada ini berfungsi untuk menentukan hari,waktu,shift dan orang-orang yang bekerja
%predikat ini bergantung dari predikat masuk dan kerja     
  pada(W,X,Shift,O1,O2,O3):-
    masuk(Shift,W,X),
    kerja(Shift,O1,O2,O3).
GOAL
%tujuan dari program ini adalaha untuk mencari shift dan orang-orang yang terlibat pada hari kamis malam
  pada(kamis,malam,Shift,O1,O2,O3).
  
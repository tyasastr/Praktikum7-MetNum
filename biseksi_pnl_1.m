% metode biseksi pnl 1

function c = Biseksi(f,a,b,n,tol)
  f = @(x) 3*x.^3-5*x.^2+4*x-7;
  a = 0;
  b = 2.5;
  n = 20;
  tol = 0.0001;
  %hitung nilai dari fungsi f pada titik a dan b
  fa = f(a);
  fb = f(b);

  %cek apakah fa dan fb memiliki tanda yang sama
  if fa*fb > 0
    error('Warning tanda sama (f(a)f(b) > 0), tidak ada akar!')
  endif

  fprintf('\nIter\ta\t\tb\t\tfa\t\tfb\t\tc\t\tfc\n');

  %iterasi pencarian akar menggunakan metode biseksi
  for i=1:n
    c = (a+b)/2; %rumus metode biseksi
    fc = f(c);
    %cetak nilai
     fprintf('%d\t%f\t%f\t%f\t%f\t%f\t%f\n',
            i,a,b,fa,fb,c,fc);

  %menghentikan iterasi saat mencapai batas toleransi error
  if abs(c-a) <= tol || abs(c-b) <= tol
      break;
    endif

  %Jika fa atau fc bernilai 0 maka akar ditemukan
  if fa*fc == 0
    break;
  %kondisi dimana akar berada diantara a dan c, nilai c menggantikan b
  elseif fa*fc < 0
    b = c;
    fb = f(b);
  %akar berada diantara b dan c, sehingga nilai c menggantikan nilai a
  else
    a = c;
    fa = f(a);
  endif
 endfor
end

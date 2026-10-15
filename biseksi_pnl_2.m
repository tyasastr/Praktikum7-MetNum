% metode biseksi pnl 2

function c = Biseksi(f,a,b,n,tol)
  f = @(x) exp(x) - x.^2;
  a = -1;
  b = 2.5;
  n = 20;
  tol = 10^-4;
  %hitung nilai dari fungsi f pada titik a dan b
  fa = f(a);
  fb = f(b);

  %cek apakah fa dan fb memiliki tanda yang sama
  if fa*fb > 0
    error('Warning tanda sama (f(a)f(b) > 0), tidak ada akar!')
  endif

  fprintf('\nIter\ta\t\tb\t\tfa\t\tfb\t\tc\t\tfc\n');

  %Iterasi pencarian akar
  for i=1:n
    c = (a+b)/2;
    fc = f(c);
    %cetak nilai
    fprintf('%d\t%f\t%f\t%f\t%f\t%f\t%f\n',
            i,a,b,fa,fb,c,fc);

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

% metode regula falsi pnl 1

function c = RegulasiFalsi(f,a,b,n,tol)
  % f(x) = 3*x^3 - 5*x^2 + 4*x - 7
  % y = 1
  % f(x) = y
  % 3*x^3 - 5*x^2 + 4*x - 7 = 1
  % 3*x^3 - 5*x^2 + 4*x - 7 _ 1 = 0
  % 3*x^3 - 5*x^2 + 4*x - 8 = 0, maka:
  f = @(x) 3*x.^3-5*x.^2+4*x-8;
  a = 0;
  b = 2.5;
  n = 20;
  tol = 10^-4;
  %menghitung nilai dari fungsi f pada titik a & b
  fa = f(a);
  fb = f(b);

  %cek apakah fa dan fb memiliki tanda yang sama
  if fa*fb > 0
    error('Warning tanda sama.')
  endif

  fprintf('\nIter\ta\t\tb\t\tfa\t\tfb\t\tc\t\tfc\n');

  %Iterasi pencarian akar menggunakan metode regulasi falsi
  for i = 1:n
    c = (a*fb-b*fa)/(fb-fa); %rumus metode regulasi falsi
    fc = f(c);
    %cetak nilai
    fprintf('%d\t%f\t%f\t%f\t%f\t%f\t%f\n',
            i,a,b,fa,fb,c,fc);

    if abs(c-a) <= tol || abs(c-b) <= tol
      break;
    endif

    %jika fa atau fc bernilai 0 maka akar ditemukan
    if fa*fc == 0
      break;
    elseif fa*fc < 0
      b = c;
      fb = f(b);
    else
      a = c;
      fa = f(a);
    endif
  endfor
 end

% metode regula falsi pnl 3

function c = RegulasiFalsi(f,a,b,n,tol)
  f = @(x) log(x+2) + 2*x - 3;
  a = 0;
  b = 2.5;
  n = 20;
  tol = 10^-4;

  %hitung nilai dari fungsi f pada titik a dan b
  fa = f(a);
  fb = f(b);

  %cek fa dan fb memiliki tanda yang sama atau tidak
  if fa*fb > 0
    error('Warning tanda sama.')
  endif

  fprintf('\nIter\ta\t\tb\t\tfa\t\tfb\t\tc\t\tfc\n');

  %Iterasi menggunakan regulasi falsi
  for i=1:n
    c = (a*fb-b*fa)/(fb-fa);
    fc = f(c);
    %mencetak nilai
    fprintf ('%d\t%f\t%f\t%f\t%f\t%f\t%f\n', i,a,b,fa,fb,c,fc);

    if abs(c-a) <= tol || abs(c-b) <= tol
      break;
    endif

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

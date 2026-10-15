% metode regula falsi pnl 2

function c = RegulasiFalsi(f,a,b,n,tol)
  f = @(x) exp(x) - x.^2;
  a = -1;
  b = 2.5;
  n = 20;
  tol = 1e-4;

  %Menghitung nilai dari fungsi f pada titik a dan b
  fa = f(a);
  fb = f(b);

  %Cek apakah fa dan fb memiliki tanda yang berbeda
  if fa*fb>0
    error('Warning nilai f(a) dan f(b) harus memiliki tanda yang berbeda.');
  end

  fprintf('\nIter\t\ta\t\tb\t\tfa\t\tfb\t\tc\t\tfc\n');

  %Iterasi menggunakan regulasi falsi
  for i = 1:n
    c = (a * fb - b *fa) / (fb -fa);
    fc = f(c);

    %cetak nilai setiap iterasi
    fprintf('%d\t\t%f\t%f\t%f\t%f\t%f\t%f\n', i,a,b,fa,fb,c,fc);

    %menghentikan iterasi saat error mencapai batas toleransi
    if abs(fc) <= tol || abs(c - a) <= tol || abs(c - b) <= tol
      fprintf('\nAkar ditemukan pada x = %f setelah %d iterasi\n', c, i);
      return
    end

    %Memperbarui interval
    if fa * fc < 0
      b = c;
      fb = fc;
    else
      a = c;
      fa = fc;
    end
  end

  fprintf('\nAkar tidak ditemukan setelah %d iterasi. Hasil terakhir adalah x = %f\n', n,c);
end


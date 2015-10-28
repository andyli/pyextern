/* This file is generated, do not edit! */
package scipy;
@:pythonImport("scipy.fftpack") extern class Fftpack {
	static public function cc_diff(x:Dynamic, a:Dynamic, b:Dynamic, ?period:Dynamic = null, ?_cache:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cs_diff(x:Dynamic, a:Dynamic, b:Dynamic, ?period:Dynamic = null, ?_cache:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function dct(x:Dynamic, ?type:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?norm:Dynamic = null, ?overwrite_x:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function diff(x:Dynamic, ?order:Dynamic, ?period:Dynamic = null, ?_cache:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function dst(x:Dynamic, ?type:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?norm:Dynamic = null, ?overwrite_x:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fft(x:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?overwrite_x:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fft2(x:Dynamic, ?shape:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fftfreq(n:Dynamic, ?d:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fftn(x:Dynamic, ?shape:Dynamic = null, ?axes:Dynamic = null, ?overwrite_x:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fftshift(x:Dynamic, ?axes:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hilbert(x:Dynamic, ?_cache:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function idct(x:Dynamic, ?type:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?norm:Dynamic = null, ?overwrite_x:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function idst(x:Dynamic, ?type:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?norm:Dynamic = null, ?overwrite_x:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ifft(x:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?overwrite_x:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ifft2(x:Dynamic, ?shape:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ifftn(x:Dynamic, ?shape:Dynamic = null, ?axes:Dynamic = null, ?overwrite_x:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ifftshift(x:Dynamic, ?axes:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ihilbert(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function irfft(x:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?overwrite_x:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function itilbert(x:Dynamic, h:Dynamic, ?period:Dynamic = null, ?_cache:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rfft(x:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?overwrite_x:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rfftfreq(n:Dynamic, ?d:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sc_diff(x:Dynamic, a:Dynamic, b:Dynamic, ?period:Dynamic = null, ?_cache:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function shift(x:Dynamic, a:Dynamic, ?period:Dynamic = null, ?_cache:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ss_diff(x:Dynamic, a:Dynamic, b:Dynamic, ?period:Dynamic = null, ?_cache:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tilbert(x:Dynamic, h:Dynamic, ?period:Dynamic = null, ?_cache:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
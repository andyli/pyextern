/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy.fft") extern class Fft {
	static public function fft(a:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?norm:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fft2(a:Dynamic, ?s:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fftfreq(n:Dynamic, ?d:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fftn(a:Dynamic, ?s:Dynamic = null, ?axes:Dynamic = null, ?norm:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fftshift(x:Dynamic, ?axes:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hfft(a:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?norm:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ifft(a:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?norm:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ifft2(a:Dynamic, ?s:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ifftn(a:Dynamic, ?s:Dynamic = null, ?axes:Dynamic = null, ?norm:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ifftshift(x:Dynamic, ?axes:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ihfft(a:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?norm:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function irfft(a:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?norm:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function irfft2(a:Dynamic, ?s:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function irfftn(a:Dynamic, ?s:Dynamic = null, ?axes:Dynamic = null, ?norm:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rfft(a:Dynamic, ?n:Dynamic = null, ?axis:Dynamic, ?norm:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rfft2(a:Dynamic, ?s:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rfftfreq(n:Dynamic, ?d:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rfftn(a:Dynamic, ?s:Dynamic = null, ?axes:Dynamic = null, ?norm:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
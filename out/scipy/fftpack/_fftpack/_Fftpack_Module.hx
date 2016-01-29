/* This file is generated, do not edit! */
package scipy.fftpack._fftpack;
@:pythonImport("scipy.fftpack._fftpack") extern class _Fftpack_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		cfft - Function signature:
		  y = cfft(x,[n,direction,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  direction := 1 input int
		  normalize := (direction<0) input int
		Return objects:
		  y : rank-1 array('F') with bounds (*) and x storage
	**/
	static public function cfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cfftnd - Function signature:
		  y = cfftnd(x,[s,direction,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  s := old_shape(x,j++) input rank-1 array('i') with bounds (r)
		  direction := 1 input int
		  normalize := (direction<0) input int
		Return objects:
		  y : rank-1 array('F') with bounds (*) and x storage
	**/
	static public function cfftnd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		crfft - Function signature:
		  y = crfft(x,[n,direction,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  overwrite_x := 1 input int
		  n := size(x) input int
		  direction := 1 input int
		  normalize := (direction<0) input int
		Return objects:
		  y : rank-1 array('F') with bounds (*) and x storage
	**/
	static public function crfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dct1 - Function signature:
		  y = dct1(x,[n,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  normalize := 0 input int
		Return objects:
		  y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function dct1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dct2 - Function signature:
		  y = dct2(x,[n,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  normalize := 0 input int
		Return objects:
		  y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function dct2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dct3 - Function signature:
		  y = dct3(x,[n,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  normalize := 0 input int
		Return objects:
		  y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function dct3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ddct1 - Function signature:
		  y = ddct1(x,[n,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  normalize := 0 input int
		Return objects:
		  y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function ddct1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ddct2 - Function signature:
		  y = ddct2(x,[n,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  normalize := 0 input int
		Return objects:
		  y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function ddct2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ddct3 - Function signature:
		  y = ddct3(x,[n,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  normalize := 0 input int
		Return objects:
		  y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function ddct3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ddst1 - Function signature:
		  y = ddst1(x,[n,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  normalize := 0 input int
		Return objects:
		  y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function ddst1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ddst2 - Function signature:
		  y = ddst2(x,[n,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  normalize := 0 input int
		Return objects:
		  y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function ddst2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ddst3 - Function signature:
		  y = ddst3(x,[n,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  normalize := 0 input int
		Return objects:
		  y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function ddst3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_cfft_cache - Function signature:
		destroy_cfft_cache()
	**/
	static public function destroy_cfft_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_cfftnd_cache - Function signature:
		destroy_cfftnd_cache()
	**/
	static public function destroy_cfftnd_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_dct1_cache - Function signature:
		destroy_dct1_cache()
	**/
	static public function destroy_dct1_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_dct2_cache - Function signature:
		destroy_dct2_cache()
	**/
	static public function destroy_dct2_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_ddct1_cache - Function signature:
		destroy_ddct1_cache()
	**/
	static public function destroy_ddct1_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_ddct2_cache - Function signature:
		destroy_ddct2_cache()
	**/
	static public function destroy_ddct2_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_ddst1_cache - Function signature:
		destroy_ddst1_cache()
	**/
	static public function destroy_ddst1_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_ddst2_cache - Function signature:
		destroy_ddst2_cache()
	**/
	static public function destroy_ddst2_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_drfft_cache - Function signature:
		destroy_drfft_cache()
	**/
	static public function destroy_drfft_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_dst1_cache - Function signature:
		destroy_dst1_cache()
	**/
	static public function destroy_dst1_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_dst2_cache - Function signature:
		destroy_dst2_cache()
	**/
	static public function destroy_dst2_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_rfft_cache - Function signature:
		destroy_rfft_cache()
	**/
	static public function destroy_rfft_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_zfft_cache - Function signature:
		destroy_zfft_cache()
	**/
	static public function destroy_zfft_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_zfftnd_cache - Function signature:
		destroy_zfftnd_cache()
	**/
	static public function destroy_zfftnd_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		drfft - Function signature:
		  y = drfft(x,[n,direction,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  direction := 1 input int
		  normalize := (direction<0) input int
		Return objects:
		  y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function drfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dst1 - Function signature:
		  y = dst1(x,[n,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  normalize := 0 input int
		Return objects:
		  y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function dst1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dst2 - Function signature:
		  y = dst2(x,[n,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  normalize := 0 input int
		Return objects:
		  y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function dst2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dst3 - Function signature:
		  y = dst3(x,[n,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  normalize := 0 input int
		Return objects:
		  y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function dst3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		rfft - Function signature:
		  y = rfft(x,[n,direction,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  direction := 1 input int
		  normalize := (direction<0) input int
		Return objects:
		  y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function rfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zfft - Function signature:
		  y = zfft(x,[n,direction,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  n := size(x) input int
		  direction := 1 input int
		  normalize := (direction<0) input int
		Return objects:
		  y : rank-1 array('D') with bounds (*) and x storage
	**/
	static public function zfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zfftnd - Function signature:
		  y = zfftnd(x,[s,direction,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  s := old_shape(x,j++) input rank-1 array('i') with bounds (r)
		  direction := 1 input int
		  normalize := (direction<0) input int
		Return objects:
		  y : rank-1 array('D') with bounds (*) and x storage
	**/
	static public function zfftnd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zrfft - Function signature:
		  y = zrfft(x,[n,direction,normalize,overwrite_x])
		Required arguments:
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  overwrite_x := 1 input int
		  n := size(x) input int
		  direction := 1 input int
		  normalize := (direction<0) input int
		Return objects:
		  y : rank-1 array('D') with bounds (*) and x storage
	**/
	static public function zrfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
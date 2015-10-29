/* This file is generated, do not edit! */
package scipy.fftpack;
@:pythonImport("scipy.fftpack._fftpack") extern class _Fftpack {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		y = cfft(x,[n,direction,normalize,overwrite_x])
		
		Wrapper for ``cfft``.
		
		Parameters
		----------
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		direction : input int, optional
		    Default: 1
		normalize : input int, optional
		    Default: (direction<0)
		
		Returns
		-------
		y : rank-1 array('F') with bounds (*) and x storage
	**/
	static public function cfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = cfftnd(x,[s,direction,normalize,overwrite_x])
		
		Wrapper for ``cfftnd``.
		
		Parameters
		----------
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		s : input rank-1 array('i') with bounds (r), optional
		    Default: old_shape(x,j++)
		direction : input int, optional
		    Default: 1
		normalize : input int, optional
		    Default: (direction<0)
		
		Returns
		-------
		y : rank-1 array('F') with bounds (*) and x storage
	**/
	static public function cfftnd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = crfft(x,[n,direction,normalize,overwrite_x])
		
		Wrapper for ``crfft``.
		
		Parameters
		----------
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 1
		n : input int, optional
		    Default: size(x)
		direction : input int, optional
		    Default: 1
		normalize : input int, optional
		    Default: (direction<0)
		
		Returns
		-------
		y : rank-1 array('F') with bounds (*) and x storage
	**/
	static public function crfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = dct1(x,[n,normalize,overwrite_x])
		
		Wrapper for ``dct1``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		normalize : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function dct1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = dct2(x,[n,normalize,overwrite_x])
		
		Wrapper for ``dct2``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		normalize : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function dct2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = dct3(x,[n,normalize,overwrite_x])
		
		Wrapper for ``dct3``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		normalize : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function dct3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = ddct1(x,[n,normalize,overwrite_x])
		
		Wrapper for ``ddct1``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		normalize : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function ddct1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = ddct2(x,[n,normalize,overwrite_x])
		
		Wrapper for ``ddct2``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		normalize : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function ddct2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = ddct3(x,[n,normalize,overwrite_x])
		
		Wrapper for ``ddct3``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		normalize : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function ddct3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = ddst1(x,[n,normalize,overwrite_x])
		
		Wrapper for ``ddst1``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		normalize : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function ddst1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = ddst2(x,[n,normalize,overwrite_x])
		
		Wrapper for ``ddst2``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		normalize : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function ddst2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = ddst3(x,[n,normalize,overwrite_x])
		
		Wrapper for ``ddst3``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		normalize : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function ddst3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_cfft_cache()
		
		Wrapper for ``destroy_cfft_cache``.
	**/
	static public function destroy_cfft_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_cfftnd_cache()
		
		Wrapper for ``destroy_cfftnd_cache``.
	**/
	static public function destroy_cfftnd_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_dct1_cache()
		
		Wrapper for ``destroy_dct1_cache``.
	**/
	static public function destroy_dct1_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_dct2_cache()
		
		Wrapper for ``destroy_dct2_cache``.
	**/
	static public function destroy_dct2_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_ddct1_cache()
		
		Wrapper for ``destroy_ddct1_cache``.
	**/
	static public function destroy_ddct1_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_ddct2_cache()
		
		Wrapper for ``destroy_ddct2_cache``.
	**/
	static public function destroy_ddct2_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_ddst1_cache()
		
		Wrapper for ``destroy_ddst1_cache``.
	**/
	static public function destroy_ddst1_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_ddst2_cache()
		
		Wrapper for ``destroy_ddst2_cache``.
	**/
	static public function destroy_ddst2_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_drfft_cache()
		
		Wrapper for ``destroy_drfft_cache``.
	**/
	static public function destroy_drfft_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_dst1_cache()
		
		Wrapper for ``destroy_dst1_cache``.
	**/
	static public function destroy_dst1_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_dst2_cache()
		
		Wrapper for ``destroy_dst2_cache``.
	**/
	static public function destroy_dst2_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_rfft_cache()
		
		Wrapper for ``destroy_rfft_cache``.
	**/
	static public function destroy_rfft_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_zfft_cache()
		
		Wrapper for ``destroy_zfft_cache``.
	**/
	static public function destroy_zfft_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy_zfftnd_cache()
		
		Wrapper for ``destroy_zfftnd_cache``.
	**/
	static public function destroy_zfftnd_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = drfft(x,[n,direction,normalize,overwrite_x])
		
		Wrapper for ``drfft``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		direction : input int, optional
		    Default: 1
		normalize : input int, optional
		    Default: (direction<0)
		
		Returns
		-------
		y : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function drfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = dst1(x,[n,normalize,overwrite_x])
		
		Wrapper for ``dst1``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		normalize : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function dst1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = dst2(x,[n,normalize,overwrite_x])
		
		Wrapper for ``dst2``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		normalize : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function dst2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = dst3(x,[n,normalize,overwrite_x])
		
		Wrapper for ``dst3``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		normalize : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function dst3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = rfft(x,[n,direction,normalize,overwrite_x])
		
		Wrapper for ``rfft``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		direction : input int, optional
		    Default: 1
		normalize : input int, optional
		    Default: (direction<0)
		
		Returns
		-------
		y : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function rfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = zfft(x,[n,direction,normalize,overwrite_x])
		
		Wrapper for ``zfft``.
		
		Parameters
		----------
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		n : input int, optional
		    Default: size(x)
		direction : input int, optional
		    Default: 1
		normalize : input int, optional
		    Default: (direction<0)
		
		Returns
		-------
		y : rank-1 array('D') with bounds (*) and x storage
	**/
	static public function zfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = zfftnd(x,[s,direction,normalize,overwrite_x])
		
		Wrapper for ``zfftnd``.
		
		Parameters
		----------
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		s : input rank-1 array('i') with bounds (r), optional
		    Default: old_shape(x,j++)
		direction : input int, optional
		    Default: 1
		normalize : input int, optional
		    Default: (direction<0)
		
		Returns
		-------
		y : rank-1 array('D') with bounds (*) and x storage
	**/
	static public function zfftnd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = zrfft(x,[n,direction,normalize,overwrite_x])
		
		Wrapper for ``zrfft``.
		
		Parameters
		----------
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 1
		n : input int, optional
		    Default: size(x)
		direction : input int, optional
		    Default: 1
		normalize : input int, optional
		    Default: (direction<0)
		
		Returns
		-------
		y : rank-1 array('D') with bounds (*) and x storage
	**/
	static public function zrfft(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
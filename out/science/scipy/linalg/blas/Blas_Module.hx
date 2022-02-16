/* This file is generated, do not edit! */
package scipy.linalg.blas;
@:pythonImport("scipy.linalg.blas") extern class Blas_Module {
	static public var HAS_ILP64 : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _blas_alias : Dynamic;
	static public var _cblas : Dynamic;
	static public var _fblas_64 : Dynamic;
	/**
		Return available BLAS/LAPACK functions.
		
		Used also in lapack.py. See get_blas_funcs for docstring.
	**/
	static public function _get_funcs(names:Dynamic, arrays:Dynamic, dtype:Dynamic, lib_name:Dynamic, fmodule:Dynamic, cmodule:Dynamic, fmodule_name:Dynamic, cmodule_name:Dynamic, alias:Dynamic, ?ilp64:Dynamic):Dynamic;
	/**
		Memoized fast path for _get_funcs instances
	**/
	static public function _memoize_get_funcs(func:Dynamic):Dynamic;
	static public var _type_conv : Dynamic;
	static public var _type_score : Dynamic;
	/**
		z = caxpy(x,y,[n,a,offx,incx,offy,incy])
		
		Wrapper for ``caxpy``.
		
		Parameters
		----------
		x : input rank-1 array('F') with bounds (*)
		y : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		a : input complex, optional
		    Default: (1.0, 0.0)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		z : rank-1 array('F') with bounds (*) and y storage
	**/
	static public function caxpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = ccopy(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``ccopy``.
		
		Parameters
		----------
		x : input rank-1 array('F') with bounds (*)
		y : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		y : rank-1 array('F') with bounds (*)
	**/
	static public function ccopy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xy = cdotc(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``cdotc``.
		
		Parameters
		----------
		x : input rank-1 array('F') with bounds (*)
		y : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		xy : complex
	**/
	static public function cdotc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xy = cdotu(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``cdotu``.
		
		Parameters
		----------
		x : input rank-1 array('F') with bounds (*)
		y : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		xy : complex
	**/
	static public function cdotu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = cgbmv(m,n,kl,ku,alpha,a,x,[incx,offx,beta,y,incy,offy,trans,overwrite_y])
		
		Wrapper for ``cgbmv``.
		
		Parameters
		----------
		m : input int
		n : input int
		kl : input int
		ku : input int
		alpha : input complex
		a : input rank-2 array('F') with bounds (lda,n)
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input complex, optional
		    Default: (0.0, 0.0)
		y : input rank-1 array('F') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('F') with bounds (ly) and y storage
	**/
	static public function cgbmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = cgemm(alpha,a,b,[beta,c,trans_a,trans_b,overwrite_c])
		
		Wrapper for ``cgemm``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('F') with bounds (lda,ka)
		b : input rank-2 array('F') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('F') with bounds (m,n)
		overwrite_c : input int, optional
		    Default: 0
		trans_a : input int, optional
		    Default: 0
		trans_b : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (m,n)
	**/
	static public function cgemm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = cgemv(alpha,a,x,[beta,y,offx,incx,offy,incy,trans,overwrite_y])
		
		Wrapper for ``cgemv``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('F') with bounds (m,n)
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		y : input rank-1 array('F') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		trans : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('F') with bounds (ly)
	**/
	static public function cgemv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = cgerc(alpha,x,y,[incx,incy,a,overwrite_x,overwrite_y,overwrite_a])
		
		Wrapper for ``cgerc``.
		
		Parameters
		----------
		alpha : input complex
		x : input rank-1 array('F') with bounds (m)
		y : input rank-1 array('F') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 1
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 1
		incy : input int, optional
		    Default: 1
		a : input rank-2 array('F') with bounds (m,n), optional
		    Default: (0.0,0.0)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('F') with bounds (m,n)
	**/
	static public function cgerc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = cgeru(alpha,x,y,[incx,incy,a,overwrite_x,overwrite_y,overwrite_a])
		
		Wrapper for ``cgeru``.
		
		Parameters
		----------
		alpha : input complex
		x : input rank-1 array('F') with bounds (m)
		y : input rank-1 array('F') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 1
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 1
		incy : input int, optional
		    Default: 1
		a : input rank-2 array('F') with bounds (m,n), optional
		    Default: (0.0,0.0)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('F') with bounds (m,n)
	**/
	static public function cgeru(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = chbmv(k,alpha,a,x,[incx,offx,beta,y,incy,offy,lower,overwrite_y])
		
		Wrapper for ``chbmv``.
		
		Parameters
		----------
		k : input int
		alpha : input complex
		a : input rank-2 array('F') with bounds (lda,n)
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input complex, optional
		    Default: (0.0, 0.0)
		y : input rank-1 array('F') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('F') with bounds (ly) and y storage
	**/
	static public function chbmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = chemm(alpha,a,b,[beta,c,side,lower,overwrite_c])
		
		Wrapper for ``chemm``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('F') with bounds (lda,ka)
		b : input rank-2 array('F') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('F') with bounds (m,n)
		overwrite_c : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (m,n)
	**/
	static public function chemm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = chemv(alpha,a,x,[beta,y,offx,incx,offy,incy,lower,overwrite_y])
		
		Wrapper for ``chemv``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('F') with bounds (n,n)
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		y : input rank-1 array('F') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('F') with bounds (ly)
	**/
	static public function chemv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = cher(alpha,x,[lower,incx,offx,n,a,overwrite_a])
		
		Wrapper for ``cher``.
		
		Parameters
		----------
		alpha : input complex
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		n : input int, optional
		    Default: (len(x)-1-offx)/abs(incx)+1
		a : input rank-2 array('F') with bounds (n,n)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('F') with bounds (n,n)
	**/
	static public function cher(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = cher2(alpha,x,y,[lower,incx,offx,incy,offy,n,a,overwrite_a])
		
		Wrapper for ``cher2``.
		
		Parameters
		----------
		alpha : input complex
		x : input rank-1 array('F') with bounds (*)
		y : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		n : input int, optional
		    Default: ((len(x)-1-offx)/abs(incx)+1 <=(len(y)-1-offy)/abs(incy)+1 ?(len(x)-1-offx)/abs(incx)+1 :(len(y)-1-offy)/abs(incy)+1)
		a : input rank-2 array('F') with bounds (n,n)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('F') with bounds (n,n)
	**/
	static public function cher2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = cher2k(alpha,a,b,[beta,c,trans,lower,overwrite_c])
		
		Wrapper for ``cher2k``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('F') with bounds (lda,ka)
		b : input rank-2 array('F') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('F') with bounds (n,n)
		overwrite_c : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (n,n)
	**/
	static public function cher2k(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = cherk(alpha,a,[beta,c,trans,lower,overwrite_c])
		
		Wrapper for ``cherk``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('F') with bounds (lda,ka)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('F') with bounds (n,n)
		overwrite_c : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (n,n)
	**/
	static public function cherk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = chpmv(n,alpha,ap,x,[incx,offx,beta,y,incy,offy,lower,overwrite_y])
		
		Wrapper for ``chpmv``.
		
		Parameters
		----------
		n : input int
		alpha : input complex
		ap : input rank-1 array('F') with bounds (*)
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input complex, optional
		    Default: (0.0, 0.0)
		y : input rank-1 array('F') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('F') with bounds (ly) and y storage
	**/
	static public function chpmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		apu = chpr(n,alpha,x,ap,[incx,offx,lower,overwrite_ap])
		
		Wrapper for ``chpr``.
		
		Parameters
		----------
		n : input int
		alpha : input float
		x : input rank-1 array('F') with bounds (*)
		ap : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		apu : rank-1 array('F') with bounds (*) and ap storage
	**/
	static public function chpr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		apu = chpr2(n,alpha,x,y,ap,[incx,offx,incy,offy,lower,overwrite_ap])
		
		Wrapper for ``chpr2``.
		
		Parameters
		----------
		n : input int
		alpha : input complex
		x : input rank-1 array('F') with bounds (*)
		y : input rank-1 array('F') with bounds (*)
		ap : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		apu : rank-1 array('F') with bounds (*) and ap storage
	**/
	static public function chpr2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,s = crotg(a,b)
		
		Wrapper for ``crotg``.
		
		Parameters
		----------
		a : input complex
		b : input complex
		
		Returns
		-------
		c : complex
		s : complex
	**/
	static public function crotg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = cscal(a,x,[n,offx,incx])
		
		Wrapper for ``cscal``.
		
		Parameters
		----------
		a : input complex
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('F') with bounds (*)
	**/
	static public function cscal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = cspmv(n,alpha,ap,x,[incx,offx,beta,y,incy,offy,lower,overwrite_y])
		
		Wrapper for ``cspmv``.
		
		Parameters
		----------
		n : input int
		alpha : input complex
		ap : input rank-1 array('F') with bounds (*)
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input complex, optional
		    Default: (0.0, 0.0)
		y : input rank-1 array('F') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('F') with bounds (ly) and y storage
	**/
	static public function cspmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		apu = cspr(n,alpha,x,ap,[incx,offx,lower,overwrite_ap])
		
		Wrapper for ``cspr``.
		
		Parameters
		----------
		n : input int
		alpha : input complex
		x : input rank-1 array('F') with bounds (*)
		ap : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		apu : rank-1 array('F') with bounds (*) and ap storage
	**/
	static public function cspr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y = csrot(x,y,c,s,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		
		Wrapper for ``csrot``.
		
		Parameters
		----------
		x : input rank-1 array('F') with bounds (*)
		y : input rank-1 array('F') with bounds (*)
		c : input float
		s : input float
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-1-offx)/abs(incx)+1
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 0
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('F') with bounds (*)
		y : rank-1 array('F') with bounds (*)
	**/
	static public function csrot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = csscal(a,x,[n,offx,incx,overwrite_x])
		
		Wrapper for ``csscal``.
		
		Parameters
		----------
		a : input float
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('F') with bounds (*)
	**/
	static public function csscal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y = cswap(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``cswap``.
		
		Parameters
		----------
		x : input rank-1 array('F') with bounds (*)
		y : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('F') with bounds (*)
		y : rank-1 array('F') with bounds (*)
	**/
	static public function cswap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = csymm(alpha,a,b,[beta,c,side,lower,overwrite_c])
		
		Wrapper for ``csymm``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('F') with bounds (lda,ka)
		b : input rank-2 array('F') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('F') with bounds (m,n)
		overwrite_c : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (m,n)
	**/
	static public function csymm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = csyr(alpha,x,[lower,incx,offx,n,a,overwrite_a])
		
		Wrapper for ``csyr``.
		
		Parameters
		----------
		alpha : input complex
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		n : input int, optional
		    Default: (len(x)-1-offx)/abs(incx)+1
		a : input rank-2 array('F') with bounds (n,n)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('F') with bounds (n,n)
	**/
	static public function csyr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = csyr2k(alpha,a,b,[beta,c,trans,lower,overwrite_c])
		
		Wrapper for ``csyr2k``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('F') with bounds (lda,ka)
		b : input rank-2 array('F') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('F') with bounds (n,n)
		overwrite_c : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (n,n)
	**/
	static public function csyr2k(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = csyrk(alpha,a,[beta,c,trans,lower,overwrite_c])
		
		Wrapper for ``csyrk``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('F') with bounds (lda,ka)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('F') with bounds (n,n)
		overwrite_c : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('F') with bounds (n,n)
	**/
	static public function csyrk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = ctbmv(k,a,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``ctbmv``.
		
		Parameters
		----------
		k : input int
		a : input rank-2 array('F') with bounds (lda,n)
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('F') with bounds (*) and x storage
	**/
	static public function ctbmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = ctbsv(k,a,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``ctbsv``.
		
		Parameters
		----------
		k : input int
		a : input rank-2 array('F') with bounds (lda,n)
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('F') with bounds (*) and x storage
	**/
	static public function ctbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = ctpmv(n,ap,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``ctpmv``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('F') with bounds (*)
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('F') with bounds (*) and x storage
	**/
	static public function ctpmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = ctpsv(n,ap,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``ctpsv``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('F') with bounds (*)
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('F') with bounds (*) and x storage
	**/
	static public function ctpsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		b = ctrmm(alpha,a,b,[side,lower,trans_a,diag,overwrite_b])
		
		Wrapper for ``ctrmm``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('F') with bounds (lda,k)
		b : input rank-2 array('F') with bounds (ldb,n)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans_a : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		b : rank-2 array('F') with bounds (ldb,n)
	**/
	static public function ctrmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = ctrmv(a,x,[offx,incx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``ctrmv``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-1 array('F') with bounds (*)
	**/
	static public function ctrmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = ctrsm(alpha,a,b,[side,lower,trans_a,diag,overwrite_b])
		
		Wrapper for ``ctrsm``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('F') with bounds (lda,*)
		b : input rank-2 array('F') with bounds (ldb,n)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans_a : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('F') with bounds (ldb,n) and b storage
	**/
	static public function ctrsm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = ctrsv(a,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``ctrsv``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('F') with bounds (*) and x storage
	**/
	static public function ctrsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		s = dasum(x,[n,offx,incx])
		
		Wrapper for ``dasum``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		s : float
	**/
	static public function dasum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		z = daxpy(x,y,[n,a,offx,incx,offy,incy])
		
		Wrapper for ``daxpy``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		y : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		a : input float, optional
		    Default: 1.0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		z : rank-1 array('d') with bounds (*) and y storage
	**/
	static public function daxpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = dcopy(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``dcopy``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		y : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		y : rank-1 array('d') with bounds (*)
	**/
	static public function dcopy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xy = ddot(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``ddot``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		y : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		xy : float
	**/
	static public function ddot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = dgbmv(m,n,kl,ku,alpha,a,x,[incx,offx,beta,y,incy,offy,trans,overwrite_y])
		
		Wrapper for ``dgbmv``.
		
		Parameters
		----------
		m : input int
		n : input int
		kl : input int
		ku : input int
		alpha : input float
		a : input rank-2 array('d') with bounds (lda,n)
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input float, optional
		    Default: 0.0
		y : input rank-1 array('d') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('d') with bounds (ly) and y storage
	**/
	static public function dgbmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = dgemm(alpha,a,b,[beta,c,trans_a,trans_b,overwrite_c])
		
		Wrapper for ``dgemm``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('d') with bounds (lda,ka)
		b : input rank-2 array('d') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input float, optional
		    Default: 0.0
		c : input rank-2 array('d') with bounds (m,n)
		overwrite_c : input int, optional
		    Default: 0
		trans_a : input int, optional
		    Default: 0
		trans_b : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('d') with bounds (m,n)
	**/
	static public function dgemm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = dgemv(alpha,a,x,[beta,y,offx,incx,offy,incy,trans,overwrite_y])
		
		Wrapper for ``dgemv``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('d') with bounds (m,n)
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		beta : input float, optional
		    Default: 0.0
		y : input rank-1 array('d') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		trans : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (ly)
	**/
	static public function dgemv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = dger(alpha,x,y,[incx,incy,a,overwrite_x,overwrite_y,overwrite_a])
		
		Wrapper for ``dger``.
		
		Parameters
		----------
		alpha : input float
		x : input rank-1 array('d') with bounds (m)
		y : input rank-1 array('d') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 1
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 1
		incy : input int, optional
		    Default: 1
		a : input rank-2 array('d') with bounds (m,n), optional
		    Default: 0.0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('d') with bounds (m,n)
	**/
	static public function dger(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		n2 = dnrm2(x,[n,offx,incx])
		
		Wrapper for ``dnrm2``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		n2 : float
	**/
	static public function dnrm2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y = drot(x,y,c,s,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		
		Wrapper for ``drot``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		y : input rank-1 array('d') with bounds (*)
		c : input float
		s : input float
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-1-offx)/abs(incx)+1
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 0
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('d') with bounds (*)
		y : rank-1 array('d') with bounds (*)
	**/
	static public function drot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,s = drotg(a,b)
		
		Wrapper for ``drotg``.
		
		Parameters
		----------
		a : input float
		b : input float
		
		Returns
		-------
		c : float
		s : float
	**/
	static public function drotg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y = drotm(x,y,param,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		
		Wrapper for ``drotm``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		y : input rank-1 array('d') with bounds (*)
		param : input rank-1 array('d') with bounds (5)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 0
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('d') with bounds (*)
		y : rank-1 array('d') with bounds (*)
	**/
	static public function drotm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		param = drotmg(d1,d2,x1,y1)
		
		Wrapper for ``drotmg``.
		
		Parameters
		----------
		d1 : input float
		d2 : input float
		x1 : input float
		y1 : input float
		
		Returns
		-------
		param : rank-1 array('d') with bounds (5)
	**/
	static public function drotmg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = dsbmv(k,alpha,a,x,[incx,offx,beta,y,incy,offy,lower,overwrite_y])
		
		Wrapper for ``dsbmv``.
		
		Parameters
		----------
		k : input int
		alpha : input float
		a : input rank-2 array('d') with bounds (lda,n)
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input float, optional
		    Default: 0.0
		y : input rank-1 array('d') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('d') with bounds (ly) and y storage
	**/
	static public function dsbmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = dscal(a,x,[n,offx,incx])
		
		Wrapper for ``dscal``.
		
		Parameters
		----------
		a : input float
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('d') with bounds (*)
	**/
	static public function dscal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = dspmv(n,alpha,ap,x,[incx,offx,beta,y,incy,offy,lower,overwrite_y])
		
		Wrapper for ``dspmv``.
		
		Parameters
		----------
		n : input int
		alpha : input float
		ap : input rank-1 array('d') with bounds (*)
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input float, optional
		    Default: 0.0
		y : input rank-1 array('d') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('d') with bounds (ly) and y storage
	**/
	static public function dspmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		apu = dspr(n,alpha,x,ap,[incx,offx,lower,overwrite_ap])
		
		Wrapper for ``dspr``.
		
		Parameters
		----------
		n : input int
		alpha : input float
		x : input rank-1 array('d') with bounds (*)
		ap : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		apu : rank-1 array('d') with bounds (*) and ap storage
	**/
	static public function dspr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		apu = dspr2(n,alpha,x,y,ap,[incx,offx,incy,offy,lower,overwrite_ap])
		
		Wrapper for ``dspr2``.
		
		Parameters
		----------
		n : input int
		alpha : input float
		x : input rank-1 array('d') with bounds (*)
		y : input rank-1 array('d') with bounds (*)
		ap : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		apu : rank-1 array('d') with bounds (*) and ap storage
	**/
	static public function dspr2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y = dswap(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``dswap``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		y : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('d') with bounds (*)
		y : rank-1 array('d') with bounds (*)
	**/
	static public function dswap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = dsymm(alpha,a,b,[beta,c,side,lower,overwrite_c])
		
		Wrapper for ``dsymm``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('d') with bounds (lda,ka)
		b : input rank-2 array('d') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input float, optional
		    Default: 0.0
		c : input rank-2 array('d') with bounds (m,n)
		overwrite_c : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('d') with bounds (m,n)
	**/
	static public function dsymm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = dsymv(alpha,a,x,[beta,y,offx,incx,offy,incy,lower,overwrite_y])
		
		Wrapper for ``dsymv``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('d') with bounds (n,n)
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		beta : input float, optional
		    Default: 0.0
		y : input rank-1 array('d') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (ly)
	**/
	static public function dsymv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = dsyr(alpha,x,[lower,incx,offx,n,a,overwrite_a])
		
		Wrapper for ``dsyr``.
		
		Parameters
		----------
		alpha : input float
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		n : input int, optional
		    Default: (len(x)-1-offx)/abs(incx)+1
		a : input rank-2 array('d') with bounds (n,n)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('d') with bounds (n,n)
	**/
	static public function dsyr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = dsyr2(alpha,x,y,[lower,incx,offx,incy,offy,n,a,overwrite_a])
		
		Wrapper for ``dsyr2``.
		
		Parameters
		----------
		alpha : input float
		x : input rank-1 array('d') with bounds (*)
		y : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		n : input int, optional
		    Default: ((len(x)-1-offx)/abs(incx)+1 <=(len(y)-1-offy)/abs(incy)+1 ?(len(x)-1-offx)/abs(incx)+1 :(len(y)-1-offy)/abs(incy)+1)
		a : input rank-2 array('d') with bounds (n,n)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('d') with bounds (n,n)
	**/
	static public function dsyr2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = dsyr2k(alpha,a,b,[beta,c,trans,lower,overwrite_c])
		
		Wrapper for ``dsyr2k``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('d') with bounds (lda,ka)
		b : input rank-2 array('d') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input float, optional
		    Default: 0.0
		c : input rank-2 array('d') with bounds (n,n)
		overwrite_c : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('d') with bounds (n,n)
	**/
	static public function dsyr2k(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = dsyrk(alpha,a,[beta,c,trans,lower,overwrite_c])
		
		Wrapper for ``dsyrk``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('d') with bounds (lda,ka)
		
		Other Parameters
		----------------
		beta : input float, optional
		    Default: 0.0
		c : input rank-2 array('d') with bounds (n,n)
		overwrite_c : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('d') with bounds (n,n)
	**/
	static public function dsyrk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = dtbmv(k,a,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``dtbmv``.
		
		Parameters
		----------
		k : input int
		a : input rank-2 array('d') with bounds (lda,n)
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function dtbmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = dtbsv(k,a,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``dtbsv``.
		
		Parameters
		----------
		k : input int
		a : input rank-2 array('d') with bounds (lda,n)
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function dtbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = dtpmv(n,ap,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``dtpmv``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('d') with bounds (*)
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function dtpmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = dtpsv(n,ap,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``dtpsv``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('d') with bounds (*)
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function dtpsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		b = dtrmm(alpha,a,b,[side,lower,trans_a,diag,overwrite_b])
		
		Wrapper for ``dtrmm``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('d') with bounds (lda,k)
		b : input rank-2 array('d') with bounds (ldb,n)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans_a : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		b : rank-2 array('d') with bounds (ldb,n)
	**/
	static public function dtrmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = dtrmv(a,x,[offx,incx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``dtrmv``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-1 array('d') with bounds (*)
	**/
	static public function dtrmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = dtrsm(alpha,a,b,[side,lower,trans_a,diag,overwrite_b])
		
		Wrapper for ``dtrsm``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('d') with bounds (lda,*)
		b : input rank-2 array('d') with bounds (ldb,n)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans_a : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (ldb,n) and b storage
	**/
	static public function dtrsm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = dtrsv(a,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``dtrsv``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('d') with bounds (*) and x storage
	**/
	static public function dtrsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		s = dzasum(x,[n,offx,incx])
		
		Wrapper for ``dzasum``.
		
		Parameters
		----------
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		s : float
	**/
	static public function dzasum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		n2 = dznrm2(x,[n,offx,incx])
		
		Wrapper for ``dznrm2``.
		
		Parameters
		----------
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		n2 : float
	**/
	static public function dznrm2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find best-matching BLAS/LAPACK type.
		
		Arrays are used to determine the optimal prefix of BLAS routines.
		
		Parameters
		----------
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of BLAS
		    routines. If not given, double-precision routines will be
		    used, otherwise the most generic type in arrays will be used.
		dtype : str or dtype, optional
		    Data-type specifier. Not used if `arrays` is non-empty.
		
		Returns
		-------
		prefix : str
		    BLAS/LAPACK prefix character.
		dtype : dtype
		    Inferred Numpy data type.
		prefer_fortran : bool
		    Whether to prefer Fortran order routines over C order.
		
		Examples
		--------
		>>> import scipy.linalg.blas as bla
		>>> rng = np.random.default_rng()
		>>> a = rng.random((10,15))
		>>> b = np.asfortranarray(a)  # Change the memory layout order
		>>> bla.find_best_blas_type((a,))
		('d', dtype('float64'), False)
		>>> bla.find_best_blas_type((a*1j,))
		('z', dtype('complex128'), False)
		>>> bla.find_best_blas_type((b,))
		('d', dtype('float64'), True)
	**/
	static public function find_best_blas_type(?arrays:Dynamic, ?dtype:Dynamic):String;
	/**
		Return available BLAS function objects from names.
		
		Arrays are used to determine the optimal prefix of BLAS routines.
		
		Parameters
		----------
		names : str or sequence of str
		    Name(s) of BLAS functions without type prefix.
		
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of BLAS
		    routines. If not given, double-precision routines will be
		    used, otherwise the most generic type in arrays will be used.
		
		dtype : str or dtype, optional
		    Data-type specifier. Not used if `arrays` is non-empty.
		
		ilp64 : {True, False, 'preferred'}, optional
		    Whether to return ILP64 routine variant.
		    Choosing 'preferred' returns ILP64 routine if available,
		    and otherwise the 32-bit routine. Default: False
		
		Returns
		-------
		funcs : list
		    List containing the found function(s).
		
		
		Notes
		-----
		This routine automatically chooses between Fortran/C
		interfaces. Fortran code is used whenever possible for arrays with
		column major order. In all other cases, C code is preferred.
		
		In BLAS, the naming convention is that all functions start with a
		type prefix, which depends on the type of the principal
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the NumPy
		types {float32, float64, complex64, complex128} respectively.
		The code and the dtype are stored in attributes `typecode` and `dtype`
		of the returned functions.
		
		Examples
		--------
		>>> import scipy.linalg as LA
		>>> rng = np.random.default_rng()
		>>> a = rng.random((3,2))
		>>> x_gemv = LA.get_blas_funcs('gemv', (a,))
		>>> x_gemv.typecode
		'd'
		>>> x_gemv = LA.get_blas_funcs('gemv',(a*1j,))
		>>> x_gemv.typecode
		'z'
	**/
	static public function get_blas_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic, ?ilp64:Dynamic):Array<Dynamic>;
	/**
		k = icamax(x,[n,offx,incx])
		
		Wrapper for ``icamax``.
		
		Parameters
		----------
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		k : int
	**/
	static public function icamax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		k = idamax(x,[n,offx,incx])
		
		Wrapper for ``idamax``.
		
		Parameters
		----------
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		k : int
	**/
	static public function idamax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		k = isamax(x,[n,offx,incx])
		
		Wrapper for ``isamax``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		k : int
	**/
	static public function isamax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		k = izamax(x,[n,offx,incx])
		
		Wrapper for ``izamax``.
		
		Parameters
		----------
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		k : int
	**/
	static public function izamax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		s = sasum(x,[n,offx,incx])
		
		Wrapper for ``sasum``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		s : float
	**/
	static public function sasum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		z = saxpy(x,y,[n,a,offx,incx,offy,incy])
		
		Wrapper for ``saxpy``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		y : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		a : input float, optional
		    Default: 1.0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		z : rank-1 array('f') with bounds (*) and y storage
	**/
	static public function saxpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		s = scasum(x,[n,offx,incx])
		
		Wrapper for ``scasum``.
		
		Parameters
		----------
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		s : float
	**/
	static public function scasum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		n2 = scnrm2(x,[n,offx,incx])
		
		Wrapper for ``scnrm2``.
		
		Parameters
		----------
		x : input rank-1 array('F') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		n2 : float
	**/
	static public function scnrm2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = scopy(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``scopy``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		y : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		y : rank-1 array('f') with bounds (*)
	**/
	static public function scopy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xy = sdot(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``sdot``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		y : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		xy : float
	**/
	static public function sdot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = sgbmv(m,n,kl,ku,alpha,a,x,[incx,offx,beta,y,incy,offy,trans,overwrite_y])
		
		Wrapper for ``sgbmv``.
		
		Parameters
		----------
		m : input int
		n : input int
		kl : input int
		ku : input int
		alpha : input float
		a : input rank-2 array('f') with bounds (lda,n)
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input float, optional
		    Default: 0.0
		y : input rank-1 array('f') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('f') with bounds (ly) and y storage
	**/
	static public function sgbmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = sgemm(alpha,a,b,[beta,c,trans_a,trans_b,overwrite_c])
		
		Wrapper for ``sgemm``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('f') with bounds (lda,ka)
		b : input rank-2 array('f') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input float, optional
		    Default: 0.0
		c : input rank-2 array('f') with bounds (m,n)
		overwrite_c : input int, optional
		    Default: 0
		trans_a : input int, optional
		    Default: 0
		trans_b : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('f') with bounds (m,n)
	**/
	static public function sgemm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = sgemv(alpha,a,x,[beta,y,offx,incx,offy,incy,trans,overwrite_y])
		
		Wrapper for ``sgemv``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('f') with bounds (m,n)
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		beta : input float, optional
		    Default: 0.0
		y : input rank-1 array('f') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		trans : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('f') with bounds (ly)
	**/
	static public function sgemv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = sger(alpha,x,y,[incx,incy,a,overwrite_x,overwrite_y,overwrite_a])
		
		Wrapper for ``sger``.
		
		Parameters
		----------
		alpha : input float
		x : input rank-1 array('f') with bounds (m)
		y : input rank-1 array('f') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 1
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 1
		incy : input int, optional
		    Default: 1
		a : input rank-2 array('f') with bounds (m,n), optional
		    Default: 0.0
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('f') with bounds (m,n)
	**/
	static public function sger(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		n2 = snrm2(x,[n,offx,incx])
		
		Wrapper for ``snrm2``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		n2 : float
	**/
	static public function snrm2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y = srot(x,y,c,s,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		
		Wrapper for ``srot``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		y : input rank-1 array('f') with bounds (*)
		c : input float
		s : input float
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-1-offx)/abs(incx)+1
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 0
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('f') with bounds (*)
		y : rank-1 array('f') with bounds (*)
	**/
	static public function srot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,s = srotg(a,b)
		
		Wrapper for ``srotg``.
		
		Parameters
		----------
		a : input float
		b : input float
		
		Returns
		-------
		c : float
		s : float
	**/
	static public function srotg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y = srotm(x,y,param,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		
		Wrapper for ``srotm``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		y : input rank-1 array('f') with bounds (*)
		param : input rank-1 array('f') with bounds (5)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 0
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('f') with bounds (*)
		y : rank-1 array('f') with bounds (*)
	**/
	static public function srotm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		param = srotmg(d1,d2,x1,y1)
		
		Wrapper for ``srotmg``.
		
		Parameters
		----------
		d1 : input float
		d2 : input float
		x1 : input float
		y1 : input float
		
		Returns
		-------
		param : rank-1 array('f') with bounds (5)
	**/
	static public function srotmg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = ssbmv(k,alpha,a,x,[incx,offx,beta,y,incy,offy,lower,overwrite_y])
		
		Wrapper for ``ssbmv``.
		
		Parameters
		----------
		k : input int
		alpha : input float
		a : input rank-2 array('f') with bounds (lda,n)
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input float, optional
		    Default: 0.0
		y : input rank-1 array('f') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('f') with bounds (ly) and y storage
	**/
	static public function ssbmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = sscal(a,x,[n,offx,incx])
		
		Wrapper for ``sscal``.
		
		Parameters
		----------
		a : input float
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('f') with bounds (*)
	**/
	static public function sscal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = sspmv(n,alpha,ap,x,[incx,offx,beta,y,incy,offy,lower,overwrite_y])
		
		Wrapper for ``sspmv``.
		
		Parameters
		----------
		n : input int
		alpha : input float
		ap : input rank-1 array('f') with bounds (*)
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input float, optional
		    Default: 0.0
		y : input rank-1 array('f') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('f') with bounds (ly) and y storage
	**/
	static public function sspmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		apu = sspr(n,alpha,x,ap,[incx,offx,lower,overwrite_ap])
		
		Wrapper for ``sspr``.
		
		Parameters
		----------
		n : input int
		alpha : input float
		x : input rank-1 array('f') with bounds (*)
		ap : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		apu : rank-1 array('f') with bounds (*) and ap storage
	**/
	static public function sspr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		apu = sspr2(n,alpha,x,y,ap,[incx,offx,incy,offy,lower,overwrite_ap])
		
		Wrapper for ``sspr2``.
		
		Parameters
		----------
		n : input int
		alpha : input float
		x : input rank-1 array('f') with bounds (*)
		y : input rank-1 array('f') with bounds (*)
		ap : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		apu : rank-1 array('f') with bounds (*) and ap storage
	**/
	static public function sspr2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y = sswap(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``sswap``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (*)
		y : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('f') with bounds (*)
		y : rank-1 array('f') with bounds (*)
	**/
	static public function sswap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = ssymm(alpha,a,b,[beta,c,side,lower,overwrite_c])
		
		Wrapper for ``ssymm``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('f') with bounds (lda,ka)
		b : input rank-2 array('f') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input float, optional
		    Default: 0.0
		c : input rank-2 array('f') with bounds (m,n)
		overwrite_c : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('f') with bounds (m,n)
	**/
	static public function ssymm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = ssymv(alpha,a,x,[beta,y,offx,incx,offy,incy,lower,overwrite_y])
		
		Wrapper for ``ssymv``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('f') with bounds (n,n)
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		beta : input float, optional
		    Default: 0.0
		y : input rank-1 array('f') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('f') with bounds (ly)
	**/
	static public function ssymv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = ssyr(alpha,x,[lower,incx,offx,n,a,overwrite_a])
		
		Wrapper for ``ssyr``.
		
		Parameters
		----------
		alpha : input float
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		n : input int, optional
		    Default: (len(x)-1-offx)/abs(incx)+1
		a : input rank-2 array('f') with bounds (n,n)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('f') with bounds (n,n)
	**/
	static public function ssyr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = ssyr2(alpha,x,y,[lower,incx,offx,incy,offy,n,a,overwrite_a])
		
		Wrapper for ``ssyr2``.
		
		Parameters
		----------
		alpha : input float
		x : input rank-1 array('f') with bounds (*)
		y : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		n : input int, optional
		    Default: ((len(x)-1-offx)/abs(incx)+1 <=(len(y)-1-offy)/abs(incy)+1 ?(len(x)-1-offx)/abs(incx)+1 :(len(y)-1-offy)/abs(incy)+1)
		a : input rank-2 array('f') with bounds (n,n)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('f') with bounds (n,n)
	**/
	static public function ssyr2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = ssyr2k(alpha,a,b,[beta,c,trans,lower,overwrite_c])
		
		Wrapper for ``ssyr2k``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('f') with bounds (lda,ka)
		b : input rank-2 array('f') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input float, optional
		    Default: 0.0
		c : input rank-2 array('f') with bounds (n,n)
		overwrite_c : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('f') with bounds (n,n)
	**/
	static public function ssyr2k(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = ssyrk(alpha,a,[beta,c,trans,lower,overwrite_c])
		
		Wrapper for ``ssyrk``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('f') with bounds (lda,ka)
		
		Other Parameters
		----------------
		beta : input float, optional
		    Default: 0.0
		c : input rank-2 array('f') with bounds (n,n)
		overwrite_c : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('f') with bounds (n,n)
	**/
	static public function ssyrk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = stbmv(k,a,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``stbmv``.
		
		Parameters
		----------
		k : input int
		a : input rank-2 array('f') with bounds (lda,n)
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function stbmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = stbsv(k,a,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``stbsv``.
		
		Parameters
		----------
		k : input int
		a : input rank-2 array('f') with bounds (lda,n)
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function stbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = stpmv(n,ap,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``stpmv``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('f') with bounds (*)
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function stpmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = stpsv(n,ap,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``stpsv``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('f') with bounds (*)
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function stpsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		b = strmm(alpha,a,b,[side,lower,trans_a,diag,overwrite_b])
		
		Wrapper for ``strmm``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('f') with bounds (lda,k)
		b : input rank-2 array('f') with bounds (ldb,n)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans_a : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		b : rank-2 array('f') with bounds (ldb,n)
	**/
	static public function strmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = strmv(a,x,[offx,incx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``strmv``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-1 array('f') with bounds (*)
	**/
	static public function strmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = strsm(alpha,a,b,[side,lower,trans_a,diag,overwrite_b])
		
		Wrapper for ``strsm``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('f') with bounds (lda,*)
		b : input rank-2 array('f') with bounds (ldb,n)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans_a : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('f') with bounds (ldb,n) and b storage
	**/
	static public function strsm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = strsv(a,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``strsv``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		x : input rank-1 array('f') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('f') with bounds (*) and x storage
	**/
	static public function strsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		z = zaxpy(x,y,[n,a,offx,incx,offy,incy])
		
		Wrapper for ``zaxpy``.
		
		Parameters
		----------
		x : input rank-1 array('D') with bounds (*)
		y : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		a : input complex, optional
		    Default: (1.0, 0.0)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		z : rank-1 array('D') with bounds (*) and y storage
	**/
	static public function zaxpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = zcopy(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``zcopy``.
		
		Parameters
		----------
		x : input rank-1 array('D') with bounds (*)
		y : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		y : rank-1 array('D') with bounds (*)
	**/
	static public function zcopy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xy = zdotc(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``zdotc``.
		
		Parameters
		----------
		x : input rank-1 array('D') with bounds (*)
		y : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		xy : complex
	**/
	static public function zdotc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xy = zdotu(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``zdotu``.
		
		Parameters
		----------
		x : input rank-1 array('D') with bounds (*)
		y : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		xy : complex
	**/
	static public function zdotu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y = zdrot(x,y,c,s,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		
		Wrapper for ``zdrot``.
		
		Parameters
		----------
		x : input rank-1 array('D') with bounds (*)
		y : input rank-1 array('D') with bounds (*)
		c : input float
		s : input float
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-1-offx)/abs(incx)+1
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 0
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('D') with bounds (*)
		y : rank-1 array('D') with bounds (*)
	**/
	static public function zdrot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = zdscal(a,x,[n,offx,incx,overwrite_x])
		
		Wrapper for ``zdscal``.
		
		Parameters
		----------
		a : input float
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('D') with bounds (*)
	**/
	static public function zdscal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = zgbmv(m,n,kl,ku,alpha,a,x,[incx,offx,beta,y,incy,offy,trans,overwrite_y])
		
		Wrapper for ``zgbmv``.
		
		Parameters
		----------
		m : input int
		n : input int
		kl : input int
		ku : input int
		alpha : input complex
		a : input rank-2 array('D') with bounds (lda,n)
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input complex, optional
		    Default: (0.0, 0.0)
		y : input rank-1 array('D') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('D') with bounds (ly) and y storage
	**/
	static public function zgbmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = zgemm(alpha,a,b,[beta,c,trans_a,trans_b,overwrite_c])
		
		Wrapper for ``zgemm``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('D') with bounds (lda,ka)
		b : input rank-2 array('D') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('D') with bounds (m,n)
		overwrite_c : input int, optional
		    Default: 0
		trans_a : input int, optional
		    Default: 0
		trans_b : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (m,n)
	**/
	static public function zgemm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = zgemv(alpha,a,x,[beta,y,offx,incx,offy,incy,trans,overwrite_y])
		
		Wrapper for ``zgemv``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('D') with bounds (m,n)
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		y : input rank-1 array('D') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		trans : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('D') with bounds (ly)
	**/
	static public function zgemv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = zgerc(alpha,x,y,[incx,incy,a,overwrite_x,overwrite_y,overwrite_a])
		
		Wrapper for ``zgerc``.
		
		Parameters
		----------
		alpha : input complex
		x : input rank-1 array('D') with bounds (m)
		y : input rank-1 array('D') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 1
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 1
		incy : input int, optional
		    Default: 1
		a : input rank-2 array('D') with bounds (m,n), optional
		    Default: (0.0,0.0)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('D') with bounds (m,n)
	**/
	static public function zgerc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = zgeru(alpha,x,y,[incx,incy,a,overwrite_x,overwrite_y,overwrite_a])
		
		Wrapper for ``zgeru``.
		
		Parameters
		----------
		alpha : input complex
		x : input rank-1 array('D') with bounds (m)
		y : input rank-1 array('D') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 1
		incx : input int, optional
		    Default: 1
		overwrite_y : input int, optional
		    Default: 1
		incy : input int, optional
		    Default: 1
		a : input rank-2 array('D') with bounds (m,n), optional
		    Default: (0.0,0.0)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('D') with bounds (m,n)
	**/
	static public function zgeru(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = zhbmv(k,alpha,a,x,[incx,offx,beta,y,incy,offy,lower,overwrite_y])
		
		Wrapper for ``zhbmv``.
		
		Parameters
		----------
		k : input int
		alpha : input complex
		a : input rank-2 array('D') with bounds (lda,n)
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input complex, optional
		    Default: (0.0, 0.0)
		y : input rank-1 array('D') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('D') with bounds (ly) and y storage
	**/
	static public function zhbmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = zhemm(alpha,a,b,[beta,c,side,lower,overwrite_c])
		
		Wrapper for ``zhemm``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('D') with bounds (lda,ka)
		b : input rank-2 array('D') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('D') with bounds (m,n)
		overwrite_c : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (m,n)
	**/
	static public function zhemm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y = zhemv(alpha,a,x,[beta,y,offx,incx,offy,incy,lower,overwrite_y])
		
		Wrapper for ``zhemv``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('D') with bounds (n,n)
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		y : input rank-1 array('D') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('D') with bounds (ly)
	**/
	static public function zhemv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = zher(alpha,x,[lower,incx,offx,n,a,overwrite_a])
		
		Wrapper for ``zher``.
		
		Parameters
		----------
		alpha : input complex
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		n : input int, optional
		    Default: (len(x)-1-offx)/abs(incx)+1
		a : input rank-2 array('D') with bounds (n,n)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('D') with bounds (n,n)
	**/
	static public function zher(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = zher2(alpha,x,y,[lower,incx,offx,incy,offy,n,a,overwrite_a])
		
		Wrapper for ``zher2``.
		
		Parameters
		----------
		alpha : input complex
		x : input rank-1 array('D') with bounds (*)
		y : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		n : input int, optional
		    Default: ((len(x)-1-offx)/abs(incx)+1 <=(len(y)-1-offy)/abs(incy)+1 ?(len(x)-1-offx)/abs(incx)+1 :(len(y)-1-offy)/abs(incy)+1)
		a : input rank-2 array('D') with bounds (n,n)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('D') with bounds (n,n)
	**/
	static public function zher2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = zher2k(alpha,a,b,[beta,c,trans,lower,overwrite_c])
		
		Wrapper for ``zher2k``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('D') with bounds (lda,ka)
		b : input rank-2 array('D') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('D') with bounds (n,n)
		overwrite_c : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (n,n)
	**/
	static public function zher2k(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = zherk(alpha,a,[beta,c,trans,lower,overwrite_c])
		
		Wrapper for ``zherk``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('D') with bounds (lda,ka)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('D') with bounds (n,n)
		overwrite_c : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (n,n)
	**/
	static public function zherk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = zhpmv(n,alpha,ap,x,[incx,offx,beta,y,incy,offy,lower,overwrite_y])
		
		Wrapper for ``zhpmv``.
		
		Parameters
		----------
		n : input int
		alpha : input complex
		ap : input rank-1 array('D') with bounds (*)
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input complex, optional
		    Default: (0.0, 0.0)
		y : input rank-1 array('D') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('D') with bounds (ly) and y storage
	**/
	static public function zhpmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		apu = zhpr(n,alpha,x,ap,[incx,offx,lower,overwrite_ap])
		
		Wrapper for ``zhpr``.
		
		Parameters
		----------
		n : input int
		alpha : input float
		x : input rank-1 array('D') with bounds (*)
		ap : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		apu : rank-1 array('D') with bounds (*) and ap storage
	**/
	static public function zhpr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		apu = zhpr2(n,alpha,x,y,ap,[incx,offx,incy,offy,lower,overwrite_ap])
		
		Wrapper for ``zhpr2``.
		
		Parameters
		----------
		n : input int
		alpha : input complex
		x : input rank-1 array('D') with bounds (*)
		y : input rank-1 array('D') with bounds (*)
		ap : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		apu : rank-1 array('D') with bounds (*) and ap storage
	**/
	static public function zhpr2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c,s = zrotg(a,b)
		
		Wrapper for ``zrotg``.
		
		Parameters
		----------
		a : input complex
		b : input complex
		
		Returns
		-------
		c : complex
		s : complex
	**/
	static public function zrotg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = zscal(a,x,[n,offx,incx])
		
		Wrapper for ``zscal``.
		
		Parameters
		----------
		a : input complex
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('D') with bounds (*)
	**/
	static public function zscal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		yout = zspmv(n,alpha,ap,x,[incx,offx,beta,y,incy,offy,lower,overwrite_y])
		
		Wrapper for ``zspmv``.
		
		Parameters
		----------
		n : input int
		alpha : input complex
		ap : input rank-1 array('D') with bounds (*)
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		beta : input complex, optional
		    Default: (0.0, 0.0)
		y : input rank-1 array('D') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		yout : rank-1 array('D') with bounds (ly) and y storage
	**/
	static public function zspmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		apu = zspr(n,alpha,x,ap,[incx,offx,lower,overwrite_ap])
		
		Wrapper for ``zspr``.
		
		Parameters
		----------
		n : input int
		alpha : input complex
		x : input rank-1 array('D') with bounds (*)
		ap : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		overwrite_ap : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		apu : rank-1 array('D') with bounds (*) and ap storage
	**/
	static public function zspr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y = zswap(x,y,[n,offx,incx,offy,incy])
		
		Wrapper for ``zswap``.
		
		Parameters
		----------
		x : input rank-1 array('D') with bounds (*)
		y : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: (len(x)-offx)/abs(incx)
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		
		Returns
		-------
		x : rank-1 array('D') with bounds (*)
		y : rank-1 array('D') with bounds (*)
	**/
	static public function zswap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = zsymm(alpha,a,b,[beta,c,side,lower,overwrite_c])
		
		Wrapper for ``zsymm``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('D') with bounds (lda,ka)
		b : input rank-2 array('D') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('D') with bounds (m,n)
		overwrite_c : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (m,n)
	**/
	static public function zsymm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = zsyr(alpha,x,[lower,incx,offx,n,a,overwrite_a])
		
		Wrapper for ``zsyr``.
		
		Parameters
		----------
		alpha : input complex
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		n : input int, optional
		    Default: (len(x)-1-offx)/abs(incx)+1
		a : input rank-2 array('D') with bounds (n,n)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('D') with bounds (n,n)
	**/
	static public function zsyr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = zsyr2k(alpha,a,b,[beta,c,trans,lower,overwrite_c])
		
		Wrapper for ``zsyr2k``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('D') with bounds (lda,ka)
		b : input rank-2 array('D') with bounds (ldb,kb)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('D') with bounds (n,n)
		overwrite_c : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (n,n)
	**/
	static public function zsyr2k(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c = zsyrk(alpha,a,[beta,c,trans,lower,overwrite_c])
		
		Wrapper for ``zsyrk``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('D') with bounds (lda,ka)
		
		Other Parameters
		----------------
		beta : input complex, optional
		    Default: (0.0, 0.0)
		c : input rank-2 array('D') with bounds (n,n)
		overwrite_c : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		c : rank-2 array('D') with bounds (n,n)
	**/
	static public function zsyrk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = ztbmv(k,a,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``ztbmv``.
		
		Parameters
		----------
		k : input int
		a : input rank-2 array('D') with bounds (lda,n)
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('D') with bounds (*) and x storage
	**/
	static public function ztbmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = ztbsv(k,a,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``ztbsv``.
		
		Parameters
		----------
		k : input int
		a : input rank-2 array('D') with bounds (lda,n)
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('D') with bounds (*) and x storage
	**/
	static public function ztbsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = ztpmv(n,ap,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``ztpmv``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('D') with bounds (*)
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('D') with bounds (*) and x storage
	**/
	static public function ztpmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = ztpsv(n,ap,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``ztpsv``.
		
		Parameters
		----------
		n : input int
		ap : input rank-1 array('D') with bounds (*)
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('D') with bounds (*) and x storage
	**/
	static public function ztpsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		b = ztrmm(alpha,a,b,[side,lower,trans_a,diag,overwrite_b])
		
		Wrapper for ``ztrmm``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('D') with bounds (lda,k)
		b : input rank-2 array('D') with bounds (ldb,n)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans_a : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		b : rank-2 array('D') with bounds (ldb,n)
	**/
	static public function ztrmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = ztrmv(a,x,[offx,incx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``ztrmv``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-1 array('D') with bounds (*)
	**/
	static public function ztrmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x = ztrsm(alpha,a,b,[side,lower,trans_a,diag,overwrite_b])
		
		Wrapper for ``ztrsm``.
		
		Parameters
		----------
		alpha : input complex
		a : input rank-2 array('D') with bounds (lda,*)
		b : input rank-2 array('D') with bounds (ldb,n)
		
		Other Parameters
		----------------
		overwrite_b : input int, optional
		    Default: 0
		side : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans_a : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (ldb,n) and b storage
	**/
	static public function ztrsm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		xout = ztrsv(a,x,[incx,offx,lower,trans,diag,overwrite_x])
		
		Wrapper for ``ztrsv``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		x : input rank-1 array('D') with bounds (*)
		
		Other Parameters
		----------------
		overwrite_x : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		lower : input int, optional
		    Default: 0
		trans : input int, optional
		    Default: 0
		diag : input int, optional
		    Default: 0
		
		Returns
		-------
		xout : rank-1 array('D') with bounds (*) and x storage
	**/
	static public function ztrsv(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
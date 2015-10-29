/* This file is generated, do not edit! */
package scipy.linalg;
@:pythonImport("scipy.linalg._flinalg") extern class _Flinalg {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		det,info = cdet_c(a,[overwrite_a])
		
		Wrapper for ``cdet_c``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		det : complex
		info : int
	**/
	static public function cdet_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		det,info = cdet_r(a,[overwrite_a])
		
		Wrapper for ``cdet_r``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		det : complex
		info : int
	**/
	static public function cdet_r(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		p,l,u,info = clu_c(a,[permute_l,overwrite_a])
		
		Wrapper for ``clu_c``.
		
		Parameters
		----------
		a : input rank-2 array('F') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		permute_l : input int, optional
		    Default: 0
		
		Returns
		-------
		p : rank-2 array('f') with bounds (m1,m1)
		l : rank-2 array('F') with bounds (m,k)
		u : rank-2 array('F') with bounds (k,n)
		info : int
	**/
	static public function clu_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		det,info = ddet_c(a,[overwrite_a])
		
		Wrapper for ``ddet_c``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		det : float
		info : int
	**/
	static public function ddet_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		det,info = ddet_r(a,[overwrite_a])
		
		Wrapper for ``ddet_r``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		det : float
		info : int
	**/
	static public function ddet_r(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		p,l,u,info = dlu_c(a,[permute_l,overwrite_a])
		
		Wrapper for ``dlu_c``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		permute_l : input int, optional
		    Default: 0
		
		Returns
		-------
		p : rank-2 array('d') with bounds (m1,m1)
		l : rank-2 array('d') with bounds (m,k)
		u : rank-2 array('d') with bounds (k,n)
		info : int
	**/
	static public function dlu_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		det,info = sdet_c(a,[overwrite_a])
		
		Wrapper for ``sdet_c``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		det : float
		info : int
	**/
	static public function sdet_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		det,info = sdet_r(a,[overwrite_a])
		
		Wrapper for ``sdet_r``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		det : float
		info : int
	**/
	static public function sdet_r(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		p,l,u,info = slu_c(a,[permute_l,overwrite_a])
		
		Wrapper for ``slu_c``.
		
		Parameters
		----------
		a : input rank-2 array('f') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		permute_l : input int, optional
		    Default: 0
		
		Returns
		-------
		p : rank-2 array('f') with bounds (m1,m1)
		l : rank-2 array('f') with bounds (m,k)
		u : rank-2 array('f') with bounds (k,n)
		info : int
	**/
	static public function slu_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		det,info = zdet_c(a,[overwrite_a])
		
		Wrapper for ``zdet_c``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		det : complex
		info : int
	**/
	static public function zdet_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		det,info = zdet_r(a,[overwrite_a])
		
		Wrapper for ``zdet_r``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (n,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		det : complex
		info : int
	**/
	static public function zdet_r(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		p,l,u,info = zlu_c(a,[permute_l,overwrite_a])
		
		Wrapper for ``zlu_c``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		permute_l : input int, optional
		    Default: 0
		
		Returns
		-------
		p : rank-2 array('d') with bounds (m1,m1)
		l : rank-2 array('D') with bounds (m,k)
		u : rank-2 array('D') with bounds (k,n)
		info : int
	**/
	static public function zlu_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
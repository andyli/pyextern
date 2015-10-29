/* This file is generated, do not edit! */
package scipy.linalg;
@:pythonImport("scipy.linalg._calc_lwork") extern class _Calc_lwork {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		minwrk,maxwrk = gees(prefix,n,[compute_v])
		
		Wrapper for ``gees``.
		
		Parameters
		----------
		prefix : input string(len=1)
		n : input int
		
		Other Parameters
		----------------
		compute_v : input int, optional
		    Default: 1
		
		Returns
		-------
		minwrk : int
		maxwrk : int
	**/
	static public function gees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minwrk,maxwrk = geev(prefix,n,[compute_vl,compute_vr])
		
		Wrapper for ``geev``.
		
		Parameters
		----------
		prefix : input string(len=1)
		n : input int
		
		Other Parameters
		----------------
		compute_vl : input int, optional
		    Default: 1
		compute_vr : input int, optional
		    Default: 1
		
		Returns
		-------
		minwrk : int
		maxwrk : int
	**/
	static public function geev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minwrk,maxwrk = gehrd(prefix,n,lo,hi)
		
		Wrapper for ``gehrd``.
		
		Parameters
		----------
		prefix : input string(len=1)
		n : input int
		lo : input int
		hi : input int
		
		Returns
		-------
		minwrk : int
		maxwrk : int
	**/
	static public function gehrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minwrk,maxwrk = gelss(prefix,m,n,nrhs)
		
		Wrapper for ``gelss``.
		
		Parameters
		----------
		prefix : input string(len=1)
		m : input int
		n : input int
		nrhs : input int
		
		Returns
		-------
		minwrk : int
		maxwrk : int
	**/
	static public function gelss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minwrk,maxwrk = geqrf(prefix,m,n)
		
		Wrapper for ``geqrf``.
		
		Parameters
		----------
		prefix : input string(len=1)
		m : input int
		n : input int
		
		Returns
		-------
		minwrk : int
		maxwrk : int
	**/
	static public function geqrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minwrk,maxwrk = gesdd(prefix,m,n,compute_uv)
		
		Wrapper for ``gesdd``.
		
		Parameters
		----------
		prefix : input string(len=1)
		m : input int
		n : input int
		compute_uv : input int
		
		Returns
		-------
		minwrk : int
		maxwrk : int
	**/
	static public function gesdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minwrk,maxwrk = getri(prefix,n)
		
		Wrapper for ``getri``.
		
		Parameters
		----------
		prefix : input string(len=1)
		n : input int
		
		Returns
		-------
		minwrk : int
		maxwrk : int
	**/
	static public function getri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minwrk,maxwrk = gqr(prefix,m,n)
		
		Wrapper for ``gqr``.
		
		Parameters
		----------
		prefix : input string(len=1)
		m : input int
		n : input int
		
		Returns
		-------
		minwrk : int
		maxwrk : int
	**/
	static public function gqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minwrk,maxwrk = heev(prefix,n,[lower])
		
		Wrapper for ``heev``.
		
		Parameters
		----------
		prefix : input string(len=1)
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		minwrk : int
		maxwrk : int
	**/
	static public function heev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		minwrk,maxwrk = syev(prefix,n,[lower])
		
		Wrapper for ``syev``.
		
		Parameters
		----------
		prefix : input string(len=1)
		n : input int
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		minwrk : int
		maxwrk : int
	**/
	static public function syev(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
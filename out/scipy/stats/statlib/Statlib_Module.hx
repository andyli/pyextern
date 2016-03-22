/* This file is generated, do not edit! */
package scipy.stats.statlib;
@:pythonImport("scipy.stats.statlib") extern class Statlib_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		astart,a1,ifault = gscale(test,other)
		
		Wrapper for ``gscale``.
		
		Parameters
		----------
		test : input int
		other : input int
		
		Returns
		-------
		astart : float
		a1 : rank-1 array('f') with bounds (l1)
		ifault : int
	**/
	static public function gscale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ifault = prho(n,is)
		
		Wrapper for ``prho``.
		
		Parameters
		----------
		n : input int
		is : input int
		
		Returns
		-------
		prho : float
		ifault : int
	**/
	static public function prho(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a,w,pw,ifault = swilk(x,a,[init,n1])
		
		Wrapper for ``swilk``.
		
		Parameters
		----------
		x : input rank-1 array('f') with bounds (n)
		a : input rank-1 array('f') with bounds (n2)
		
		Other Parameters
		----------------
		init : input int, optional
		    Default: 0
		n1 : input int, optional
		    Default: n
		
		Returns
		-------
		a : rank-1 array('f') with bounds (n2)
		w : float
		pw : float
		ifault : int
	**/
	static public function swilk(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
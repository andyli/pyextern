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
		gscale - Function signature:
		  astart,a1,ifault = gscale(test,other)
		Required arguments:
		  test : input int
		  other : input int
		Return objects:
		  astart : float
		  a1 : rank-1 array('f') with bounds (l1)
		  ifault : int
	**/
	static public function gscale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		prho - Function signature:
		  ifault = prho(n,is)
		Required arguments:
		  n : input int
		  is : input int
		Return objects:
		  prho : float
		  ifault : int
	**/
	static public function prho(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		swilk - Function signature:
		  a,w,pw,ifault = swilk(x,a,[init,n1])
		Required arguments:
		  x : input rank-1 array('f') with bounds (n)
		  a : input rank-1 array('f') with bounds (n2)
		Optional arguments:
		  init := 0 input int
		  n1 := n input int
		Return objects:
		  a : rank-1 array('f') with bounds (n2)
		  w : float
		  pw : float
		  ifault : int
	**/
	static public function swilk(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
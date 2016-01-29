/* This file is generated, do not edit! */
package scipy.optimize._cobyla;
@:pythonImport("scipy.optimize._cobyla") extern class _Cobyla_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		minimize - Function signature:
		  x,dinfo = minimize(calcfc,m,x,rhobeg,rhoend,dinfo,[iprint,maxfun,calcfc_extra_args])
		Required arguments:
		  calcfc : call-back function
		  m : input int
		  x : input rank-1 array('d') with bounds (n)
		  rhobeg : input float
		  rhoend : input float
		  dinfo : input rank-1 array('d') with bounds (4)
		Optional arguments:
		  calcfc_extra_args := () input tuple
		  iprint := 1 input int
		  maxfun := 100 input int
		Return objects:
		  x : rank-1 array('d') with bounds (n)
		  dinfo : rank-1 array('d') with bounds (4)
		Call-back functions:
		  def calcfc(x,con): return f
		  Required arguments:
		    x : input rank-1 array('d') with bounds (n)
		    con : input rank-1 array('d') with bounds (m)
		  Return objects:
		    f : float
	**/
	static public function minimize(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
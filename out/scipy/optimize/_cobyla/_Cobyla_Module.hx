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
		x,dinfo = minimize(calcfc,m,x,rhobeg,rhoend,dinfo,[iprint,maxfun,calcfc_extra_args])
		
		Wrapper for ``minimize``.
		
		Parameters
		----------
		calcfc : call-back function
		m : input int
		x : input rank-1 array('d') with bounds (n)
		rhobeg : input float
		rhoend : input float
		dinfo : input rank-1 array('d') with bounds (4)
		
		Other Parameters
		----------------
		calcfc_extra_args : input tuple, optional
		    Default: ()
		iprint : input int, optional
		    Default: 1
		maxfun : input int, optional
		    Default: 100
		
		Returns
		-------
		x : rank-1 array('d') with bounds (n)
		dinfo : rank-1 array('d') with bounds (4)
		
		Notes
		-----
		Call-back functions::
		
		  def calcfc(x,con): return f
		  Required arguments:
		    x : input rank-1 array('d') with bounds (n)
		    con : input rank-1 array('d') with bounds (m)
		  Return objects:
		    f : float
	**/
	static public function minimize(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
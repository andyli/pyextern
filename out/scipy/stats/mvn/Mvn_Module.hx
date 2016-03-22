/* This file is generated, do not edit! */
package scipy.stats.mvn;
@:pythonImport("scipy.stats.mvn") extern class Mvn_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		'i'-scalar
	**/
	static public function dkblck(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		error,value,inform = mvndst(lower,upper,infin,correl,[maxpts,abseps,releps])
		
		Wrapper for ``mvndst``.
		
		Parameters
		----------
		lower : input rank-1 array('d') with bounds (n)
		upper : input rank-1 array('d') with bounds (n)
		infin : input rank-1 array('i') with bounds (n)
		correl : input rank-1 array('d') with bounds (n*(n-1)/2)
		
		Other Parameters
		----------------
		maxpts : input int, optional
		    Default: 2000
		abseps : input float, optional
		    Default: 1e-06
		releps : input float, optional
		    Default: 1e-06
		
		Returns
		-------
		error : float
		value : float
		inform : int
	**/
	static public function mvndst(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		value,inform = mvnun(lower,upper,means,covar,[maxpts,abseps,releps])
		
		Wrapper for ``mvnun``.
		
		Parameters
		----------
		lower : input rank-1 array('d') with bounds (d)
		upper : input rank-1 array('d') with bounds (d)
		means : input rank-2 array('d') with bounds (d,n)
		covar : input rank-2 array('d') with bounds (d,d)
		
		Other Parameters
		----------------
		maxpts : input int, optional
		    Default: d*1000
		abseps : input float, optional
		    Default: 1e-06
		releps : input float, optional
		    Default: 1e-06
		
		Returns
		-------
		value : float
		inform : int
	**/
	static public function mvnun(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
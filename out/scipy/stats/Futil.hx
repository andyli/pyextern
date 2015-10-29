/* This file is generated, do not edit! */
package scipy.stats;
@:pythonImport("scipy.stats.futil") extern class Futil {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		replist,repnum,nlist = dfreps(arr)
		
		Wrapper for ``dfreps``.
		
		Parameters
		----------
		arr : input rank-1 array('d') with bounds (n)
		
		Returns
		-------
		replist : rank-1 array('d') with bounds (n)
		repnum : rank-1 array('i') with bounds (n)
		nlist : int
	**/
	static public function dfreps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arr = dqsort(arr,[overwrite_arr])
		
		Wrapper for ``dqsort``.
		
		Parameters
		----------
		arr : input rank-1 array('d') with bounds (n)
		
		Other Parameters
		----------------
		overwrite_arr : input int, optional
		    Default: 0
		
		Returns
		-------
		arr : rank-1 array('d') with bounds (n)
	**/
	static public function dqsort(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
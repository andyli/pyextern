/* This file is generated, do not edit! */
package scipy.optimize._nnls;
@:pythonImport("scipy.optimize._nnls") extern class _Nnls_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		nnls - Function signature:
		  x,rnorm,mode = nnls(a,m,n,b,w,zz,index_bn,[mda,overwrite_a,overwrite_b])
		Required arguments:
		  a : input rank-2 array('d') with bounds (mda,*)
		  m : input int
		  n : input int
		  b : input rank-1 array('d') with bounds (*)
		  w : input rank-1 array('d') with bounds (*)
		  zz : input rank-1 array('d') with bounds (*)
		  index_bn : input rank-1 array('i') with bounds (*)
		Optional arguments:
		  overwrite_a := 0 input int
		  mda := shape(a,0) input int
		  overwrite_b := 0 input int
		Return objects:
		  x : rank-1 array('d') with bounds (n)
		  rnorm : float
		  mode : int
	**/
	static public function nnls(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
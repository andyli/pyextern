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
		x,rnorm,mode = nnls(a,m,n,b,w,zz,index_bn,maxiter,[mda,overwrite_a,overwrite_b])
		
		Wrapper for ``nnls``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (mda,*)
		m : input int
		n : input int
		b : input rank-1 array('d') with bounds (*)
		w : input rank-1 array('d') with bounds (*)
		zz : input rank-1 array('d') with bounds (*)
		index_bn : input rank-1 array('i') with bounds (*)
		maxiter : input int
		
		Other Parameters
		----------------
		overwrite_a : input int, optional
		    Default: 0
		mda : input int, optional
		    Default: shape(a,0)
		overwrite_b : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-1 array('d') with bounds (n)
		rnorm : float
		mode : int
	**/
	static public function nnls(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
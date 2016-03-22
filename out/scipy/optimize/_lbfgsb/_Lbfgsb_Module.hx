/* This file is generated, do not edit! */
package scipy.optimize._lbfgsb;
@:pythonImport("scipy.optimize._lbfgsb") extern class _Lbfgsb_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		setulb(m,x,l,u,nbd,f,g,factr,pgtol,wa,iwa,task,iprint,csave,lsave,isave,dsave,maxls,[n])
		
		Wrapper for ``setulb``.
		
		Parameters
		----------
		m : input int
		x : in/output rank-1 array('d') with bounds (n)
		l : input rank-1 array('d') with bounds (n)
		u : input rank-1 array('d') with bounds (n)
		nbd : input rank-1 array('i') with bounds (n)
		f : in/output rank-0 array(float,'d')
		g : in/output rank-1 array('d') with bounds (n)
		factr : input float
		pgtol : input float
		wa : in/output rank-1 array('d') with bounds (2*m*n+5*n+11*m*m+8*m)
		iwa : in/output rank-1 array('i') with bounds (3 * n)
		task : in/output rank-0 array(string(len=60),'c')
		iprint : input int
		csave : in/output rank-0 array(string(len=60),'c')
		lsave : in/output rank-1 array('i') with bounds (4)
		isave : in/output rank-1 array('i') with bounds (44)
		dsave : in/output rank-1 array('d') with bounds (29)
		maxls : input int
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: len(x)
	**/
	static public function setulb(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
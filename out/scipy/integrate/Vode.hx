/* This file is generated, do not edit! */
package scipy.integrate;
@:pythonImport("scipy.integrate.vode") extern class Vode {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		y,t,istate = dvode(f,jac,y,t,tout,rtol,atol,itask,istate,rwork,iwork,mf,[f_extra_args,jac_extra_args,overwrite_y])
		
		Wrapper for ``dvode``.
		
		Parameters
		----------
		f : call-back function
		jac : call-back function
		y : input rank-1 array('d') with bounds (neq)
		t : input float
		tout : input float
		rtol : input rank-1 array('d') with bounds (*)
		atol : input rank-1 array('d') with bounds (*)
		itask : input int
		istate : input int
		rwork : input rank-1 array('d') with bounds (lrw)
		iwork : input rank-1 array('i') with bounds (liw)
		mf : input int
		
		Other Parameters
		----------------
		f_extra_args : input tuple, optional
		    Default: ()
		jac_extra_args : input tuple, optional
		    Default: ()
		overwrite_y : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (neq)
		t : float
		istate : int
		
		Notes
		-----
		Call-back functions::
		
		  def f(t,y): return ydot
		  Required arguments:
		    t : input float
		    y : input rank-1 array('d') with bounds (n)
		  Return objects:
		    ydot : rank-1 array('d') with bounds (n)
		  def jac(t,y): return jac
		  Required arguments:
		    t : input float
		    y : input rank-1 array('d') with bounds (n)
		  Return objects:
		    jac : rank-2 array('d') with bounds (nrowpd,n)
	**/
	static public function dvode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		y,t,istate = zvode(f,jac,y,t,tout,rtol,atol,itask,istate,zwork,rwork,iwork,mf,[f_extra_args,jac_extra_args,overwrite_y])
		
		Wrapper for ``zvode``.
		
		Parameters
		----------
		f : call-back function
		jac : call-back function
		y : input rank-1 array('D') with bounds (neq)
		t : input float
		tout : input float
		rtol : input rank-1 array('d') with bounds (*)
		atol : input rank-1 array('d') with bounds (*)
		itask : input int
		istate : input int
		zwork : input rank-1 array('D') with bounds (lzw)
		rwork : input rank-1 array('d') with bounds (lrw)
		iwork : input rank-1 array('i') with bounds (liw)
		mf : input int
		
		Other Parameters
		----------------
		f_extra_args : input tuple, optional
		    Default: ()
		jac_extra_args : input tuple, optional
		    Default: ()
		overwrite_y : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('D') with bounds (neq)
		t : float
		istate : int
		
		Notes
		-----
		Call-back functions::
		
		  def f(t,y): return ydot
		  Required arguments:
		    t : input float
		    y : input rank-1 array('D') with bounds (n)
		  Return objects:
		    ydot : rank-1 array('D') with bounds (n)
		  def jac(t,y): return jac
		  Required arguments:
		    t : input float
		    y : input rank-1 array('D') with bounds (n)
		  Return objects:
		    jac : rank-2 array('D') with bounds (nrowpd,n)
	**/
	static public function zvode(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
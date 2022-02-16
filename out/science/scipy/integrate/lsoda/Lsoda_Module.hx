/* This file is generated, do not edit! */
package scipy.integrate.lsoda;
@:pythonImport("scipy.integrate.lsoda") extern class Lsoda_Module {
	/**
		y,t,istate = lsoda(f,y,t,tout,rtol,atol,itask,istate,rwork,iwork,jac,jt,[f_extra_args,overwrite_y,jac_extra_args])
		
		Wrapper for ``lsoda``.
		
		Parameters
		----------
		f : call-back function
		y : input rank-1 array('d') with bounds (neq)
		t : input float
		tout : input float
		rtol : input rank-1 array('d') with bounds (*)
		atol : input rank-1 array('d') with bounds (*)
		itask : input int
		istate : input int
		rwork : input rank-1 array('d') with bounds (lrw)
		iwork : input rank-1 array('i') with bounds (liw)
		jac : call-back function
		jt : input int
		
		Other Parameters
		----------------
		f_extra_args : input tuple, optional
		    Default: ()
		overwrite_y : input int, optional
		    Default: 0
		jac_extra_args : input tuple, optional
		    Default: ()
		
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
	static public function lsoda(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
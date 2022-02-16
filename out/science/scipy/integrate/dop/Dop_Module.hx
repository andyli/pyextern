/* This file is generated, do not edit! */
package scipy.integrate.dop;
@:pythonImport("scipy.integrate.dop") extern class Dop_Module {
	/**
		x,y,iwork,idid = dop853(fcn,x,y,xend,rtol,atol,solout,iout,work,iwork,[fcn_extra_args,overwrite_y,solout_extra_args])
		
		Wrapper for ``dop853``.
		
		Parameters
		----------
		fcn : call-back function
		x : input float
		y : input rank-1 array('d') with bounds (n)
		xend : input float
		rtol : input rank-1 array('d') with bounds (*)
		atol : input rank-1 array('d') with bounds (*)
		solout : call-back function
		iout : input int
		work : input rank-1 array('d') with bounds (*)
		iwork : input rank-1 array('i') with bounds (*)
		
		Other Parameters
		----------------
		fcn_extra_args : input tuple, optional
		    Default: ()
		overwrite_y : input int, optional
		    Default: 0
		solout_extra_args : input tuple, optional
		    Default: ()
		
		Returns
		-------
		x : float
		y : rank-1 array('d') with bounds (n)
		iwork : rank-1 array('i') with bounds (*)
		idid : int
		
		Notes
		-----
		Call-back functions::
		
		  def fcn(x,y): return f
		  Required arguments:
		    x : input float
		    y : input rank-1 array('d') with bounds (n)
		  Return objects:
		    f : rank-1 array('d') with bounds (n)
		  def solout(nr,xold,x,y,con,icomp,[nd]): return irtn
		  Required arguments:
		    nr : input int
		    xold : input float
		    x : input float
		    y : input rank-1 array('d') with bounds (n)
		    con : input rank-1 array('d') with bounds (5 * nd)
		    icomp : input rank-1 array('i') with bounds (nd)
		  Optional arguments:
		    nd : input int, optional
		    Default: (len(con))/(5)
		  Return objects:
		    irtn : int
	**/
	static public function dop853(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		x,y,iwork,idid = dopri5(fcn,x,y,xend,rtol,atol,solout,iout,work,iwork,[fcn_extra_args,overwrite_y,solout_extra_args])
		
		Wrapper for ``dopri5``.
		
		Parameters
		----------
		fcn : call-back function
		x : input float
		y : input rank-1 array('d') with bounds (n)
		xend : input float
		rtol : input rank-1 array('d') with bounds (*)
		atol : input rank-1 array('d') with bounds (*)
		solout : call-back function
		iout : input int
		work : input rank-1 array('d') with bounds (*)
		iwork : input rank-1 array('i') with bounds (*)
		
		Other Parameters
		----------------
		fcn_extra_args : input tuple, optional
		    Default: ()
		overwrite_y : input int, optional
		    Default: 0
		solout_extra_args : input tuple, optional
		    Default: ()
		
		Returns
		-------
		x : float
		y : rank-1 array('d') with bounds (n)
		iwork : rank-1 array('i') with bounds (*)
		idid : int
		
		Notes
		-----
		Call-back functions::
		
		  def fcn(x,y): return f
		  Required arguments:
		    x : input float
		    y : input rank-1 array('d') with bounds (n)
		  Return objects:
		    f : rank-1 array('d') with bounds (n)
		  def solout(nr,xold,x,y,con,icomp,[nd]): return irtn
		  Required arguments:
		    nr : input int
		    xold : input float
		    x : input float
		    y : input rank-1 array('d') with bounds (n)
		    con : input rank-1 array('d') with bounds (5 * nd)
		    icomp : input rank-1 array('i') with bounds (nd)
		  Optional arguments:
		    nd : input int, optional
		    Default: (len(con))/(5)
		  Return objects:
		    irtn : int
	**/
	static public function dopri5(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
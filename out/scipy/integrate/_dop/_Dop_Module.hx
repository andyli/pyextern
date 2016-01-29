/* This file is generated, do not edit! */
package scipy.integrate._dop;
@:pythonImport("scipy.integrate._dop") extern class _Dop_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		dop853 - Function signature:
		  x,y,iwork,idid = dop853(fcn,x,y,xend,rtol,atol,solout,iout,work,iwork,[fcn_extra_args,overwrite_y,solout_extra_args])
		Required arguments:
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
		Optional arguments:
		  fcn_extra_args := () input tuple
		  overwrite_y := 0 input int
		  solout_extra_args := () input tuple
		Return objects:
		  x : float
		  y : rank-1 array('d') with bounds (n)
		  iwork : rank-1 array('i') with bounds (*)
		  idid : int
		Call-back functions:
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
		    nd := (len(con))/(5) input int
		  Return objects:
		    irtn : int
	**/
	static public function dop853(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dopri5 - Function signature:
		  x,y,iwork,idid = dopri5(fcn,x,y,xend,rtol,atol,solout,iout,work,iwork,[fcn_extra_args,overwrite_y,solout_extra_args])
		Required arguments:
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
		Optional arguments:
		  fcn_extra_args := () input tuple
		  overwrite_y := 0 input int
		  solout_extra_args := () input tuple
		Return objects:
		  x : float
		  y : rank-1 array('d') with bounds (n)
		  iwork : rank-1 array('i') with bounds (*)
		  idid : int
		Call-back functions:
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
		    nd := (len(con))/(5) input int
		  Return objects:
		    irtn : int
	**/
	static public function dopri5(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
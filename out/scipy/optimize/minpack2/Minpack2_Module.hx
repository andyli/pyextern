/* This file is generated, do not edit! */
package scipy.optimize.minpack2;
@:pythonImport("scipy.optimize.minpack2") extern class Minpack2_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		stp,f,g,task = dcsrch(stp,f,g,ftol,gtol,xtol,task,stpmin,stpmax,isave,dsave)
		
		Wrapper for ``dcsrch``.
		
		Parameters
		----------
		stp : input float
		f : input float
		g : input float
		ftol : input float
		gtol : input float
		xtol : input float
		task : input string(len=60)
		stpmin : input float
		stpmax : input float
		isave : in/output rank-1 array('i') with bounds (2)
		dsave : in/output rank-1 array('d') with bounds (13)
		
		Returns
		-------
		stp : float
		f : float
		g : float
		task : string(len=60)
	**/
	static public function dcsrch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		stx,fx,dx,sty,fy,dy,stp,brackt = dcstep(stx,fx,dx,sty,fy,dy,stp,fp,dp,brackt,stpmin,stpmax)
		
		Wrapper for ``dcstep``.
		
		Parameters
		----------
		stx : input float
		fx : input float
		dx : input float
		sty : input float
		fy : input float
		dy : input float
		stp : input float
		fp : input float
		dp : input float
		brackt : input int
		stpmin : input float
		stpmax : input float
		
		Returns
		-------
		stx : float
		fx : float
		dx : float
		sty : float
		fy : float
		dy : float
		stp : float
		brackt : int
	**/
	static public function dcstep(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
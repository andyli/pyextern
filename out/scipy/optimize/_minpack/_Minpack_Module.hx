/* This file is generated, do not edit! */
package scipy.optimize._minpack;
@:pythonImport("scipy.optimize._minpack") extern class _Minpack_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		_chkder(m,n,x,fvec,fjac,ldfjac,xp,fvecp,mode,err)
	**/
	static public function _chkder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[x,infodict,info] = _hybrd(fun, x0, args, full_output, xtol, maxfev, ml, mu, epsfcn, factor, diag)
	**/
	static public function _hybrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[x,infodict,info] = _hybrj(fun, Dfun, x0, args, full_output, col_deriv, xtol, maxfev, factor, diag)
	**/
	static public function _hybrj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[x,infodict,info] = _lmder(fun, Dfun, x0, args, full_output, col_deriv, ftol, xtol, gtol, maxfev, factor, diag)
	**/
	static public function _lmder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[x,infodict,info] = _lmdif(fun, x0, args, full_output, ftol, xtol, gtol, maxfev, epsfcn, factor, diag)
	**/
	static public function _lmdif(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
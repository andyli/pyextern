/* This file is generated, do not edit! */
package scipy.integrate;
@:pythonImport("scipy.integrate._odepack") extern class _Odepack {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		[y,{infodict,}istate] = odeint(fun, y0, t, args=(), Dfun=None, col_deriv=0, ml=, mu=, full_output=0, rtol=, atol=, tcrit=, h0=0.0, hmax=0.0, hmin=0.0, ixpr=0.0, mxstep=0.0, mxhnil=0, mxordn=0, mxords=0)
		yprime = fun(y,t,...)
	**/
	static public function odeint(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
/* This file is generated, do not edit! */
package scipy.integrate;
@:pythonImport("scipy.integrate._quadpack") extern class _Quadpack {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		[result,abserr,infodict,ier] = _qagie(fun, bound, inf, | args, full_output, epsabs, epsrel, limit)
	**/
	static public function _qagie(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[result,abserr,infodict,ier] = _qagpe(fun, a, b, points, | args, full_output, epsabs, epsrel, limit)
	**/
	static public function _qagpe(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[result,abserr,infodict,ier] = _qagse(fun, a, b, | args, full_output, epsabs, epsrel, limit)
	**/
	static public function _qagse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[result,abserr,infodict,ier] = _qawce(fun, a, b, c, | args, full_output, epsabs, epsrel, limit)
	**/
	static public function _qawce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[result,abserr,infodict,ier] = _qawfe(fun, a, omega, integr, | args, full_output, epsabs, limlst, limit, maxp1)
	**/
	static public function _qawfe(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[result,abserr,infodict,ier] = _qawoe(fun, a, b, omega, integr, | args, full_output, epsabs, epsrel, limit, maxp1, icall, momcom, chebmo)
	**/
	static public function _qawoe(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[result,abserr,infodict,ier] = _qawse(fun, a, b, (alfa, beta), integr, | args, full_output, epsabs, epsrel, limit)
	**/
	static public function _qawse(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
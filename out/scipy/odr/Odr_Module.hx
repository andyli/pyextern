/* This file is generated, do not edit! */
package scipy.odr;
@:pythonImport("scipy.odr") extern class Odr_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var exponential : Dynamic;
	static public var multilinear : Dynamic;
	/**
		odr(fcn, beta0, y, x, we=None, wd=None, fjacb=None, fjacd=None, extra_args=None, ifixx=None, ifixb=None, job=0, iprint=0, errfile=None, rptfile=None, ndigit=0, taufac=0.0, sstol=-1.0, partol=-1.0, maxit=-1, stpb=None, stpd=None, sclb=None, scld=None, work=None, iwork=None, full_output=0)
		
		Low-level function for ODR.
		
		See Also
		--------
		ODR
		Model
		Data
		RealData
		
		Notes
		-----
		This is a function performing the same operation as the `ODR`,
		`Model` and `Data` classes together. The parameters of this
		function are explained in the class documentation.
	**/
	static public function odr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Factory function for a general polynomial model.
		
		Parameters
		----------
		order : int or sequence
		    If an integer, it becomes the order of the polynomial to fit. If
		    a sequence of numbers, then these are the explicit powers in the
		    polynomial.
		    A constant term (power 0) is always included, so don't include 0.
		    Thus, polynomial(n) is equivalent to polynomial(range(1, n+1)).
		
		Returns
		-------
		polynomial : Model instance
		    Model instance.
	**/
	static public function polynomial(order:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var quadratic : Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic):Dynamic;
	static public var unilinear : Dynamic;
}
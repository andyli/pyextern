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
	static public var exponential : Dynamic;
	static public var multilinear : Dynamic;
	/**
		odr(fcn, beta0, y, x, we=None, wd=None, fjacb=None, fjacd=None, extra_args=None, ifixx=None, ifixb=None, job=0, iprint=0, errfile=None, rptfile=None, ndigit=0, taufac=0.0, sstol=-1.0, partol=-1.0, maxit=-1, stpb=None, stpd=None, sclb=None, scld=None, work=None, iwork=None, full_output=0)
		
		Low-level function for ODR.
		
		See Also
		--------
		ODR : The ODR class gathers all information and coordinates the running of the main fitting routine.
		Model : The Model class stores information about the function you wish to fit.
		Data : The data to fit.
		RealData : Data with weights as actual std. dev.s and/or covariances.
		
		Notes
		-----
		This is a function performing the same operation as the `ODR`,
		`Model`, and `Data` classes together. The parameters of this
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
		
		Examples
		--------
		We can fit an input data using orthogonal distance regression (ODR) with
		a polynomial model:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy import odr
		>>> x = np.linspace(0.0, 5.0)
		>>> y = np.sin(x)
		>>> poly_model = odr.polynomial(3)  # using third order polynomial model
		>>> data = odr.Data(x, y)
		>>> odr_obj = odr.ODR(data, poly_model)
		>>> output = odr_obj.run()  # running ODR fitting
		>>> poly = np.poly1d(output.beta[::-1])
		>>> poly_y = poly(x)
		>>> plt.plot(x, y, label="input data")
		>>> plt.plot(x, poly_y, label="polynomial ODR")
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function polynomial(order:Dynamic):Dynamic;
	static public var quadratic : Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic, ?parallel:Dynamic):Dynamic;
	static public var unilinear : Dynamic;
}
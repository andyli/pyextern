/* This file is generated, do not edit! */
package scipy.odr;
@:pythonImport("scipy.odr.__odrpack") extern class __Odrpack {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		_set_exceptions(odr_error, odr_stop)
		
		Internal function: set exception classes.
	**/
	static public function _set_exceptions(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
}
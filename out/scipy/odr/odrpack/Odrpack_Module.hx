/* This file is generated, do not edit! */
package scipy.odr.odrpack;
@:pythonImport("scipy.odr.odrpack") extern class Odrpack_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert an object to the preferred form for input to the odr routine.
		    
	**/
	static public function _conv(obj:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Interprets the return code of the odr routine.
		
		Parameters
		----------
		info : int
		    The return code of the odr routine.
		
		Returns
		-------
		problems : list(str)
		    A list of messages about why the odr() routine stopped.
	**/
	static public function _report_error(info:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
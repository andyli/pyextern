/* This file is generated, do not edit! */
package scipy.odr.odrpack;
@:pythonImport("scipy.odr.odrpack", "ODR") extern class ODR {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, model:Dynamic, ?beta0:Dynamic, ?delta0:Dynamic, ?ifixb:Dynamic, ?ifixx:Dynamic, ?job:Dynamic, ?iprint:Dynamic, ?errfile:Dynamic, ?rptfile:Dynamic, ?ndigit:Dynamic, ?taufac:Dynamic, ?sstol:Dynamic, ?partol:Dynamic, ?maxit:Dynamic, ?stpb:Dynamic, ?stpd:Dynamic, ?sclb:Dynamic, ?scld:Dynamic, ?work:Dynamic, ?iwork:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(data:Dynamic, model:Dynamic, ?beta0:Dynamic, ?delta0:Dynamic, ?ifixb:Dynamic, ?ifixx:Dynamic, ?job:Dynamic, ?iprint:Dynamic, ?errfile:Dynamic, ?rptfile:Dynamic, ?ndigit:Dynamic, ?taufac:Dynamic, ?sstol:Dynamic, ?partol:Dynamic, ?maxit:Dynamic, ?stpb:Dynamic, ?stpd:Dynamic, ?sclb:Dynamic, ?scld:Dynamic, ?work:Dynamic, ?iwork:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Check the inputs for consistency, but don't bother checking things
		that the builtin function odr will check.
	**/
	public function _check():Dynamic;
	/**
		Generate a suitable work array if one does not already exist.
		        
	**/
	public function _gen_work():Dynamic;
	/**
		Restarts the run with iter more iterations.
		
		Parameters
		----------
		iter : int, optional
		    ODRPACK's default for the number of new iterations is 10.
		
		Returns
		-------
		output : Output instance
		    This object is also assigned to the attribute .output .
	**/
	public function restart(?iter:Dynamic):Dynamic;
	/**
		Run the fitting routine with all of the information given and with ``full_output=1``.
		
		Returns
		-------
		output : Output instance
		    This object is also assigned to the attribute .output .
	**/
	public function run():Dynamic;
	/**
		Set the iprint parameter for the printing of computation reports.
		
		If any of the arguments are specified here, then they are set in the
		iprint member. If iprint is not set manually or with this method, then
		ODRPACK defaults to no printing. If no filename is specified with the
		member rptfile, then ODRPACK prints to stdout. One can tell ODRPACK to
		print to stdout in addition to the specified filename by setting the
		so_* arguments to this function, but one cannot specify to print to
		stdout but not a file since one can do that by not specifying a rptfile
		filename.
		
		There are three reports: initialization, iteration, and final reports.
		They are represented by the arguments init, iter, and final
		respectively.  The permissible values are 0, 1, and 2 representing "no
		report", "short report", and "long report" respectively.
		
		The argument iter_step (0 <= iter_step <= 9) specifies how often to make
		the iteration report; the report will be made for every iter_step'th
		iteration starting with iteration one. If iter_step == 0, then no
		iteration report is made, regardless of the other arguments.
		
		If the rptfile is None, then any so_* arguments supplied will raise an
		exception.
	**/
	public function set_iprint(?init:Dynamic, ?so_init:Dynamic, ?iter:Dynamic, ?so_iter:Dynamic, ?iter_step:Dynamic, ?_final:Dynamic, ?so_final:Dynamic):Dynamic;
	/**
		Sets the "job" parameter is a hopefully comprehensible way.
		
		If an argument is not specified, then the value is left as is. The
		default value from class initialization is for all of these options set
		to 0.
		
		Parameters
		----------
		fit_type : {0, 1, 2} int
		    0 -> explicit ODR
		
		    1 -> implicit ODR
		
		    2 -> ordinary least-squares
		deriv : {0, 1, 2, 3} int
		    0 -> forward finite differences
		
		    1 -> central finite differences
		
		    2 -> user-supplied derivatives (Jacobians) with results
		      checked by ODRPACK
		
		    3 -> user-supplied derivatives, no checking
		var_calc : {0, 1, 2} int
		    0 -> calculate asymptotic covariance matrix and fit
		         parameter uncertainties (V_B, s_B) using derivatives
		         recomputed at the final solution
		
		    1 -> calculate V_B and s_B using derivatives from last iteration
		
		    2 -> do not calculate V_B and s_B
		del_init : {0, 1} int
		    0 -> initial input variable offsets set to 0
		
		    1 -> initial offsets provided by user in variable "work"
		restart : {0, 1} int
		    0 -> fit is not a restart
		
		    1 -> fit is a restart
		
		Notes
		-----
		The permissible values are different from those given on pg. 31 of the
		ODRPACK User's Guide only in that one cannot specify numbers greater than
		the last value for each variable.
		
		If one does not supply functions to compute the Jacobians, the fitting
		procedure will change deriv to 0, finite differences, as a default. To
		initialize the input variable offsets by yourself, set del_init to 1 and
		put the offsets into the "work" variable correctly.
	**/
	public function set_job(?fit_type:Dynamic, ?deriv:Dynamic, ?var_calc:Dynamic, ?del_init:Dynamic, ?restart:Dynamic):Dynamic;
}
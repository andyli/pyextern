/* This file is generated, do not edit! */
package torch.utils.benchmark.utils.common;
@:pythonImport("torch.utils.benchmark.utils.common", "Measurement") extern class Measurement {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __dataclass_fields__ : Dynamic;
	static public var __dataclass_params__ : Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	public function __eq__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	public function __getattr__(name:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	@:native("__init__")
	public function ___init__(number_per_run:Dynamic, raw_times:Dynamic, task_spec:Dynamic, ?metadata:Dynamic):Dynamic;
	public function new(number_per_run:Dynamic, raw_times:Dynamic, task_spec:Dynamic, ?metadata:Dynamic):Void;
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
	public function __post_init__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Example repr:
		    <utils.common.Measurement object at 0x7f395b6ac110>
		      Broadcasting add (4x8)
		      Median: 5.73 us
		      IQR:    2.25 us (4.01 to 6.26)
		      372 measurements, 100 runs per measurement, 1 thread
		      WARNING: Interquartile range is 39.4% of the median measurement.
		               This suggests significant environmental influence.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function _lazy_init():Dynamic;
	public var as_row_name : Dynamic;
	public var env : Dynamic;
	public var has_warnings : Dynamic;
	public var iqr : Dynamic;
	public var mean : Dynamic;
	public var median : Dynamic;
	public function meets_confidence(?threshold:Dynamic):Dynamic;
	/**
		Convenience method for merging replicates.
		
		Merge will extrapolate times to `number_per_run=1` and will not
		transfer any metadata. (Since it might differ between replicates)
	**/
	static public function merge(measurements:Dynamic):Dynamic;
	static public var metadata : Dynamic;
	/**
		Approximate significant figure estimate.
		
		This property is intended to give a convenient way to estimate the
		precision of a measurement. It only uses the interquartile region to
		estimate statistics to try to mitigate skew from the tails, and
		uses a static z value of 1.645 since it is not expected to be used
		for small values of `n`, so z can approximate `t`.
		
		The significant figure estimation used in conjunction with the
		`trim_sigfig` method to provide a more human interpretable data
		summary. __repr__ does not use this method; it simply displays raw
		values. Significant figure estimation is intended for `Compare`.
	**/
	public var significant_figures : Dynamic;
	public var times : Dynamic;
	public var title : Dynamic;
}
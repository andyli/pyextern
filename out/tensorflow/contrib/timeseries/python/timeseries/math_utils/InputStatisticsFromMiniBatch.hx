/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.math_utils;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.math_utils", "InputStatisticsFromMiniBatch") extern class InputStatisticsFromMiniBatch {
	/**
		Extra statistics used to incrementally update InputStatistics.
	**/
	static public function _AdaptiveInputAuxiliaryStatistics(num_features:Dynamic, dtype:Dynamic):Dynamic;
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
		Configure the input statistics object.
		
		Args:
		  num_features: Number of features for the time series
		  dtype: The floating point data type to use.
		  starting_variance_window_size: The number of datapoints to use when
		      computing the mean and variance at the start of the series.
	**/
	@:native("__init__")
	public function ___init__(num_features:Dynamic, dtype:Dynamic, ?starting_variance_window_size:Dynamic):Dynamic;
	/**
		Configure the input statistics object.
		
		Args:
		  num_features: Number of features for the time series
		  dtype: The floating point data type to use.
		  starting_variance_window_size: The number of datapoints to use when
		      computing the mean and variance at the start of the series.
	**/
	public function new(num_features:Dynamic, dtype:Dynamic, ?starting_variance_window_size:Dynamic):Void;
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
		Creates non-trainable variables representing input statistics.
	**/
	public function _create_variable_statistics_object():Dynamic;
	/**
		Given mini-batch input, update `statistics` and `auxiliary_variables`.
	**/
	public function _update_statistics_from_mini_batch(statistics:Dynamic, auxiliary_variables:Dynamic, times:Dynamic, values:Dynamic):Dynamic;
	/**
		Create any ops needed to provide input statistics.
		
		Should be called before statistics are requested.
		
		Args:
		  features: A dictionary, the output of a `TimeSeriesInputFn` (with keys
		      TrainEvalFeatures.TIMES and TrainEvalFeatures.VALUES).
		  update_statistics: Whether `features` should be used to update adaptive
		      statistics. Typically True for training and false for evaluation.
		Returns:
		  An InputStatistics object composed of Variables, which will be updated
		  based on mini-batches of data if requested.
	**/
	public function initialize_graph(features:Dynamic, ?update_statistics:Dynamic):Dynamic;
}
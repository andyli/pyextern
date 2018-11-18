/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.ops.quantile_ops;
@:pythonImport("tensorflow.contrib.boosted_trees.python.ops.quantile_ops", "QuantileAccumulator") extern class QuantileAccumulator {
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
		Creates a QuantileAccumulator object.
		
		Args:
		  init_stamp_token: The initial value for the stamp token.
		  epsilon: Error bound on the quantile computation.
		  num_quantiles: Number of quantiles to produce from the final summary.
		  max_elements: Maximum number of elements added to the accumulator.
		  name: the name to save the accumulator under.
		  container: An optional `string`. Defaults to `""`
		  generate_quantiles: Generate quantiles instead of approximate boundaries.
		    If true, exactly `num_quantiles` will be produced in the final summary.
	**/
	@:native("__init__")
	public function ___init__(init_stamp_token:Dynamic, epsilon:Dynamic, num_quantiles:Dynamic, ?max_elements:Dynamic, ?name:Dynamic, ?container:Dynamic, ?generate_quantiles:Dynamic):Dynamic;
	/**
		Creates a QuantileAccumulator object.
		
		Args:
		  init_stamp_token: The initial value for the stamp token.
		  epsilon: Error bound on the quantile computation.
		  num_quantiles: Number of quantiles to produce from the final summary.
		  max_elements: Maximum number of elements added to the accumulator.
		  name: the name to save the accumulator under.
		  container: An optional `string`. Defaults to `""`
		  generate_quantiles: Generate quantiles instead of approximate boundaries.
		    If true, exactly `num_quantiles` will be produced in the final summary.
	**/
	public function new(init_stamp_token:Dynamic, epsilon:Dynamic, num_quantiles:Dynamic, ?max_elements:Dynamic, ?name:Dynamic, ?container:Dynamic, ?generate_quantiles:Dynamic):Void;
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
	public function _make_savable(name:Dynamic):Dynamic;
	public function _make_summary(column:Dynamic, example_weights:Dynamic):Dynamic;
	/**
		Adds quantile summary to its stream in resource.
	**/
	public function add_prebuilt_summary(stamp_token:Dynamic, summary:Dynamic):Dynamic;
	/**
		Adds quantile summary to its stream in resource.
	**/
	public function add_summary(stamp_token:Dynamic, column:Dynamic, example_weights:Dynamic):Dynamic;
	/**
		The device for SaveSpec Tensors.
	**/
	public var device : Dynamic;
	/**
		Finalizes quantile summary stream and resets it for next iteration.
		
		Args:
		  stamp_token: Expected current token.
		  next_stamp_token: Next value for the token.
		Returns:
		  The flush operation.
	**/
	public function flush(stamp_token:Dynamic, next_stamp_token:Dynamic):Dynamic;
	/**
		Finalizes quantile summary stream and resets it for next iteration.
	**/
	public function flush_summary(stamp_token:Dynamic, next_stamp_token:Dynamic):Dynamic;
	/**
		Returns quantile buckets created during previous flush.
	**/
	public function get_buckets(stamp_token:Dynamic):Dynamic;
	public function resource():Dynamic;
	/**
		Restores the associated quantile accumulator from 'restored_tensors'.
		
		Args:
		  restored_tensors: the tensors that were loaded from a checkpoint.
		  unused_restored_shapes: the shapes this object should conform to after
		    restore.
		
		Returns:
		  The operation that restores the state of the quantile accumulator.
	**/
	public function restore(restored_tensors:Dynamic, unused_restored_shapes:Dynamic):Dynamic;
	/**
		Schedules to add a quantile summary to its stream in resource.
	**/
	public function schedule_add_summary(stamp_token:Dynamic, column:Dynamic, example_weights:Dynamic):Dynamic;
	/**
		Returns a scheduled read of buckets created during previous flush.
	**/
	public function schedule_get_buckets():Dynamic;
}
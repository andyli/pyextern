/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tpu_estimator;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tpu_estimator", "_InputPipeline") extern class _InputPipeline {
	/**
		The recorder to record inputs structure.
	**/
	static public function InputsStructureRecorder(?input_partition_dims:Dynamic):Dynamic;
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
		Constructor.
		
		Args:
		  input_fn: input fn for train or eval.
		  batch_axis: A python tuple of int values describing how each tensor
		    produced by the Estimator `input_fn` should be split across the TPU
		    compute shards.
		  ctx: A `_InternalTPUContext` instance with mode.
		
		Raises:
		  ValueError: If both `sharded_features` and `num_cores` are `None`.
	**/
	@:native("__init__")
	public function ___init__(input_fn:Dynamic, batch_axis:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  input_fn: input fn for train or eval.
		  batch_axis: A python tuple of int values describing how each tensor
		    produced by the Estimator `input_fn` should be split across the TPU
		    compute shards.
		  ctx: A `_InternalTPUContext` instance with mode.
		
		Raises:
		  ValueError: If both `sharded_features` and `num_cores` are `None`.
	**/
	public function new(input_fn:Dynamic, batch_axis:Dynamic, ctx:Dynamic):Void;
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
		Deploys the input pipeline and record input structure.
	**/
	public function _invoke_input_fn_and_record_structure():Dynamic;
	/**
		Validates the input pipeline.
		
		Perform some sanity checks to log user friendly information. We should
		error out to give users better error message. But, if
		_WRAP_INPUT_FN_INTO_WHILE_LOOP is False (legacy behavior), we cannot break
		user code, so, log a warning.
		
		Raises:
		  RuntimeError: If the validation failed.
	**/
	public function _validate_input_pipeline():Dynamic;
	/**
		Generates infeed enqueue ops and dequeue_fn.
	**/
	public function generate_infeed_enqueue_ops_and_dequeue_fn():Dynamic;
}
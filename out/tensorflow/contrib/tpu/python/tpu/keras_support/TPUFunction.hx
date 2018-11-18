/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.keras_support;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.keras_support", "TPUFunction") extern class TPUFunction {
	/**
		__call__ executes the function on the computational hardware.
		
		It handles executing infeed, and preprocessing in addition to executing the
		model on the TPU hardware.
		
		Note: `__call__` has a sibling method `pipeline_run` which performs the same
		operations, but with software pipelining.
		
		Args:
		  inputs: The inputs to use to train.
		
		Returns:
		  The output of the computation for the given mode it is executed in.
		
		Raises:
		  RuntimeError: If there is an inappropriate use of the function.
	**/
	public function __call__(inputs:Dynamic):Dynamic;
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
	public function ___init__(model:Dynamic, execution_mode:Dynamic, tpu_assignment:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(model:Dynamic, execution_mode:Dynamic, tpu_assignment:Dynamic):Void;
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
		Returns input tensors and numpy array inputs corresponding to `inputs`.
		
		Args:
		  inputs: NumPy inputs.
		
		Returns:
		  A tuple of `input_tensors`, and `inputs`.
	**/
	public function _construct_input_tensors_and_inputs(inputs:Dynamic):Dynamic;
	/**
		Return an existing manager, or construct a new InfeedManager for inputs.
		
		_lookup_infeed_manager will return an existing InfeedManager if one has been
		previously assigned for this model and input. If not, it will construct a
		new TPUNumpyInfeedManager.
		
		Args:
		  inputs: A NumPy input to the model.
		
		Returns:
		  A `TPUInfeedManager` object to manage infeeds for this input.
	**/
	public function _lookup_infeed_manager(inputs:Dynamic):Dynamic;
	/**
		Processes the outputs of a model function execution.
		
		Args:
		  outfeed_outputs: The sharded outputs of the TPU computation.
		
		Returns:
		  The aggregated outputs of the TPU computation to be used in the rest of
		  the model execution.
	**/
	public function _process_outputs(outfeed_outputs:Dynamic):Dynamic;
	/**
		Specialize `self.model` (a Keras model) for the given input shapes.
	**/
	public function _specialize_model(input_specs:Dynamic, infeed_manager:Dynamic):Dynamic;
	/**
		Verifies that the given TPUModelOp can be compiled via XLA.
	**/
	public function _test_model_compiles(tpu_model_ops:Dynamic):Dynamic;
	/**
		Looks up the corresponding `TPUModelOp` for a given `input_specs`.
		
		It instantiates a new copy of the model for each unique input shape.
		
		Args:
		  input_specs: The specification of the inputs to train on.
		  infeed_manager: The infeed manager responsible for feeding in data.
		
		Returns:
		  A `TPUModelOp` instance that can be used to execute a step of the model.
	**/
	public function _tpu_model_ops_for_input_specs(input_specs:Dynamic, infeed_manager:Dynamic):Dynamic;
	/**
		pipeline_run executes the function on the computational hardware.
		
		pipeline_run performs the same computation as __call__, however it runs the
		infeed in a software pipelined fashion compared to the on-device execution.
		
		Note: it is the responsibility of the caller to call `pipeline_run` in the
		following sequence:
		  - Once with `cur_step_inputs=None` and `next_step_inputs=list(...)`
		  - `n` times with `cur_step_inputs` and `next_step_inputs` as `list`s
		  - Once with `cur_step_inputs=list(...)` and `next_step_inputs=None`
		Additionally, it is the responsibility of the caller to pass
		`next_step_inputs` as `cur_step_inputs` on the next invocation of
		`pipeline_run`.
		
		Args:
		  cur_step_inputs: The current step's inputs.
		  next_step_inputs: The next step's inputs.
		
		Returns:
		  The output of the computation for the given mode it is executed in.
		
		Raises:
		  RuntimeError: If there is an inappropriate use of the function.
	**/
	public function pipeline_run(cur_step_inputs:Dynamic, next_step_inputs:Dynamic):Dynamic;
}
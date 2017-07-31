/* This file is generated, do not edit! */
package tensorflow.python.ops.data_flow_ops;
@:pythonImport("tensorflow.python.ops.data_flow_ops", "SparseConditionalAccumulator") extern class SparseConditionalAccumulator {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Creates a new ConditionalAccumulator.
		
		Args:
		  dtype: Datatype of the accumulated gradients.
		  shape: Shape of the accumulated gradients.
		  accumulator_ref: A handle to the conditional accumulator, created by sub-
		    classes
	**/
	@:native("__init__")
	public function ___init__(dtype:Dynamic, ?shape:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a new ConditionalAccumulator.
		
		Args:
		  dtype: Datatype of the accumulated gradients.
		  shape: Shape of the accumulated gradients.
		  accumulator_ref: A handle to the conditional accumulator, created by sub-
		    classes
	**/
	public function new(dtype:Dynamic, ?shape:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		The underlying accumulator reference.
	**/
	public var accumulator_ref : Dynamic;
	/**
		Attempts to apply a sparse gradient to the accumulator.
		
		The attempt is silently dropped if the gradient is stale, i.e., local_step
		is less than the accumulator's global time step.
		
		A sparse gradient is represented by its indices, values and possibly empty
		or None shape. Indices must be a vector representing the locations of
		non-zero entries in the tensor. Values are the non-zero slices of the
		gradient, and must have the same first dimension as indices, i.e., the nnz
		represented by indices and values must be consistent. Shape, if not empty or
		None, must be consistent with the accumulator's shape (if also provided).
		
		Example:
		  A tensor [[0, 0], [0. 1], [2, 3]] can be represented
		    indices: [1,2]
		    values: [[0,1],[2,3]]
		    shape: [3, 2]
		
		Args:
		  grad_indices: Indices of the sparse gradient to be applied.
		  grad_values: Values of the sparse gradient to be applied.
		  grad_shape: Shape of the sparse gradient to be applied.
		  local_step: Time step at which the gradient was computed.
		  name: Optional name for the operation.
		
		Returns:
		  The operation that (conditionally) applies a gradient to the accumulator.
		
		Raises:
		  InvalidArgumentError: If grad is of the wrong shape
	**/
	public function apply_grad(grad_indices:Dynamic, grad_values:Dynamic, ?grad_shape:Dynamic, ?local_step:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Attempts to apply a gradient to the accumulator.
		
		The attempt is silently dropped if the gradient is stale, i.e., local_step
		is less than the accumulator's global time step.
		
		Args:
		  grad: The gradient IndexedSlices to be applied.
		  local_step: Time step at which the gradient was computed.
		  name: Optional name for the operation.
		
		Returns:
		  The operation that (conditionally) applies a gradient to the accumulator.
		
		Raises:
		  InvalidArgumentError: If grad is of the wrong shape
	**/
	public function apply_indexed_slices_grad(grad:Dynamic, ?local_step:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The datatype of the gradients accumulated by this accumulator.
	**/
	public var dtype : Dynamic;
	/**
		The name of the underlying accumulator.
	**/
	public var name : Dynamic;
	/**
		Number of gradients that have currently been aggregated in accumulator.
		
		Args:
		  name: Optional name for the operation.
		
		Returns:
		  Number of accumulated gradients currently in accumulator.
	**/
	public function num_accumulated(?name:Dynamic):Dynamic;
	/**
		Sets the global time step of the accumulator.
		
		The operation logs a warning if we attempt to set to a time step that is
		lower than the accumulator's own time step.
		
		Args:
		  new_global_step: Value of new time step. Can be a variable or a constant
		  name: Optional name for the operation.
		
		Returns:
		  Operation that sets the accumulator's time step.
	**/
	public function set_global_step(new_global_step:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Attempts to extract the average gradient from the accumulator.
		
		The operation blocks until sufficient number of gradients have been
		successfully applied to the accumulator.
		
		Once successful, the following actions are also triggered:
		- Counter of accumulated gradients is reset to 0.
		- Aggregated gradient is reset to 0 tensor.
		- Accumulator's internal time step is incremented by 1.
		
		Args:
		  num_required: Number of gradients that needs to have been aggregated
		  name: Optional name for the operation
		
		Returns:
		  A tuple of indices, values, and shape representing the average gradient.
		
		Raises:
		  InvalidArgumentError: If num_required < 1
	**/
	public function take_grad(num_required:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Attempts to extract the average gradient from the accumulator.
		
		The operation blocks until sufficient number of gradients have been
		successfully applied to the accumulator.
		
		Once successful, the following actions are also triggered:
		- Counter of accumulated gradients is reset to 0.
		- Aggregated gradient is reset to 0 tensor.
		- Accumulator's internal time step is incremented by 1.
		
		Args:
		  num_required: Number of gradients that needs to have been aggregated
		  name: Optional name for the operation
		
		Returns:
		  An IndexedSlices holding the value of the average gradient.
		
		Raises:
		  InvalidArgumentError: If num_required < 1
	**/
	public function take_indexed_slices_grad(num_required:Dynamic, ?name:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package tensorflow.python.ops.rnn_cell;
@:pythonImport("tensorflow.python.ops.rnn_cell", "InputProjectionWrapper") extern class InputProjectionWrapper {
	/**
		Run the input projection and then the cell.
	**/
	public function __call__(inputs:Dynamic, state:Dynamic, ?scope:Dynamic):Dynamic;
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
		Create a cell with input projection.
		
		Args:
		  cell: an RNNCell, a projection of inputs is added before it.
		  num_proj: Python integer.  The dimension to project to.
		  input_size: Deprecated and unused.
		
		Raises:
		  TypeError: if cell is not an RNNCell.
	**/
	@:native("__init__")
	public function ___init__(cell:Dynamic, num_proj:Dynamic, ?input_size:Dynamic):Dynamic;
	/**
		Create a cell with input projection.
		
		Args:
		  cell: an RNNCell, a projection of inputs is added before it.
		  num_proj: Python integer.  The dimension to project to.
		  input_size: Deprecated and unused.
		
		Raises:
		  TypeError: if cell is not an RNNCell.
	**/
	public function new(cell:Dynamic, num_proj:Dynamic, ?input_size:Dynamic):Void;
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
		Integer or TensorShape: size of outputs produced by this cell.
	**/
	public var output_size : Dynamic;
	/**
		size(s) of state(s) used by this cell.
		
		It can be represented by an Integer, a TensorShape or a tuple of Integers
		or TensorShapes.
	**/
	public var state_size : Dynamic;
	/**
		Return zero-filled state tensor(s).
		
		Args:
		  batch_size: int, float, or unit Tensor representing the batch size.
		  dtype: the data type to use for the state.
		
		Returns:
		  If `state_size` is an int or TensorShape, then the return value is a
		  `N-D` tensor of shape `[batch_size x state_size]` filled with zeros.
		
		  If `state_size` is a nested list or tuple, then the return value is
		  a nested list or tuple (of the same structure) of `2-D` tensors with
		the shapes `[batch_size x s]` for each s in `state_size`.
	**/
	public function zero_state(batch_size:Dynamic, dtype:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package tensorflow.contrib.rnn.python.ops.lstm_ops;
@:pythonImport("tensorflow.contrib.rnn.python.ops.lstm_ops", "LSTMBlockWrapper") extern class LSTMBlockWrapper {
	/**
		Run this LSTM on inputs, starting from the given state.
		
		Args:
		  inputs: `3-D` tensor with shape `[time_len, batch_size, input_size]`
		    or a list of `time_len` tensors of shape `[batch_size, input_size]`.
		  initial_state: a tuple `(initial_cell_state, initial_output)` with tensors
		    of shape `[batch_size, self._num_units]`. If this is not provided, the
		    cell is expected to create a zero initial state of type `dtype`.
		  dtype: The data type for the initial state and expected output. Required
		    if `initial_state` is not provided or RNN state has a heterogeneous
		    dtype.
		  sequence_length: Specifies the length of each sequence in inputs. An
		    `int32` or `int64` vector (tensor) size `[batch_size]`, values in `[0,
		    time_len).`
		    Defaults to `time_len` for each element.
		  scope: `VariableScope` for the created subgraph; defaults to class name.
		
		Returns:
		  A pair containing:
		
		  - Output: A `3-D` tensor of shape `[time_len, batch_size, output_size]`
		    or a list of time_len tensors of shape `[batch_size, output_size]`,
		    to match the type of the `inputs`.
		  - Final state: a tuple `(cell_state, output)` matching `initial_state`.
		
		Raises:
		  ValueError: in case of shape mismatches
	**/
	public function __call__(inputs:Dynamic, ?initial_state:Dynamic, ?dtype:Dynamic, ?sequence_length:Dynamic, ?scope:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Run this LSTM on inputs, starting from the given state.
		
		This method must be implemented by subclasses and does the actual work
		of calling the cell.
		
		Args:
		  inputs: `3-D` tensor with shape `[time_len, batch_size, input_size]`
		  initial_cell_state: initial value for cell state, shape `[batch_size,
		    self._num_units]`
		  initial_output: initial value of cell output, shape `[batch_size,
		    self._num_units]`
		  dtype: The data type for the initial state and expected output.
		  sequence_length: Specifies the length of each sequence in inputs. An int32
		    or int64 vector (tensor) size [batch_size], values in [0, time_len) or
		      None.
		
		Returns:
		  A pair containing:
		
		  - State: A `3-D` tensor of shape `[time_len, batch_size, output_size]`
		  - Output: A `3-D` tensor of shape `[time_len, batch_size, output_size]`
	**/
	public function _call_cell(inputs:Dynamic, initial_cell_state:Dynamic, initial_output:Dynamic, dtype:Dynamic, sequence_length:Dynamic):Dynamic;
	/**
		Produce `out`, s.t. out(i, j) = data(indices(i), i, j).
	**/
	public function _gather_states(data:Dynamic, indices:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Number of units in this cell (output dimension).
	**/
	public var num_units : Dynamic;
}
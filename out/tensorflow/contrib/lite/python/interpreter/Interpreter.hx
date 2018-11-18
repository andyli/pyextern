/* This file is generated, do not edit! */
package tensorflow.contrib.lite.python.interpreter;
@:pythonImport("tensorflow.contrib.lite.python.interpreter", "Interpreter") extern class Interpreter {
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
		  model_path: Path to TF-Lite Flatbuffer file.
		  model_content: Content of model.
		
		Raises:
		  ValueError: If the interpreter was unable to create.
	**/
	@:native("__init__")
	public function ___init__(?model_path:Dynamic, ?model_content:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  model_path: Path to TF-Lite Flatbuffer file.
		  model_content: Content of model.
		
		Raises:
		  ValueError: If the interpreter was unable to create.
	**/
	public function new(?model_path:Dynamic, ?model_content:Dynamic):Void;
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
		Makes sure no numpy arrays pointing to internal buffers are active.
		
		This should be called from any function that will call a function on
		_interpreter that may reallocate memory e.g. invoke(), ...
		
		Raises:
		  RuntimeError: If there exist numpy objects pointing to internal memory
		    then we throw.
	**/
	public function _ensure_safe():Dynamic;
	/**
		Gets tensor details.
		
		Args:
		  tensor_index: Tensor index of tensor to query.
		
		Returns:
		  a dictionary containing the name, index, shape and type of the tensor.
		
		Raises:
		  ValueError: If tensor_index is invalid.
	**/
	public function _get_tensor_details(tensor_index:Dynamic):Dynamic;
	/**
		Returns true if there exist no numpy array buffers.
		
		This means it is safe to run tflite calls that may destroy internally
		allocated memory. This works, because in the wrapper.cc we have made
		the numpy base be the self._interpreter.
	**/
	public function _safe_to_run():Dynamic;
	public function allocate_tensors():Dynamic;
	/**
		Gets model input details.
		
		Returns:
		  A list of input details.
	**/
	public function get_input_details():Dynamic;
	/**
		Gets model output details.
		
		Returns:
		  A list of output details.
	**/
	public function get_output_details():Dynamic;
	/**
		Gets the value of the input tensor (get a copy).
		
		If you wish to avoid the copy, use `tensor()`.
		
		Args:
		  tensor_index: Tensor index of tensor to get. This value can be gotten from
		                the 'index' field in get_output_details.
		
		Returns:
		  a numpy array.
	**/
	public function get_tensor(tensor_index:Dynamic):Dynamic;
	/**
		Invoke the interpreter.
		
		Be sure to set the input sizes, allocate tensors and fill values before
		calling this.
		
		Raises:
		  ValueError: When the underlying interpreter fails raise ValueError.
	**/
	public function invoke():Dynamic;
	public function reset_all_variables():Dynamic;
	/**
		Resizes an input tensor.
		
		Args:
		  input_index: Tensor index of input to set. This value can be gotten from
		               the 'index' field in get_input_details.
		  tensor_size: The tensor_shape to resize the input to.
		
		Raises:
		  ValueError: If the interpreter could not resize the input tensor.
	**/
	public function resize_tensor_input(input_index:Dynamic, tensor_size:Dynamic):Dynamic;
	/**
		Sets the value of the input tensor. Note this copies data in `value`.
		
		If you want to avoid copying, you can use the `tensor()` function to get a
		numpy buffer pointing to the input buffer in the tflite interpreter.
		
		Args:
		  tensor_index: Tensor index of tensor to set. This value can be gotten from
		                the 'index' field in get_input_details.
		  value: Value of tensor to set.
		
		Raises:
		  ValueError: If the interpreter could not set the tensor.
	**/
	public function set_tensor(tensor_index:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns function that gives a numpy view of the current tensor buffer.
		
		This allows reading and writing to this tensors w/o copies. This more
		closely mirrors the C++ Interpreter class interface's tensor() member, hence
		the name. Be careful to not hold these output references through calls
		to `allocate_tensors()` and `invoke()`.
		
		Usage:
		
		interpreter.allocate_tensors()
		input = interpreter.tensor(interpreter.get_input_details()[0]["index"])
		output = interpreter.tensor(interpreter.get_output_details()[0]["index"])
		for i in range(10):
		  input().fill(3.)
		  interpreter.invoke()
		  print("inference %s" % output())
		
		Notice how this function avoids making a numpy array directly. This is
		because it is important to not hold actual numpy views to the data longer
		than necessary. If you do, then the interpreter can no longer be invoked,
		because it is possible the interpreter would resize and invalidate the
		referenced tensors. The NumPy API doesn't allow any mutability of the
		the underlying buffers.
		
		WRONG:
		
		input = interpreter.tensor(interpreter.get_input_details()[0]["index"])()
		output = interpreter.tensor(interpreter.get_output_details()[0]["index"])()
		interpreter.allocate_tensors()  # This will throw RuntimeError
		for i in range(10):
		  input.fill(3.)
		  interpreter.invoke()  # this will throw RuntimeError since input,output
		
		Args:
		  tensor_index: Tensor index of tensor to get. This value can be gotten from
		                the 'index' field in get_output_details.
		
		Returns:
		  A function that can return a new numpy array pointing to the internal
		  TFLite tensor state at any point. It is safe to hold the function forever,
		  but it is not safe to hold the numpy array forever.
	**/
	public function tensor(tensor_index:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package tensorflow.lite.python.interpreter;
@:pythonImport("tensorflow.lite.python.interpreter", "InterpreterWithCustomOps") extern class InterpreterWithCustomOps {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		  custom_op_registerers: List of str (symbol names) or functions that take a
		    pointer to a MutableOpResolver and register a custom op. When passing
		    functions, use a pybind function that takes a uintptr_t that can be
		    recast as a pointer to a MutableOpResolver.
		  **kwargs: Additional arguments passed to Interpreter.
		
		Raises:
		  ValueError: If the interpreter was unable to create.
	**/
	@:native("__init__")
	public function ___init__(?custom_op_registerers:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Constructor.
		
		Args:
		  custom_op_registerers: List of str (symbol names) or functions that take a
		    pointer to a MutableOpResolver and register a custom op. When passing
		    functions, use a pybind function that takes a uintptr_t that can be
		    recast as a pointer to a MutableOpResolver.
		  **kwargs: Additional arguments passed to Interpreter.
		
		Raises:
		  ValueError: If the interpreter was unable to create.
	**/
	public function new(?custom_op_registerers:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
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
		Gets list of SignatureDefs in the model.
		
		Example,
		```
		signatures = interpreter._get_full_signature_list()
		print(signatures)
		
		# {
		#   'add': {'inputs': {'x': 1, 'y': 0}, 'outputs': {'output_0': 4}}
		# }
		
		Then using the names in the signature list you can get a callable from
		get_signature_runner().
		```
		
		Returns:
		  A list of SignatureDef details in a dictionary structure.
		  It is keyed on the SignatureDef method name, and the value holds
		  dictionary of inputs and outputs.
	**/
	public function _get_full_signature_list():Dynamic;
	/**
		Gets a dictionary with arrays of ids for tensors involved with an op.
		
		Args:
		  op_index: Operation/node index of node to query.
		
		Returns:
		  a dictionary containing the index, op name, and arrays with lists of the
		  indices for the inputs and outputs of the op/node.
	**/
	public function _get_op_details(op_index:Dynamic):Dynamic;
	/**
		Gets op details for every node.
		
		Returns:
		  A list of dictionaries containing arrays with lists of tensor ids for
		  tensors involved in the op.
	**/
	public function _get_ops_details():Dynamic;
	/**
		Gets tensor details.
		
		Args:
		  tensor_index: Tensor index of tensor to query.
		
		Returns:
		  A dictionary containing the following fields of the tensor:
		    'name': The tensor name.
		    'index': The tensor index in the interpreter.
		    'shape': The shape of the tensor.
		    'quantization': Deprecated, use 'quantization_parameters'. This field
		        only works for per-tensor quantization, whereas
		        'quantization_parameters' works in all cases.
		    'quantization_parameters': The parameters used to quantize the tensor:
		      'scales': List of scales (one if per-tensor quantization)
		      'zero_points': List of zero_points (one if per-tensor quantization)
		      'quantized_dimension': Specifies the dimension of per-axis
		          quantization, in the case of multiple scales/zero_points.
		
		Raises:
		  ValueError: If tensor_index is invalid.
	**/
	public function _get_tensor_details(tensor_index:Dynamic):Dynamic;
	/**
		Returns a pointer to the underlying tflite::Interpreter instance.
		
		This allows extending tflite.Interpreter's functionality in a custom C++
		function. Consider how that may work in a custom pybind wrapper:
		
		  m.def("SomeNewFeature", ([](py::object handle) {
		    auto* interpreter =
		      reinterpret_cast<tflite::Interpreter*>(handle.cast<intptr_t>());
		    ...
		  }))
		
		and corresponding Python call:
		
		  SomeNewFeature(interpreter.native_handle())
		
		Note: This approach is fragile. Users must guarantee the C++ extension build
		is consistent with the tflite.Interpreter's underlying C++ build.
	**/
	public function _native_handle():Dynamic;
	/**
		Returns true if there exist no numpy array buffers.
		
		This means it is safe to run tflite calls that may destroy internally
		allocated memory. This works, because in the wrapper.cc we have made
		the numpy base be the self._interpreter.
	**/
	public function _safe_to_run():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public function allocate_tensors():Dynamic;
	/**
		Gets model input tensor details.
		
		Returns:
		  A list in which each item is a dictionary with details about
		  an input tensor. Each dictionary contains the following fields
		  that describe the tensor:
		
		  + `name`: The tensor name.
		  + `index`: The tensor index in the interpreter.
		  + `shape`: The shape of the tensor.
		  + `shape_signature`: Same as `shape` for models with known/fixed shapes.
		    If any dimension sizes are unkown, they are indicated with `-1`.
		  + `dtype`: The numpy data type (such as `np.int32` or `np.uint8`).
		  + `quantization`: Deprecated, use `quantization_parameters`. This field
		    only works for per-tensor quantization, whereas
		    `quantization_parameters` works in all cases.
		  + `quantization_parameters`: A dictionary of parameters used to quantize
		    the tensor:
		    ~ `scales`: List of scales (one if per-tensor quantization).
		    ~ `zero_points`: List of zero_points (one if per-tensor quantization).
		    ~ `quantized_dimension`: Specifies the dimension of per-axis
		    quantization, in the case of multiple scales/zero_points.
		  + `sparsity_parameters`: A dictionary of parameters used to encode a
		    sparse tensor. This is empty if the tensor is dense.
	**/
	public function get_input_details():Dynamic;
	/**
		Gets model output tensor details.
		
		Returns:
		  A list in which each item is a dictionary with details about
		  an output tensor. The dictionary contains the same fields as
		  described for `get_input_details()`.
	**/
	public function get_output_details():Dynamic;
	/**
		Gets list of SignatureDefs in the model.
		
		Example,
		```
		signatures = interpreter.get_signature_list()
		print(signatures)
		
		# {
		#   'add': {'inputs': ['x', 'y'], 'outputs': ['output_0']}
		# }
		
		Then using the names in the signature list you can get a callable from
		get_signature_runner().
		```
		
		Returns:
		  A list of SignatureDef details in a dictionary structure.
		  It is keyed on the SignatureDef method name, and the value holds
		  dictionary of inputs and outputs.
	**/
	public function get_signature_list():Dynamic;
	/**
		Gets callable for inference of specific SignatureDef.
		
		Example usage,
		```
		interpreter = tf.lite.Interpreter(model_content=tflite_model)
		interpreter.allocate_tensors()
		fn = interpreter.get_signature_runner('div_with_remainder')
		output = fn(x=np.array([3]), y=np.array([2]))
		print(output)
		# {
		#   'quotient': array([1.], dtype=float32)
		#   'remainder': array([1.], dtype=float32)
		# }
		```
		
		None can be passed for signature_key if the model has a single Signature
		only.
		
		All names used are this specific SignatureDef names.
		
		
		Args:
		  signature_key: Signature key for the SignatureDef, it can be None if and
		    only if the model has a single SignatureDef. Default value is None.
		
		Returns:
		  This returns a callable that can run inference for SignatureDef defined
		  by argument 'signature_key'.
		  The callable will take key arguments corresponding to the arguments of the
		  SignatureDef, that should have numpy values.
		  The callable will returns dictionary that maps from output names to numpy
		  values of the computed results.
		
		Raises:
		  ValueError: If passed signature_key is invalid.
	**/
	public function get_signature_runner(?signature_key:Dynamic):Dynamic;
	/**
		Gets the value of the output tensor (get a copy).
		
		If you wish to avoid the copy, use `tensor()`. This function cannot be used
		to read intermediate results.
		
		Args:
		  tensor_index: Tensor index of tensor to get. This value can be gotten from
		    the 'index' field in get_output_details.
		
		Returns:
		  a numpy array.
	**/
	public function get_tensor(tensor_index:Dynamic):Dynamic;
	/**
		Gets tensor details for every tensor with valid tensor details.
		
		Tensors where required information about the tensor is not found are not
		added to the list. This includes temporary tensors without a name.
		
		Returns:
		  A list of dictionaries containing tensor information.
	**/
	public function get_tensor_details():Dynamic;
	/**
		Invoke the interpreter.
		
		Be sure to set the input sizes, allocate tensors and fill values before
		calling this. Also, note that this function releases the GIL so heavy
		computation can be done in the background while the Python interpreter
		continues. No other function on this object should be called while the
		invoke() call has not finished.
		
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
		  strict: Only unknown dimensions can be resized when `strict` is True.
		    Unknown dimensions are indicated as `-1` in the `shape_signature`
		    attribute of a given tensor. (default False)
		
		Raises:
		  ValueError: If the interpreter could not resize the input tensor.
		
		Usage:
		```
		interpreter = Interpreter(model_content=tflite_model)
		interpreter.resize_tensor_input(0, [num_test_images, 224, 224, 3])
		interpreter.allocate_tensors()
		interpreter.set_tensor(0, test_images)
		interpreter.invoke()
		```
	**/
	public function resize_tensor_input(input_index:Dynamic, tensor_size:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Sets the value of the input tensor.
		
		Note this copies data in `value`.
		
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
		to `allocate_tensors()` and `invoke()`. This function cannot be used to read
		intermediate results.
		
		Usage:
		
		```
		interpreter.allocate_tensors()
		input = interpreter.tensor(interpreter.get_input_details()[0]["index"])
		output = interpreter.tensor(interpreter.get_output_details()[0]["index"])
		for i in range(10):
		  input().fill(3.)
		  interpreter.invoke()
		  print("inference %s" % output())
		```
		
		Notice how this function avoids making a numpy array directly. This is
		because it is important to not hold actual numpy views to the data longer
		than necessary. If you do, then the interpreter can no longer be invoked,
		because it is possible the interpreter would resize and invalidate the
		referenced tensors. The NumPy API doesn't allow any mutability of the
		the underlying buffers.
		
		WRONG:
		
		```
		input = interpreter.tensor(interpreter.get_input_details()[0]["index"])()
		output = interpreter.tensor(interpreter.get_output_details()[0]["index"])()
		interpreter.allocate_tensors()  # This will throw RuntimeError
		for i in range(10):
		  input.fill(3.)
		  interpreter.invoke()  # this will throw RuntimeError since input,output
		```
		
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
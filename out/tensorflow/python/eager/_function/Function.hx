/* This file is generated, do not edit! */
package tensorflow.python.eager._function;
@:pythonImport("tensorflow.python.eager.function", "Function") extern class Function {
	/**
		Executes the wrapped function.
		
		Args:
		  *args: Tensors or Variables. Positional arguments are only accepted when
		    they correspond one-to-one with arguments of the traced Python function.
		  **kwargs: Tensors or Variables specified by name. When
		    `get_concrete_function` was called to create this `Function`, each
		    Tensor input was given a name, defaulting to the name of the Python
		    function's argument but possibly overridden by the `name=` argument to
		    `tf.TensorSpec`. These names become the argument names for the concrete
		    function.
		
		Returns:
		  The result of applying the TF function on the given Tensors.
		
		Raises:
		  AssertionError: If this `Function` was not created through
		    `get_concrete_function`.
		  ValueError: If arguments contains anything other than Tensors or
		    Variables.
		  TypeError: For invalid positional/keyword argument combinations.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Initialize a Function.
		
		Args:
		  func_graph: An instance of FuncGraph: the function body to wrap.
		  attrs: (optional) dict mapping names of attributes to their AttrValue
		    values. Attributes in `attrs` will be included in this function's
		    definition.
		 signature: a nested sequence of `TensorSpec` objects specifying the input
		   signature of this function.
		Raises:
		  ValueError: If number of input_placeholders is not equal to the number
		    of function inputs.
	**/
	@:native("__init__")
	public function ___init__(func_graph:Dynamic, ?attrs:Dynamic, ?signature:Dynamic):Dynamic;
	/**
		Initialize a Function.
		
		Args:
		  func_graph: An instance of FuncGraph: the function body to wrap.
		  attrs: (optional) dict mapping names of attributes to their AttrValue
		    values. Attributes in `attrs` will be included in this function's
		    definition.
		 signature: a nested sequence of `TensorSpec` objects specifying the input
		   signature of this function.
		Raises:
		  ValueError: If number of input_placeholders is not equal to the number
		    of function inputs.
	**/
	public function new(func_graph:Dynamic, ?attrs:Dynamic, ?signature:Dynamic):Void;
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
		Calls the inference function and records the result on a tape.
		
		The recorded backwards function will construct the backwards graph and
		rewrite the inference function to the forward function. This only happens
		if the recorded backwards function ends up being used to compute gradients.
		
		This approach avoids constructing unnecessary graphs, but it only works if
		we are calling this function when not executing eagerly.
		
		(Only records results on a tape if the function has outputs)
		
		Args:
		  args: All inputs to the function, including resolved captured inputs
		
		Returns:
		  The call output.
	**/
	public function _backprop_call_with_delayed_rewrite(args:Dynamic):Dynamic;
	/**
		Maps the fdef output list to actual output structure.
		
		Args:
		  result: Output lists defined by FunctionDef.
		Returns:
		  The actual call output.
	**/
	public function _build_call_outputs(result:Dynamic):Dynamic;
	/**
		Executes the wrapped function.
		
		Args:
		  args: a list of Tensors or Variables.
		
		Returns:
		  The result of applying the TF function to `args`.
		
		Raises:
		  ValueError: If `args` contains anything other than Tensors or Variables.
	**/
	public function _call_flat(args:Dynamic):Dynamic;
	/**
		Constructs the backprop function object for this function.
	**/
	public function _construct_backprop_function():Dynamic;
	/**
		Calls the forward function and records the result on a tape.
		
		This method fully constructs the forward and backward functions before
		calling the function and recording them on the tape.
		
		(Only records results on a tape if the function has outputs).
		
		Args:
		  args: All inputs to the function, including resolved captured inputs
		
		Returns:
		  The call output.
	**/
	public function _eager_backprop_call(args:Dynamic):Dynamic;
	/**
		Executes the function, filtering arguments from the Python function.
		
		Objects aside from Tensors and Variables are ignored.
		
		Args:
		  args: Canonicalized positional arguments of the Python function.
		  kwargs: Canonicalized keyword arguments of the Python function.
		
		Returns:
		  The result of applying the function on the Tensors/Variables contained in
		  `args` and `kwargs`.
	**/
	public function _filtered_call(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Gradients of this function.
	**/
	public function _grad_fn(op:Dynamic, ?doutputs:python.VarArgs<Dynamic>):Dynamic;
	/**
		Registers the gradient for the current Function under the given name.
		
		The gradient rewrites an inference call op to a forward call op, but does
		not modify a pre-existing forward call op. It then computes the gradient
		from the output's gradients and the side outputs of the forward op.
		
		Args:
		  name: The name to register the gradient as.
	**/
	public function _register_gradient(name:Dynamic):Dynamic;
	/**
		Registers the function, adds it to the graph g or default graph.
	**/
	public function add_to_graph(?g:Dynamic, ?register_gradient_functions:Dynamic):Dynamic;
	/**
		Returns external Tensors captured by this function.
		
		self.__call__(*args) passes `args + self.captured_inputs` to the function.
	**/
	public var captured_inputs : Dynamic;
	/**
		Returns a `FunctionDef` object representing this function.
	**/
	public var function_def : Dynamic;
	/**
		Returns the graph from which this function was constructed.
	**/
	public var graph : Dynamic;
	/**
		Returns tensors in `self.graph` corresponding to arguments.
	**/
	public var inputs : Dynamic;
	/**
		Function name.
	**/
	public var name : Dynamic;
	public var output_dtypes : Dynamic;
	/**
		The function's output shapes.
	**/
	public var output_shapes : Dynamic;
	/**
		Returns tensors in `self.graph` corresponding to return values.
	**/
	public var outputs : Dynamic;
}
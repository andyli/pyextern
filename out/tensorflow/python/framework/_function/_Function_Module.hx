/* This file is generated, do not edit! */
package tensorflow.python.framework._function;
@:pythonImport("tensorflow.python.framework.function") extern class _Function_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds a _ListToArray node in the func for op.inputs[start:limit].
	**/
	static public function _add_input_array(op:Dynamic, start:Dynamic, limit:Dynamic, dtype:Dynamic, func:Dynamic):Dynamic;
	/**
		Converts an op to a function def node and add it to `func`.
	**/
	static public function _add_op_node(graph:Dynamic, op:Dynamic, func:Dynamic):Dynamic;
	/**
		Adds a _ArrayToList node in the func for op.outputs[start:limit].
	**/
	static public function _add_output_array(op:Dynamic, start:Dynamic, limit:Dynamic, dtype:Dynamic, func:Dynamic):Dynamic;
	/**
		Adds a _ArrayToList node in the func for op.outputs[start:limit].
	**/
	static public function _add_output_list(op:Dynamic, start:Dynamic, limit:Dynamic, dtype_lst:Dynamic, func:Dynamic):Dynamic;
	static public function _get_func_name(func:Dynamic):Dynamic;
	static public function _get_node_def_attr(op:Dynamic):Dynamic;
	static public function _make_argname_from_tensor_name(name:Dynamic):Dynamic;
	static public function _tensor_to_argdef(t:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Calls the function described by `func_def`.
		
		This adds a `call` op to the default graph that calls the function described
		by `func_def` with the tensors listed in `inputs` as arguments.  It returns
		the outputs of the call, which are one or more tensors.
		
		`func_def` is a
		[`FunctionDef`](
		https://www.tensorflow.org/code/tensorflow/core/framework/function.proto)
		protcol buffer describing a
		TensorFlow function.  See [`define_function()`](#define_function) for an
		easy way to create one from a Python function.
		
		You can pass an optional keyword parameter `name=string` to name the
		added operation.
		
		You can pass an optional keyword parameter `noinline=True|False` to instruct
		the runtime not to inline the function body into the call site.
		
		`func_def` is automatically added to the function library of the graph if
		needed.
		
		Args:
		  func_def: A `FunctionDef` protocol buffer.
		  *inputs: A list of tensors
		  **kwargs: Optional keyword arguments.  Can only contain 'name'.
		
		Returns:
		  A list of tensors representing the outputs of the call to `func_def`.
		
		Raises:
		  ValueError: if the arguments are invalid.
	**/
	static public function call_function(func_def:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates a `FunctionDef` for a python function.
		
		`func` is a Python function that receives zero or more tensors and returns at
		least one tensor.  It should add ops to the default graph the usual way by
		calling TensorFlow functions such as `tf.constant()`, `tf.matmul()`, etc.
		
		`input_types` is a dictionary of strings to `tf.Dtype` objects.  Keys are
		names arguments to `func`.  The value indicate the type of tensor expected
		by the function.
		
		The returned `FunctionDef` protocol buffer is also added to the
		default graph library.  After it has been added you can add calls to
		the function by passing it to `tf.call_function()`, together with a
		list of tensors to use as inputs for the function.
		
		Notes:
		
		*  `func` is called once, with `placeholder` tensors of the types specified in
		   `input_types` as arguments.
		*  Values returned by `func` must be tensors and they are recorded as being
		   the output of the function def.
		*  While `func` is a called, an empty graph is temporarily pushed as the
		   default graph.  All ops added by `func` to that graph are part of the body
		   of the returned function def.
		
		Example, but also see the [How To on functions](link_needed).
		
		```python
		# A function that receives two tensors x, y and returns their
		# sum and difference.
		def my_func(x, y):
		  return x + y, x - y
		
		# Create a FunctionDef for 'my_func'. (This does not change the default
		graph.)
		my_func_def = tf.define_function(my_func, {'x': tf.float32, 'y': tf.float32})
		# Alternatively:
		# my_func_def = tf.define_function(my_func, [tf.float32, tf.float32])
		
		# Build the graph, calling the function.
		a = tf.constant([1.0])
		b = tf.constant([2.0])
		c, d = tf.call_function(my_func_def, a, b, name='mycall')
		```
		
		Args:
		  func: a Python function.
		  input_types: if a dict, keys are the names of the arguments of
		    `func`, values are their expected `tf.DType`. Otherwise,
		    a list of `tf.DType`s.
		  func_name: Pyton string.  If not None, specifies the name to use when
		    creating the Function.  By default, introspection on `func` is used to
		    generate a name.
		  grad_func: If not None, specifies the gradient function. The
		             gradient function must satisify the criterion defined in
		             function.proto:GradientDef.
		  python_grad_func: If not None, specifies the gradient function with the same
		             interface as that expected by `tf.RegisterGradient`. This
		             will be called by tf.gradients to add the gradient ops to the
		             graph. No more than one of {grad_func, python_grad_func} may be
		             specified.
		
		Returns:
		  A FunctionDef protocol buffer.
		
		Raises:
		  ValueError: if the arguments are invalid.
	**/
	static public function define_function(func:Dynamic, input_types:Dynamic, ?func_name:Dynamic, ?grad_func:Dynamic, ?python_grad_func:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns `graph` as a `FunctionDef` protocol buffer.
		
		This method creates a [`FunctionDef`](
		https://www.tensorflow.org/code/tensorflow/core/framework/function.proto)
		protocol buffer that contains all the ops present in the graph.  The
		graph effectively becomes the body of the function.
		
		The arguments `inputs` and `outputs` will be listed as the inputs
		and outputs tensors of the function.  They must be lists of
		tensors present in the graph.  The lists can optionally be empty.
		
		The returned protocol buffer can be passed to the
		[`Graph.add_function()`](#Graph.add_function) method of a
		different graph to make it available there.
		
		Args:
		  graph: GraphDef proto.
		  name: string. The name to use for the function.
		  inputs: List of tensors. Inputs to the function.
		  outputs: List of tensors. Outputs of the function.
		
		Returns:
		  A FunctionDef protocol buffer.
	**/
	static public function graph_to_function_def(graph:Dynamic, name:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}
/* This file is generated, do not edit! */
package tensorflow.python.framework.sparse_tensor;
@:pythonImport("tensorflow.python.framework.sparse_tensor") extern class Sparse_tensor_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Uses the default session to evaluate one or more tensors.
		
		Args:
		  tensors: A single Tensor, or a list of Tensor objects.
		  feed_dict: A dictionary that maps Tensor objects (or tensor names) to lists,
		    numpy ndarrays, TensorProtos, or strings.
		  graph: The graph in which the tensors are defined.
		  session: (Optional) A different session to use to evaluate "tensors".
		
		Returns:
		  Either a single numpy ndarray if "tensors" is a single tensor; or a list
		  of numpy ndarrays that each correspond to the respective element in
		  "tensors".
		
		Raises:
		  ValueError: If no default session is available; the default session
		    does not have "graph" as its graph; or if "session" is specified,
		    and it does not have "graph" as its graph.
	**/
	static public function _eval_using_default_session(tensors:Dynamic, feed_dict:Dynamic, graph:Dynamic, ?session:Dynamic):Dynamic;
	/**
		Overrides (string) operator on Tensors to call func.
		
		Args:
		  clazz_object: the class to override for; either Tensor or SparseTensor.
		  operator: the string name of the operator to override.
		  func: the function that replaces the overridden operator.
		
		Raises:
		  ValueError: If operator has already been overwritten,
		    or if operator is not allowed to be overwritten.
	**/
	static public function _override_helper(clazz_object:Dynamic, _operator:Dynamic, func:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts value to a `SparseTensor` or `Tensor`.
		
		Args:
		  value: A `SparseTensor`, `SparseTensorValue`, or an object whose type has a
		    registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the
		    type is inferred from the type of `value`.
		  name: Optional name to use if a new `Tensor` is created.
		
		Returns:
		  A `SparseTensor` or `Tensor` based on `value`.
		
		Raises:
		  RuntimeError: If result type is incompatible with `dtype`.
	**/
	static public function convert_to_tensor_or_sparse_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Check whether `x` is sparse.
		
		Check whether an object is a `tf.SparseTensor` or `tf.SparseTensorValue`.
		
		Args:
		  x: A python object to check.
		
		Returns:
		  `True` iff `x` is a `tf.SparseTensor` or `tf.SparseTensorValue`.
	**/
	static public function is_sparse(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
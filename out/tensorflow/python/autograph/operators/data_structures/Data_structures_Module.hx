/* This file is generated, do not edit! */
package tensorflow.python.autograph.operators.data_structures;
@:pythonImport("tensorflow.python.autograph.operators.data_structures") extern class Data_structures_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Overload of list_append that executes a Python list append.
	**/
	static public function _py_list_append(list_:Dynamic, x:Dynamic):Dynamic;
	/**
		Overload of new_list that creates a Python list.
	**/
	static public function _py_list_new(elements:Dynamic):Dynamic;
	/**
		Overload of list_pop that executes a Python list append.
	**/
	static public function _py_list_pop(list_:Dynamic, i:Dynamic):Dynamic;
	/**
		Overload of list_stack that executes a Python list append.
	**/
	static public function _py_list_stack(list_:Dynamic, opts:Dynamic):Dynamic;
	/**
		Overload of list_append that stages a Tensor list write.
	**/
	static public function _tf_tensor_list_append(list_:Dynamic, x:Dynamic):Dynamic;
	/**
		Overload of list_pop that stages a Tensor list pop.
	**/
	static public function _tf_tensor_list_pop(list_:Dynamic, i:Dynamic, opts:Dynamic):Dynamic;
	/**
		Overload of list_stack that stages a Tensor list write.
	**/
	static public function _tf_tensor_list_stack(list_:Dynamic, opts:Dynamic):Dynamic;
	/**
		Overload of list_append that stages a TensorArray write.
	**/
	static public function _tf_tensorarray_append(list_:Dynamic, x:Dynamic):Dynamic;
	/**
		Overload of list_stack that stages a TensorArray stack.
	**/
	static public function _tf_tensorarray_stack(list_:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		The list append function.
		
		Note: it is unspecified where list_ will be mutated or not. If list_ is
		a TensorFlow entity, it will not be typically mutated. If list_ is a plain
		list, it will be. In general, if the list is mutated then the return value
		should point to the original entity.
		
		Args:
		  list_: An entity that supports append semantics.
		  x: The element to append.
		
		Returns:
		  Same as list_, after the append was performed.
		
		Raises:
		  ValueError: if list_ is not of a known list-like type.
	**/
	static public function list_append(list_:Dynamic, x:Dynamic):Dynamic;
	/**
		The list pop function.
		
		Note: it is unspecified where list_ will be mutated or not. If list_ is
		a TensorFlow entity, it will not be typically mutated. If list_ is a plain
		list, it will be. In general, if the list is mutated then the return value
		should point to the original entity.
		
		Args:
		  list_: An entity that supports pop semantics.
		  i: Optional index to pop from. May be None.
		  opts: A ListPopOpts.
		
		Returns:
		  Tuple (x, out_list_):
		    out_list_: same as list_, after the removal was performed.
		    x: the removed element value.
		
		Raises:
		  ValueError: if list_ is not of a known list-like type or the operation is
		  not supported for that type.
	**/
	static public function list_pop(list_:Dynamic, i:Dynamic, opts:Dynamic):Dynamic;
	/**
		The list stack function.
		
		This does not have a direct correspondent in Python. The closest idiom to
		this is tf.append or np.stack. It's different from those in the sense that it
		accepts a Tensor list, rather than a list of tensors. It can also accept
		TensorArray. When the target is anything else, the dispatcher will rely on
		ctx.original_call for fallback.
		
		Args:
		  list_: An entity that supports append semantics.
		  opts: A ListStackOpts object.
		
		Returns:
		  The output of the stack operation, typically a Tensor.
	**/
	static public function list_stack(list_:Dynamic, opts:Dynamic):Dynamic;
	/**
		The list constructor.
		
		Args:
		  iterable: Optional elements to fill the list with.
		
		Returns:
		  A list-like object. The exact return value depends on the initial elements.
	**/
	static public function new_list(?iterable:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Overload of new_list that stages a Tensor list creation.
	**/
	static public function tf_tensor_array_new(elements:Dynamic, ?element_dtype:Dynamic, ?element_shape:Dynamic):Dynamic;
	/**
		Overload of new_list that stages a Tensor list creation.
	**/
	static public function tf_tensor_list_new(elements:Dynamic, ?element_dtype:Dynamic, ?element_shape:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package tensorflow.python.autograph.operators.py_builtins;
@:pythonImport("tensorflow.python.autograph.operators.py_builtins") extern class Py_builtins_Module {
	static public var BUILTIN_FUNCTIONS_MAP : Dynamic;
	static public var SUPPORTED_BUILTINS : Dynamic;
	static public var UNSPECIFIED : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Locates the frame in which `caller_fn_scope` was defined.
	**/
	static public function _find_originating_frame(caller_fn_scope:Dynamic, ?innermost:Dynamic):Dynamic;
	static public function _py_abs(x:Dynamic):Dynamic;
	static public function _py_all(iterable:Dynamic):Dynamic;
	static public function _py_any(iterable:Dynamic):Dynamic;
	static public function _py_enumerate(s:Dynamic, ?start:Dynamic):Dynamic;
	static public function _py_filter(_function:Dynamic, iterable:Dynamic):Dynamic;
	static public function _py_float(x:Dynamic):Dynamic;
	static public function _py_int(x:Dynamic, base:Dynamic):Dynamic;
	static public function _py_len(s:Dynamic):Dynamic;
	static public function _py_map(fn:Dynamic, ?iterables:python.VarArgs<Dynamic>):Dynamic;
	static public function _py_print(?objects:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _py_range(start_or_stop:Dynamic, stop:Dynamic, step:Dynamic):Dynamic;
	static public function _py_sorted(iterable:Dynamic, key:Dynamic, reverse:Dynamic):Dynamic;
	static public function _py_zip(?iterables:python.VarArgs<Dynamic>):Dynamic;
	static public function _tf_abs(x:Dynamic):Dynamic;
	static public function _tf_dataset_abs(x:Dynamic):Dynamic;
	static public function _tf_dataset_all(iterable:Dynamic):Dynamic;
	static public function _tf_dataset_any(iterable:Dynamic):Dynamic;
	static public function _tf_dataset_enumerate(s:Dynamic, ?start:Dynamic):Dynamic;
	static public function _tf_dataset_filter(_function:Dynamic, iterable:Dynamic):Dynamic;
	static public function _tf_dataset_len(s:Dynamic):Dynamic;
	static public function _tf_dataset_map(fn:Dynamic, ?iterables:python.VarArgs<Dynamic>):Dynamic;
	static public function _tf_dataset_zip(?iterables:python.VarArgs<Dynamic>):Dynamic;
	static public function _tf_float(x:Dynamic):Dynamic;
	static public function _tf_int(x:Dynamic, base:Dynamic):Dynamic;
	/**
		Overload of print_ as a py_func implementation.
	**/
	static public function _tf_py_func_print(objects:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Overload of range_ that generates a TF range tensor.
	**/
	static public function _tf_range(start_or_stop:Dynamic, stop:Dynamic, step:Dynamic):Dynamic;
	/**
		Overload of sorted_ for Tensor iterable.
	**/
	static public function _tf_sorted(iterable:Dynamic, key:Dynamic, reverse:Dynamic):Dynamic;
	static public function _tf_tensor_array_len(s:Dynamic):Dynamic;
	/**
		Overload of len_ for Tensor arguments.
	**/
	static public function _tf_tensor_len(s:Dynamic):Dynamic;
	static public function _tf_tensor_list_len(s:Dynamic):Dynamic;
	/**
		Verifies that a symbol has a type compatible vith a given spec.
		
		Here, compatibility is viewed in the general TensorFlow sense: that the dtypes
		are the same after implicit conversion, if both are tensors.
		
		This verifier ensures consistent treatment of types across AutoGraph.
		
		Args:
		  input_name: A name to use for `input_` in error messages.
		  spec_name: A name to use for `spec` in error messages.
		  input_: Any, value to verify.
		  spec: TypeSpec that `input_` must be compatible with.
		
		Raises:
		  ValueError if the two types have been determined not to be compatible.
	**/
	static public function _verify_spec_compatible(input_name:Dynamic, spec_name:Dynamic, input_:Dynamic, spec:Dynamic):Dynamic;
	/**
		Verifies that possibly-structured symbol has types compatible vith another.
		
		See _verify_spec_compatible for a more concrete meaning of "compatible".
		Unspec _verify_spec_compatible, which handles singular Tensor-spec objects,
		verify_structures_compatible can process structures recognized by tf.nest.
		
		Args:
		  input_name: A name to use for `input_` in error messages.
		  spec_name: A name to use for `spec` in error messages.
		  input_: Any, value to verify. May, but doesn't need to, be a structure.
		  spec: Any, value that `input_` must be compatible with. May, but doesn't
		      need to, be a structure.
		
		Raises:
		  ValueError if the two types have been determined not to be compatible.
	**/
	static public function _verify_structure_compatible(input_name:Dynamic, spec_name:Dynamic, input_:Dynamic, spec:Dynamic):Dynamic;
	static public function abs_(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function all_(iterable:Dynamic):Dynamic;
	static public function any_(iterable:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function enumerate_(s:Dynamic, ?start:Dynamic):Dynamic;
	/**
		Executes the eval function in the context of a specified function.
	**/
	static public function eval_in_original_context(f:Dynamic, args:Dynamic, caller_fn_scope:Dynamic):Dynamic;
	static public function filter_(_function:Dynamic, iterable:Dynamic):Dynamic;
	static public function float_(?x:Dynamic):Dynamic;
	/**
		Executes the locals function in the context of a specified function.
	**/
	static public function globals_in_original_context(caller_fn_scope:Dynamic):Dynamic;
	static public function int_(?x:Dynamic, ?base:Dynamic):Dynamic;
	static public function len_(s:Dynamic):Dynamic;
	/**
		Executes the locals function in the context of a specified function.
	**/
	static public function locals_in_original_context(caller_fn_scope:Dynamic):Dynamic;
	static public function map_(fn:Dynamic, ?iterables:python.VarArgs<Dynamic>):Dynamic;
	static public function next_(iterator:Dynamic, ?_default:Dynamic):Dynamic;
	static public function next_py(iterator:Dynamic, ?_default:Dynamic):Dynamic;
	static public function next_tf_iterator(iterator:Dynamic, ?_default:Dynamic):Dynamic;
	static public function overload_of(f:Dynamic):Dynamic;
	/**
		Overload of the print builtin.
	**/
	static public function print_(?objects:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function range_(start_or_stop:Dynamic, ?stop:Dynamic, ?step:Dynamic):Dynamic;
	static public function sorted_(iterable:Dynamic, ?key:Dynamic, ?reverse:Dynamic):Dynamic;
	/**
		Executes the super function in the context of a specified function.
		
		See https://docs.python.org/3/library/functions.html#super for the exact
		details
		
		Args:
		  f: Callable, typically the super builtin
		  args: List[Any], the original call arguments
		  caller_fn_scope: Optional[function_wrappers.FunctionScope], the function
		    scope of the converted function in which this call was originally made
		
		Returns:
		  The result of calling `f` as if it was called in the frame indicated by
		    `caller_fn_scope`.
	**/
	static public function super_in_original_context(f:Dynamic, args:Dynamic, caller_fn_scope:Dynamic):Dynamic;
	static public function zip_(?iterables:python.VarArgs<Dynamic>):Dynamic;
}
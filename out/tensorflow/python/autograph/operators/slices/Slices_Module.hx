/* This file is generated, do not edit! */
package tensorflow.python.autograph.operators.slices;
@:pythonImport("tensorflow.python.autograph.operators.slices") extern class Slices_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Overload of get_item that executes a Python list modification.
	**/
	static public function _py_get_item(target:Dynamic, i:Dynamic):Dynamic;
	/**
		Overload of set_item that executes a Python list modification.
	**/
	static public function _py_set_item(target:Dynamic, i:Dynamic, x:Dynamic):Dynamic;
	/**
		Overload of get_item that stages a Tensor (not Tensor list) read.
	**/
	static public function _tf_tensor_get_item(target:Dynamic, i:Dynamic):Dynamic;
	/**
		Overload of get_item that stages a Tensor list read.
	**/
	static public function _tf_tensor_list_get_item(target:Dynamic, i:Dynamic, opts:Dynamic):Dynamic;
	/**
		Overload of set_item that stages a Tensor list update.
	**/
	static public function _tf_tensor_list_set_item(target:Dynamic, i:Dynamic, x:Dynamic):Dynamic;
	/**
		Overload of get_item that stages a Tensor string read.
	**/
	static public function _tf_tensor_string_get_item(target:Dynamic, i:Dynamic):Dynamic;
	/**
		Overload of get_item that stages a TensorArray read.
	**/
	static public function _tf_tensorarray_get_item(target:Dynamic, i:Dynamic):Dynamic;
	/**
		Overload of set_item that stages a TensorArray write.
	**/
	static public function _tf_tensorarray_set_item(target:Dynamic, i:Dynamic, x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		The slice read operator (i.e. __getitem__).
		
		Note: it is unspecified whether target will be mutated or not. In general,
		if target is mutable (like Python lists), it will be mutated.
		
		Args:
		  target: An entity that supports getitem semantics.
		  i: Index to read from.
		  opts: A GetItemOpts object.
		
		Returns:
		  The read element.
		
		Raises:
		  ValueError: if target is not of a supported type.
	**/
	static public function get_item(target:Dynamic, i:Dynamic, opts:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		The slice write operator (i.e. __setitem__).
		
		Note: it is unspecified whether target will be mutated or not. In general,
		if target is mutable (like Python lists), it will be mutated.
		
		Args:
		  target: An entity that supports setitem semantics.
		  i: Index to modify.
		  x: The new element value.
		
		Returns:
		  Same as target, after the update was performed.
		
		Raises:
		  ValueError: if target is not of a supported type.
	**/
	static public function set_item(target:Dynamic, i:Dynamic, x:Dynamic):Dynamic;
}
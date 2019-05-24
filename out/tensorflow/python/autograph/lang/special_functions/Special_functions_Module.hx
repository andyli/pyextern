/* This file is generated, do not edit! */
package tensorflow.python.autograph.lang.special_functions;
@:pythonImport("tensorflow.python.autograph.lang.special_functions") extern class Special_functions_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Validates the inputs of tensor_list.
	**/
	static public function _validate_list_constructor(elements:Dynamic, element_dtype:Dynamic, element_shape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Casts a value to be staged at the same level as another.
	**/
	static public function match_staging_level(value:Dynamic, like_value:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Stacks the input, if it admits the notion of stacking.
		
		For example, a list of tensors can be stacked into a larger tensor. This
		function is similar to tf.stack, but it accepts non-lists and lists of
		non-tensors as arguments. In the latter case, the function does nothing.
		
		Args:
		  list_or_tensor: Any
		  element_dtype: tf.DType, optional dtypedtype for the elements in the list.
		      Required if the input is stackable, and the list is untyped.
		  strict: bool, if True an error is raised if the input is not stackable.
		      Otherwise the function is a no-op.
		
		Returns:
		  Any, if the input is stackable, the result will be a tf.Tensor. Otherwise,
		  if strict=False, the result will be list_or_tensor.
		
		Raises:
		  ValueError: if strict=True and the input is not stackable.
	**/
	static public function stack(list_or_tensor:Dynamic, ?element_dtype:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Creates an tensor list and populates it with the given elements.
		
		This function provides a more uniform access to tensor lists and tensor
		arrays, and allows optional initialization.
		
		Note: this function is a simplified wrapper. If you need greater control,
		it is recommended to use the underlying implementation directly.
		
		Args:
		  elements: Iterable[tf.Tensor, ...], the elements to initially fill the list
		      with
		  element_dtype: Optional[tf.DType], data type for the elements in the list;
		      required if the list is empty
		  element_shape: Optional[tf.TensorShape], shape for the elements in the list;
		      required if the list is empty
		  use_tensor_array: bool, whether to use the more compatible but restrictive
		      tf.TensorArray implementation
		Returns:
		  Union[tf.Tensor, tf.TensorArray], the new list.
		Raises:
		  ValueError: for invalid arguments
	**/
	static public function tensor_list(elements:Dynamic, ?element_dtype:Dynamic, ?element_shape:Dynamic, ?use_tensor_array:Dynamic):Dynamic;
}
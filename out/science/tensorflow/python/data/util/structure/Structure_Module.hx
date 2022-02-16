/* This file is generated, do not edit! */
package tensorflow.python.data.util.structure;
@:pythonImport("tensorflow.python.data.util.structure") extern class Structure_Module {
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.RaggedTensorSpec` instead.
	**/
	static public function _RaggedTensorStructure(dtype:Dynamic, shape:Dynamic, ragged_rank:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.SparseTensorSpec` instead.
	**/
	static public function _SparseTensorStructure(dtype:Dynamic, shape:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.TensorArraySpec` instead.
	**/
	static public function _TensorArrayStructure(dtype:Dynamic, element_shape:Dynamic, dynamic_size:Dynamic, infer_shape:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.TensorSpec` instead.
	**/
	static public function _TensorStructure(dtype:Dynamic, shape:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns an element constructed from the given spec and tensor list.
		
		Args:
		  decode_fn: Method that constructs an element component from the element spec
		    component and a tensor list.
		  element_spec: A nested structure of `tf.TypeSpec` objects representing to
		    element type specification.
		  tensor_list: A list of tensors to use for constructing the value.
		
		Returns:
		  An element constructed from the given spec and tensor list.
		
		Raises:
		  ValueError: If the number of tensors needed to construct an element for
		    the given spec does not match the given number of tensors.
	**/
	static public function _from_tensor_list_helper(decode_fn:Dynamic, element_spec:Dynamic, tensor_list:Dynamic):Dynamic;
	/**
		Returns a tensor list representation of the element.
		
		Args:
		  encode_fn: Method that constructs a tensor list representation from the
		    given element spec and element.
		  element_spec: A nested structure of `tf.TypeSpec` objects representing to
		    element type specification.
		  element: The element to convert to tensor list representation.
		
		Returns:
		  A tensor list representation of `element`.
		
		Raises:
		  ValueError: If `element_spec` and `element` do not have the same number of
		    elements or if the two structures are not nested in the same way.
		  TypeError: If `element_spec` and `element` differ in the type of sequence
		    in any of their substructures.
	**/
	static public function _to_tensor_list_helper(encode_fn:Dynamic, element_spec:Dynamic, element:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Indicates whether two type specifications are compatible.
		
		Two type specifications are compatible if they have the same nested structure
		and the their individual components are pair-wise compatible.
		
		Args:
		  spec1: A `tf.TypeSpec` object to compare.
		  spec2: A `tf.TypeSpec` object to compare.
		
		Returns:
		  `True` if the two type specifications are compatible and `False` otherwise.
	**/
	static public function are_compatible(spec1:Dynamic, spec2:Dynamic):Dynamic;
	/**
		Returns a `Structure` that represents the given legacy structure.
		
		This method provides a way to convert from the existing `Dataset` and
		`Iterator` structure-related properties to a `Structure` object. A "legacy"
		structure is represented by the `tf.data.Dataset.output_types`,
		`tf.data.Dataset.output_shapes`, and `tf.data.Dataset.output_classes`
		properties.
		
		TODO(b/110122868): Remove this function once `Structure` is used throughout
		`tf.data`.
		
		Args:
		  output_types: A nested structure of `tf.DType` objects corresponding to
		    each component of a structured value.
		  output_shapes: A nested structure of `tf.TensorShape` objects
		    corresponding to each component a structured value.
		  output_classes: A nested structure of Python `type` objects corresponding
		    to each component of a structured value.
		
		Returns:
		  A `Structure`.
		
		Raises:
		  TypeError: If a structure cannot be built from the arguments, because one of
		    the component classes in `output_classes` is not supported.
	**/
	static public function convert_legacy_structure(output_types:Dynamic, output_shapes:Dynamic, output_classes:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns an element constructed from the given spec and tensor list.
		
		Args:
		  element_spec: A nested structure of `tf.TypeSpec` objects representing to
		    element type specification.
		  tensor_list: A list of tensors to use for constructing the value.
		
		Returns:
		  An element constructed from the given spec and tensor list.
		
		Raises:
		  ValueError: If the number of tensors needed to construct an element for
		    the given spec does not match the given number of tensors.
	**/
	static public function from_compatible_tensor_list(element_spec:Dynamic, tensor_list:Dynamic):Dynamic;
	/**
		Returns an element constructed from the given spec and tensor list.
		
		Args:
		  element_spec: A nested structure of `tf.TypeSpec` objects representing to
		    element type specification.
		  tensor_list: A list of tensors to use for constructing the value.
		
		Returns:
		  An element constructed from the given spec and tensor list.
		
		Raises:
		  ValueError: If the number of tensors needed to construct an element for
		    the given spec does not match the given number of tensors or the given
		    spec is not compatible with the tensor list.
	**/
	static public function from_tensor_list(element_spec:Dynamic, tensor_list:Dynamic):Dynamic;
	/**
		Returns a list `tf.TensorShapes`s for the element tensor representation.
		
		Args:
		  element_spec: A nested structure of `tf.TypeSpec` objects representing to
		    element type specification.
		
		Returns:
		  A list `tf.TensorShapes`s for the element tensor representation.
	**/
	static public function get_flat_tensor_shapes(element_spec:Dynamic):Dynamic;
	/**
		Returns a list `tf.TypeSpec`s for the element tensor representation.
		
		Args:
		  element_spec: A nested structure of `tf.TypeSpec` objects representing to
		    element type specification.
		
		Returns:
		  A list `tf.TypeSpec`s for the element tensor representation.
	**/
	static public function get_flat_tensor_specs(element_spec:Dynamic):Dynamic;
	/**
		Returns a list `tf.DType`s for the element tensor representation.
		
		Args:
		  element_spec: A nested structure of `tf.TypeSpec` objects representing to
		    element type specification.
		
		Returns:
		  A list `tf.DType`s for the element tensor representation.
	**/
	static public function get_flat_tensor_types(element_spec:Dynamic):Dynamic;
	/**
		Normalizes a nested structure of element components.
		
		* Components matching `SparseTensorSpec` are converted to `SparseTensor`.
		* Components matching `RaggedTensorSpec` are converted to `RaggedTensor`.
		* Components matching `DatasetSpec` or `TensorArraySpec` are passed through.
		* `CompositeTensor` components are passed through.
		* All other components are converted to `Tensor`.
		
		Args:
		  element: A nested structure of individual components.
		  element_signature: (Optional.) A nested structure of `tf.DType` objects
		    corresponding to each component of `element`. If specified, it will be
		    used to set the exact type of output tensor when converting input
		    components which are not tensors themselves (e.g. numpy arrays, native
		    python types, etc.)
		
		Returns:
		  A nested structure of `Tensor`, `Dataset`, `SparseTensor`, `RaggedTensor`,
		  or `TensorArray` objects.
	**/
	static public function normalize_element(element:Dynamic, ?element_signature:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a tensor list representation of the element.
		
		Args:
		  element_spec: A nested structure of `tf.TypeSpec` objects representing to
		    element type specification.
		  element: The element to convert to tensor list representation.
		
		Returns:
		  A tensor list representation of `element`.
		
		Raises:
		  ValueError: If `element_spec` and `element` do not have the same number of
		    elements or if the two structures are not nested in the same way or the
		    rank of any of the tensors in the tensor list representation is 0.
		  TypeError: If `element_spec` and `element` differ in the type of sequence
		    in any of their substructures.
	**/
	static public function to_batched_tensor_list(element_spec:Dynamic, element:Dynamic):Dynamic;
	/**
		Returns a tensor list representation of the element.
		
		Args:
		  element_spec: A nested structure of `tf.TypeSpec` objects representing to
		    element type specification.
		  element: The element to convert to tensor list representation.
		
		Returns:
		  A tensor list representation of `element`.
		
		Raises:
		  ValueError: If `element_spec` and `element` do not have the same number of
		    elements or if the two structures are not nested in the same way.
		  TypeError: If `element_spec` and `element` differ in the type of sequence
		    in any of their substructures.
	**/
	static public function to_tensor_list(element_spec:Dynamic, element:Dynamic):Dynamic;
	/**
		Creates a type specification for the given value.
		
		Args:
		  element: The element to create the type specification for.
		  use_fallback: Whether to fall back to converting the element to a tensor
		    in order to compute its `TypeSpec`.
		
		Returns:
		  A nested structure of `TypeSpec`s that represents the type specification
		  of `element`.
		
		Raises:
		  TypeError: If a `TypeSpec` cannot be built for `element`, because its type
		    is not supported.
	**/
	static public function type_spec_from_value(element:Dynamic, ?use_fallback:Dynamic):Dynamic;
}
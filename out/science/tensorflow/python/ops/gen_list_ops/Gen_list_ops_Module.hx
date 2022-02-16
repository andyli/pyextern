/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_list_ops;
@:pythonImport("tensorflow.python.ops.gen_list_ops") extern class Gen_list_ops_Module {
	/**
		Creates and returns an empty tensor list.
		
		All list elements must be tensors of dtype element_dtype and shape compatible
		with element_shape.
		
		handle: an empty tensor list.
		element_dtype: the type of elements in the list.
		element_shape: a shape compatible with that of elements in the list.
		
		Args:
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  max_num_elements: A `Tensor` of type `int32`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function EmptyTensorList(element_shape:Dynamic, max_num_elements:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concats all tensors in the list along the 0th dimension.
		
		Requires that all tensors have the same shape except the first dimension.
		
		input_handle: The input list.
		tensor: The concated result.
		lengths: Output tensor containing sizes of the 0th dimension of tensors in the list, used for computing the gradient.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  element_dtype: A `tf.DType`.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `None`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (tensor, lengths).
		
		  tensor: A `Tensor` of type `element_dtype`.
		  lengths: A `Tensor` of type `int64`.
	**/
	static public function TensorListConcat(input_handle:Dynamic, element_dtype:Dynamic, ?element_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_a: A `Tensor` of type `variant`.
		  input_b: A `Tensor` of type `variant`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TensorListConcatLists(input_a:Dynamic, input_b:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Concats all tensors in the list along the 0th dimension.
		
		Requires that all tensors have the same shape except the first dimension.
		
		input_handle: The input list.
		element_shape: The shape of the uninitialized elements in the list. If the first
		  dimension is not -1, it is assumed that all list elements have the same
		  leading dim.
		leading_dims: The list of leading dims of uninitialized list elements. Used if
		  the leading dim of input_handle.element_shape or the element_shape input arg
		  is not already set.
		tensor: The concated result.
		lengths: Output tensor containing sizes of the 0th dimension of tensors in the list, used for computing the gradient.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  leading_dims: A `Tensor` of type `int64`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (tensor, lengths).
		
		  tensor: A `Tensor` of type `element_dtype`.
		  lengths: A `Tensor` of type `int64`.
	**/
	static public function TensorListConcatV2(input_handle:Dynamic, element_shape:Dynamic, leading_dims:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The shape of the elements of the given list, as a tensor.
		
		  input_handle: the list
		  element_shape: the shape of elements of the list
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  shape_type: A `tf.DType` from: `tf.int32, tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `shape_type`.
	**/
	static public function TensorListElementShape(input_handle:Dynamic, shape_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a TensorList which, when stacked, has the value of `tensor`.
		
		Each tensor in the result list corresponds to one row of the input tensor.
		
		tensor: The input tensor.
		output_handle: The list.
		
		Args:
		  tensor: A `Tensor`.
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TensorListFromTensor(tensor:Dynamic, element_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a Tensor by indexing into the TensorList.
		
		Each row in the produced Tensor corresponds to the element in the TensorList
		specified by the given index (see `tf.gather`).
		
		input_handle: The input tensor list.
		indices: The indices used to index into the list.
		values: The tensor.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  indices: A `Tensor` of type `int32`.
		  element_shape: A `Tensor` of type `int32`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `element_dtype`.
	**/
	static public function TensorListGather(input_handle:Dynamic, indices:Dynamic, element_shape:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the item in the list with the given index.
		
		input_handle: the list
		index: the position in the list from which an element will be retrieved
		item: the element at that position
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  index: A `Tensor` of type `int32`.
		  element_shape: A `Tensor` of type `int32`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `element_dtype`.
	**/
	static public function TensorListGetItem(input_handle:Dynamic, index:Dynamic, element_shape:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the number of tensors in the input tensor list.
		
		input_handle: the input list
		length: the number of tensors in the list
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function TensorListLength(input_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the last element of the input list as well as a list with all but that element.
		
		Fails if the list is empty.
		
		input_handle: the input list
		tensor: the withdrawn last element of the list
		element_dtype: the type of elements in the list
		element_shape: the shape of the output tensor
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  element_shape: A `Tensor` of type `int32`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_handle, tensor).
		
		  output_handle: A `Tensor` of type `variant`.
		  tensor: A `Tensor` of type `element_dtype`.
	**/
	static public function TensorListPopBack(input_handle:Dynamic, element_shape:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a list which has the passed-in `Tensor` as last element and the other elements of the given list in `input_handle`.
		
		tensor: The tensor to put on the list.
		input_handle: The old list.
		output_handle: A list with the elements of the old list followed by tensor.
		element_dtype: the type of elements in the list.
		element_shape: a shape compatible with that of elements in the list.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  tensor: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TensorListPushBack(input_handle:Dynamic, tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_handles: A `Tensor` of type `variant`.
		  tensor: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TensorListPushBackBatch(input_handles:Dynamic, tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		List of the given size with empty elements.
		
		element_shape: the shape of the future elements of the list
		num_elements: the number of elements to reserve
		handle: the output list
		element_dtype: the desired type of elements in the list.
		
		Args:
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  num_elements: A `Tensor` of type `int32`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TensorListReserve(element_shape:Dynamic, num_elements:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Resizes the list.
		
		
		input_handle: the input list
		size: size of the output list
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  size: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TensorListResize(input_handle:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a TensorList by indexing into a Tensor.
		
		Each member of the TensorList corresponds to one row of the input tensor,
		specified by the given index (see `tf.gather`).
		
		tensor: The input tensor.
		indices: The indices used to index into the list.
		element_shape: The shape of the elements in the list (can be less specified than
		  the shape of the tensor).
		output_handle: The TensorList.
		
		Args:
		  tensor: A `Tensor`.
		  indices: A `Tensor` of type `int32`.
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TensorListScatter(tensor:Dynamic, indices:Dynamic, element_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scatters tensor at indices in an input list.
		
		Each member of the TensorList corresponds to one row of the input tensor,
		specified by the given index (see `tf.gather`).
		
		input_handle: The list to scatter into.
		tensor: The input tensor.
		indices: The indices used to index into the list.
		output_handle: The TensorList.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  tensor: A `Tensor`.
		  indices: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TensorListScatterIntoExistingList(input_handle:Dynamic, tensor:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a TensorList by indexing into a Tensor.
		
		Each member of the TensorList corresponds to one row of the input tensor,
		specified by the given index (see `tf.gather`).
		
		tensor: The input tensor.
		indices: The indices used to index into the list.
		element_shape: The shape of the elements in the list (can be less specified than
		  the shape of the tensor).
		num_elements: The size of the output list. Must be large enough to accommodate
		  the largest index in indices. If -1, the list is just large enough to include
		  the largest index in indices.
		output_handle: The TensorList.
		
		Args:
		  tensor: A `Tensor`.
		  indices: A `Tensor` of type `int32`.
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  num_elements: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TensorListScatterV2(tensor:Dynamic, indices:Dynamic, element_shape:Dynamic, num_elements:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sets the index-th position of the list to contain the given tensor.
		
		input_handle: the list
		index: the position in the list to which the tensor will be assigned
		item: the element to be assigned to that position
		output_handle: the new list, with the element in the proper position
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  index: A `Tensor` of type `int32`.
		  item: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TensorListSetItem(input_handle:Dynamic, index:Dynamic, item:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Splits a tensor into a list.
		
		list[i] corresponds to lengths[i] tensors from the input tensor.
		The tensor must have rank at least 1 and contain exactly sum(lengths) elements.
		
		tensor: The input tensor.
		element_shape: A shape compatible with that of elements in the tensor.
		lengths: Vector of sizes of the 0th dimension of tensors in the list.
		output_handle: The list.
		
		Args:
		  tensor: A `Tensor`.
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  lengths: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TensorListSplit(tensor:Dynamic, element_shape:Dynamic, lengths:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Stacks all tensors in the list.
		
		Requires that all tensors have the same shape.
		
		input_handle: the input list
		tensor: the gathered result
		num_elements: optional. If not -1, the number of elements in the list.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  element_shape: A `Tensor` of type `int32`.
		  element_dtype: A `tf.DType`.
		  num_elements: An optional `int`. Defaults to `-1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `element_dtype`.
	**/
	static public function TensorListStack(input_handle:Dynamic, element_shape:Dynamic, element_dtype:Dynamic, ?num_elements:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Creates and returns an empty tensor list.
		
		All list elements must be tensors of dtype element_dtype and shape compatible
		with element_shape.
		
		handle: an empty tensor list.
		element_dtype: the type of elements in the list.
		element_shape: a shape compatible with that of elements in the list.
		
		Args:
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  max_num_elements: A `Tensor` of type `int32`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function empty_tensor_list(element_shape:Dynamic, max_num_elements:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function empty_tensor_list_eager_fallback(element_shape:Dynamic, max_num_elements:Dynamic, element_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Concats all tensors in the list along the 0th dimension.
		
		Requires that all tensors have the same shape except the first dimension.
		
		input_handle: The input list.
		tensor: The concated result.
		lengths: Output tensor containing sizes of the 0th dimension of tensors in the list, used for computing the gradient.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  element_dtype: A `tf.DType`.
		  element_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `None`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (tensor, lengths).
		
		  tensor: A `Tensor` of type `element_dtype`.
		  lengths: A `Tensor` of type `int64`.
	**/
	static public function tensor_list_concat(input_handle:Dynamic, element_dtype:Dynamic, ?element_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_concat_eager_fallback(input_handle:Dynamic, element_dtype:Dynamic, element_shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_a: A `Tensor` of type `variant`.
		  input_b: A `Tensor` of type `variant`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tensor_list_concat_lists(input_a:Dynamic, input_b:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_concat_lists_eager_fallback(input_a:Dynamic, input_b:Dynamic, element_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Concats all tensors in the list along the 0th dimension.
		
		Requires that all tensors have the same shape except the first dimension.
		
		input_handle: The input list.
		element_shape: The shape of the uninitialized elements in the list. If the first
		  dimension is not -1, it is assumed that all list elements have the same
		  leading dim.
		leading_dims: The list of leading dims of uninitialized list elements. Used if
		  the leading dim of input_handle.element_shape or the element_shape input arg
		  is not already set.
		tensor: The concated result.
		lengths: Output tensor containing sizes of the 0th dimension of tensors in the list, used for computing the gradient.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  leading_dims: A `Tensor` of type `int64`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (tensor, lengths).
		
		  tensor: A `Tensor` of type `element_dtype`.
		  lengths: A `Tensor` of type `int64`.
	**/
	static public function tensor_list_concat_v2(input_handle:Dynamic, element_shape:Dynamic, leading_dims:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_concat_v2_eager_fallback(input_handle:Dynamic, element_shape:Dynamic, leading_dims:Dynamic, element_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		The shape of the elements of the given list, as a tensor.
		
		  input_handle: the list
		  element_shape: the shape of elements of the list
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  shape_type: A `tf.DType` from: `tf.int32, tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `shape_type`.
	**/
	static public function tensor_list_element_shape(input_handle:Dynamic, shape_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_element_shape_eager_fallback(input_handle:Dynamic, shape_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a TensorList which, when stacked, has the value of `tensor`.
		
		Each tensor in the result list corresponds to one row of the input tensor.
		
		tensor: The input tensor.
		output_handle: The list.
		
		Args:
		  tensor: A `Tensor`.
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tensor_list_from_tensor(tensor:Dynamic, element_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_from_tensor_eager_fallback(tensor:Dynamic, element_shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a Tensor by indexing into the TensorList.
		
		Each row in the produced Tensor corresponds to the element in the TensorList
		specified by the given index (see `tf.gather`).
		
		input_handle: The input tensor list.
		indices: The indices used to index into the list.
		values: The tensor.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  indices: A `Tensor` of type `int32`.
		  element_shape: A `Tensor` of type `int32`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `element_dtype`.
	**/
	static public function tensor_list_gather(input_handle:Dynamic, indices:Dynamic, element_shape:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_gather_eager_fallback(input_handle:Dynamic, indices:Dynamic, element_shape:Dynamic, element_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the item in the list with the given index.
		
		input_handle: the list
		index: the position in the list from which an element will be retrieved
		item: the element at that position
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  index: A `Tensor` of type `int32`.
		  element_shape: A `Tensor` of type `int32`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `element_dtype`.
	**/
	static public function tensor_list_get_item(input_handle:Dynamic, index:Dynamic, element_shape:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_get_item_eager_fallback(input_handle:Dynamic, index:Dynamic, element_shape:Dynamic, element_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the number of tensors in the input tensor list.
		
		input_handle: the input list
		length: the number of tensors in the list
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function tensor_list_length(input_handle:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_length_eager_fallback(input_handle:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the last element of the input list as well as a list with all but that element.
		
		Fails if the list is empty.
		
		input_handle: the input list
		tensor: the withdrawn last element of the list
		element_dtype: the type of elements in the list
		element_shape: the shape of the output tensor
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  element_shape: A `Tensor` of type `int32`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output_handle, tensor).
		
		  output_handle: A `Tensor` of type `variant`.
		  tensor: A `Tensor` of type `element_dtype`.
	**/
	static public function tensor_list_pop_back(input_handle:Dynamic, element_shape:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_pop_back_eager_fallback(input_handle:Dynamic, element_shape:Dynamic, element_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns a list which has the passed-in `Tensor` as last element and the other elements of the given list in `input_handle`.
		
		tensor: The tensor to put on the list.
		input_handle: The old list.
		output_handle: A list with the elements of the old list followed by tensor.
		element_dtype: the type of elements in the list.
		element_shape: a shape compatible with that of elements in the list.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  tensor: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tensor_list_push_back(input_handle:Dynamic, tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  input_handles: A `Tensor` of type `variant`.
		  tensor: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tensor_list_push_back_batch(input_handles:Dynamic, tensor:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_push_back_batch_eager_fallback(input_handles:Dynamic, tensor:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tensor_list_push_back_eager_fallback(input_handle:Dynamic, tensor:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		List of the given size with empty elements.
		
		element_shape: the shape of the future elements of the list
		num_elements: the number of elements to reserve
		handle: the output list
		element_dtype: the desired type of elements in the list.
		
		Args:
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  num_elements: A `Tensor` of type `int32`.
		  element_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tensor_list_reserve(element_shape:Dynamic, num_elements:Dynamic, element_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_reserve_eager_fallback(element_shape:Dynamic, num_elements:Dynamic, element_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Resizes the list.
		
		
		input_handle: the input list
		size: size of the output list
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  size: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tensor_list_resize(input_handle:Dynamic, size:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_resize_eager_fallback(input_handle:Dynamic, size:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a TensorList by indexing into a Tensor.
		
		Each member of the TensorList corresponds to one row of the input tensor,
		specified by the given index (see `tf.gather`).
		
		tensor: The input tensor.
		indices: The indices used to index into the list.
		element_shape: The shape of the elements in the list (can be less specified than
		  the shape of the tensor).
		output_handle: The TensorList.
		
		Args:
		  tensor: A `Tensor`.
		  indices: A `Tensor` of type `int32`.
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tensor_list_scatter(tensor:Dynamic, indices:Dynamic, element_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_scatter_eager_fallback(tensor:Dynamic, indices:Dynamic, element_shape:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Scatters tensor at indices in an input list.
		
		Each member of the TensorList corresponds to one row of the input tensor,
		specified by the given index (see `tf.gather`).
		
		input_handle: The list to scatter into.
		tensor: The input tensor.
		indices: The indices used to index into the list.
		output_handle: The TensorList.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  tensor: A `Tensor`.
		  indices: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tensor_list_scatter_into_existing_list(input_handle:Dynamic, tensor:Dynamic, indices:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_scatter_into_existing_list_eager_fallback(input_handle:Dynamic, tensor:Dynamic, indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a TensorList by indexing into a Tensor.
		
		Each member of the TensorList corresponds to one row of the input tensor,
		specified by the given index (see `tf.gather`).
		
		tensor: The input tensor.
		indices: The indices used to index into the list.
		element_shape: The shape of the elements in the list (can be less specified than
		  the shape of the tensor).
		num_elements: The size of the output list. Must be large enough to accommodate
		  the largest index in indices. If -1, the list is just large enough to include
		  the largest index in indices.
		output_handle: The TensorList.
		
		Args:
		  tensor: A `Tensor`.
		  indices: A `Tensor` of type `int32`.
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  num_elements: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tensor_list_scatter_v2(tensor:Dynamic, indices:Dynamic, element_shape:Dynamic, num_elements:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_scatter_v2_eager_fallback(tensor:Dynamic, indices:Dynamic, element_shape:Dynamic, num_elements:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Sets the index-th position of the list to contain the given tensor.
		
		input_handle: the list
		index: the position in the list to which the tensor will be assigned
		item: the element to be assigned to that position
		output_handle: the new list, with the element in the proper position
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  index: A `Tensor` of type `int32`.
		  item: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tensor_list_set_item(input_handle:Dynamic, index:Dynamic, item:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_set_item_eager_fallback(input_handle:Dynamic, index:Dynamic, item:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Splits a tensor into a list.
		
		list[i] corresponds to lengths[i] tensors from the input tensor.
		The tensor must have rank at least 1 and contain exactly sum(lengths) elements.
		
		tensor: The input tensor.
		element_shape: A shape compatible with that of elements in the tensor.
		lengths: Vector of sizes of the 0th dimension of tensors in the list.
		output_handle: The list.
		
		Args:
		  tensor: A `Tensor`.
		  element_shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  lengths: A `Tensor` of type `int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function tensor_list_split(tensor:Dynamic, element_shape:Dynamic, lengths:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_split_eager_fallback(tensor:Dynamic, element_shape:Dynamic, lengths:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Stacks all tensors in the list.
		
		Requires that all tensors have the same shape.
		
		input_handle: the input list
		tensor: the gathered result
		num_elements: optional. If not -1, the number of elements in the list.
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  element_shape: A `Tensor` of type `int32`.
		  element_dtype: A `tf.DType`.
		  num_elements: An optional `int`. Defaults to `-1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `element_dtype`.
	**/
	static public function tensor_list_stack(input_handle:Dynamic, element_shape:Dynamic, element_dtype:Dynamic, ?num_elements:Dynamic, ?name:Dynamic):Dynamic;
	static public function tensor_list_stack_eager_fallback(input_handle:Dynamic, element_shape:Dynamic, element_dtype:Dynamic, num_elements:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
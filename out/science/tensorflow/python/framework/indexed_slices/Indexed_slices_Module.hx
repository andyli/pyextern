/* This file is generated, do not edit! */
package tensorflow.python.framework.indexed_slices;
@:pythonImport("tensorflow.python.framework.indexed_slices") extern class Indexed_slices_Module {
	static public var _LARGE_SPARSE_NUM_ELEMENTS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts an IndexedSlices object `value` to a Tensor.
		
		NOTE(mrry): This function is potentially expensive.
		
		Args:
		  value: An ops.IndexedSlices object.
		  dtype: The dtype of the Tensor to be returned.
		  name: Optional name to use for the returned Tensor.
		  as_ref: True if a ref is requested.
		
		Returns:
		  A dense Tensor representing the values in the given IndexedSlices.
		
		Raises:
		  ValueError: If the IndexedSlices does not have the same dtype.
	**/
	static public function _indexed_slices_to_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts `values` to a list of `Output` or `IndexedSlices` objects.
		
		Any `IndexedSlices` or `SparseTensor` objects in `values` are returned
		unmodified.
		
		Args:
		  values: A list of `None`, `IndexedSlices`, `SparseTensor`, or objects that
		    can be consumed by `convert_to_tensor()`.
		  dtype: (Optional.) The required `DType` of the returned `Tensor`
		    `IndexedSlices`.
		  name: (Optional.) A name prefix to used when a new `Tensor` is created, in
		    which case element `i` will be given the name `name + '_' + i`.
		
		Returns:
		  A list of `Tensor`, `IndexedSlices`, and/or `SparseTensor` objects.
		
		Raises:
		  TypeError: If no conversion function is registered for an element in
		    `values`.
		  RuntimeError: If a registered conversion function returns an invalid
		    value.
	**/
	static public function convert_n_to_tensor_or_indexed_slices(values:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts the given object to a `Tensor` or an `IndexedSlices`.
		
		If `value` is an `IndexedSlices` or `SparseTensor` it is returned
		unmodified. Otherwise, it is converted to a `Tensor` using
		`convert_to_tensor()`.
		
		Args:
		  value: An `IndexedSlices`, `SparseTensor`, or an object that can be consumed
		    by `convert_to_tensor()`.
		  dtype: (Optional.) The required `DType` of the returned `Tensor` or
		    `IndexedSlices`.
		  name: (Optional.) A name to use if a new `Tensor` is created.
		
		Returns:
		  A `Tensor`, `IndexedSlices`, or `SparseTensor` based on `value`.
		
		Raises:
		  ValueError: If `dtype` does not match the element type of `value`.
	**/
	static public function convert_to_tensor_or_indexed_slices(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Converts `values` to a list of `Tensor` or `IndexedSlices` objects.
		
		Any `IndexedSlices` or `SparseTensor` objects in `values` are returned
		unmodified.
		
		Args:
		  values: An iterable of `None`, `IndexedSlices`, `SparseTensor`, or objects
		    that can be consumed by `convert_to_tensor()`.
		  dtype: (Optional.) The required `DType` of the returned `Tensor` or
		    `IndexedSlices`.
		  name: (Optional.) A name prefix to used when a new `Tensor` is created, in
		    which case element `i` will be given the name `name + '_' + i`.
		  as_ref: True if the caller wants the results as ref tensors.
		
		Returns:
		  A list of `Tensor`, `IndexedSlices`, `SparseTensor` and/or `None` objects.
		
		Raises:
		  TypeError: If no conversion function is registered for an element in
		    `values`.
		  RuntimeError: If a registered conversion function returns an invalid
		    value.
	**/
	static public function internal_convert_n_to_tensor_or_indexed_slices(values:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	/**
		Converts the given object to a `Tensor` or an `IndexedSlices`.
		
		If `value` is an `IndexedSlices` or `SparseTensor` it is returned
		unmodified. Otherwise, it is converted to a `Tensor` using
		`convert_to_tensor()`.
		
		Args:
		  value: An `IndexedSlices`, `SparseTensor`, or an object that can be consumed
		    by `convert_to_tensor()`.
		  dtype: (Optional.) The required `DType` of the returned `Tensor` or
		    `IndexedSlices`.
		  name: (Optional.) A name to use if a new `Tensor` is created.
		  as_ref: True if the caller wants the results as ref tensors.
		
		Returns:
		  A `Tensor`, `IndexedSlices`, or `SparseTensor` based on `value`.
		
		Raises:
		  ValueError: If `dtype` does not match the element type of `value`.
	**/
	static public function internal_convert_to_tensor_or_indexed_slices(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
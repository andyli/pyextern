/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.ops.sparse_feature_cross_op;
@:pythonImport("tensorflow.contrib.layers.python.ops.sparse_feature_cross_op") extern class Sparse_feature_cross_op_Module {
	static public var SPARSE_FEATURE_CROSS_DEFAULT_HASH_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for marking specific function argument values as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument values. It has the following format:
		
		  Calling <function> (from <module>) with <arg>=<value> is deprecated and
		  will be removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  **deprecated_kwargs: The deprecated argument values.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated_arg_values(date:Dynamic, instructions:Dynamic, ?deprecated_kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Crosses a list of Tensor or SparseTensor objects. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed after 2016-11-20.
		Instructions for updating:
		The default behavior of sparse_feature_cross is changing, the default
		value for hash_key will change to SPARSE_FEATURE_CROSS_DEFAULT_HASH_KEY.
		From that point on sparse_feature_cross will always use FingerprintCat64
		to concatenate the feature fingerprints. And the underlying
		_sparse_feature_cross_op.sparse_feature_cross operation will be marked
		as deprecated.
		
		See sparse_feature_cross_kernel.cc for more details.
		
		Args:
		  inputs: List of `SparseTensor` or `Tensor` to be crossed.
		  hashed_output: If true, returns the hash of the cross instead of the string.
		    This will allow us avoiding string manipulations.
		  num_buckets: It is used if hashed_output is true.
		    output = hashed_value%num_buckets if num_buckets > 0 else hashed_value.
		  name: A name prefix for the returned tensors (optional).
		  hash_key: Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints on SparseFeatureCrossOp.
		    The default value is None, but will become
		    SPARSE_FEATURE_CROSS_DEFAULT_HASH_KEY after 2016-11-20 (optional).
		
		Returns:
		  A `SparseTensor` with the crossed features.
		  Return type is string if hashed_output=False, int64 otherwise.
		
		Raises:
		  TypeError: If the inputs aren't either SparseTensor or Tensor.
	**/
	static public function sparse_feature_cross(inputs:Dynamic, ?hashed_output:Dynamic, ?num_buckets:Dynamic, ?name:Dynamic, ?hash_key:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.ops.embeddings_ops;
@:pythonImport("tensorflow.contrib.learn.python.learn.ops.embeddings_ops") extern class Embeddings_ops_Module {
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
		Creates an embedding for categorical variable with given number of classes. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-01.
		Instructions for updating:
		Use `tf.contrib.layers.embed_sequence` instead.
		
		Args:
		  tensor_in: Input tensor with class identifier (can be batch or
		    N-dimensional).
		  n_classes: Number of classes.
		  embedding_size: Size of embedding vector to represent each class.
		  name: Name of this categorical variable.
		Returns:
		  Tensor of input shape, with additional dimension for embedding.
		
		Example:
		  Calling categorical_variable([1, 2], 5, 10, "my_cat"), will return 2 x 10
		  tensor, where each row is representation of the class.
	**/
	static public function categorical_variable(tensor_in:Dynamic, n_classes:Dynamic, embedding_size:Dynamic, name:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Provides a N dimensional version of tf.embedding_lookup. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-01.
		Instructions for updating:
		Use `tf.embedding_lookup` instead.
		
		Ids are flattened to a 1d tensor before being passed to embedding_lookup
		then, they are unflattend to match the original ids shape plus an extra
		leading dimension of the size of the embeddings.
		
		Args:
		  params: List of tensors of size D0 x D1 x ... x Dn-2 x Dn-1.
		  ids: N-dimensional tensor of B0 x B1 x .. x Bn-2 x Bn-1.
		    Must contain indexes into params.
		  name: Optional name for the op.
		
		Returns:
		  A tensor of size B0 x B1 x .. x Bn-2 x Bn-1 x D1 x ... x Dn-2 x Dn-1
		  containing the values from the params tensor(s) for indecies in ids.
		
		Raises:
		  ValueError: if some parameters are invalid.
	**/
	static public function embedding_lookup(params:Dynamic, ids:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}
/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.ops.embedding_ops;
@:pythonImport("tensorflow.contrib.framework.python.ops.embedding_ops") extern class Embedding_ops_Module {
	static public var __all__ : Dynamic;
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
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String. The date the function is scheduled to be removed. Must be
		    ISO 8601 (YYYY-MM-DD).
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not in ISO 8601 format, or instructions are empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Lookup embedding results, accounting for invalid IDs and empty features. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-01.
		Instructions for updating:
		Please use tf.contrib.layers.safe_embedding_lookup_sparse.
		
		  The partitioned embedding in `embedding_weights` must all be the same shape
		  except for the first dimension. The first dimension is allowed to vary as the
		  vocabulary size is not necessarily a multiple of `P`.
		
		  Invalid IDs (< 0) are pruned from input IDs and weights, as well as any IDs
		  with non-positive weight. For an entry with no features, the embedding vector
		  for `default_id` is returned, or the 0-vector if `default_id` is not supplied.
		
		  The ids and weights may be multi-dimensional. Embeddings are always aggregated
		  along the last dimension.
		
		  Args:
		    embedding_weights:  A list of `P` float tensors or values representing
		        partitioned embedding tensors.  The total unpartitioned shape should be
		        `[e_0, e_1, ..., e_m]`, where `e_0` represents the vocab size and
		        `e_1, ..., e_m` are the embedding dimensions.
		    sparse_ids: `SparseTensor` of shape `[d_0, d_1, ..., d_n]` containing the
		        ids. `d_0` is typically batch size.
		    sparse_weights: `SparseTensor` of same shape as `sparse_ids`, containing
		        float weights corresponding to `sparse_ids`, or `None` if all weights
		        are be assumed to be 1.0.
		    combiner: A string specifying how to combine embedding results for each
		        entry. Currently "mean", "sqrtn" and "sum" are supported, with "mean"
		        the default.
		    default_id: The id to use for an entry with no features.
		    name: A name for this operation (optional).
		    partition_strategy: A string specifying the partitioning strategy.
		        Currently `"div"` and `"mod"` are supported. Default is `"div"`.
		
		
		  Returns:
		    Dense tensor of shape `[d_0, d_1, ..., d_{n-1}, e_1, ..., e_m]`.
		
		  Raises:
		    ValueError: if `embedding_weights` is empty.
		  
	**/
	static public function safe_embedding_lookup_sparse(embedding_weights:Dynamic, sparse_ids:Dynamic, ?sparse_weights:Dynamic, ?combiner:Dynamic, ?default_id:Dynamic, ?name:Dynamic, ?partition_strategy:Dynamic):Dynamic;
}
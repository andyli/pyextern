/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.summaries;
@:pythonImport("tensorflow.contrib.slim.python.slim.summaries") extern class Summaries_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Produces the summary name given.
		
		Args:
		  tensor: A variable or op `Tensor`.
		  name: The optional name for the summary.
		  prefix: An optional prefix for the summary name.
		  postfix: An optional postfix for the summary name.
		
		Returns:
		  a summary name.
	**/
	static public function _get_summary_name(tensor:Dynamic, ?name:Dynamic, ?prefix:Dynamic, ?postfix:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adds a histogram summary for each of the given tensors.
		
		Args:
		  tensors: A list of variable or op tensors.
		  prefix: An optional prefix for the summary names.
		
		Returns:
		  A list of scalar `Tensors` of type `string` whose contents are the
		  serialized `Summary` protocol buffer.
	**/
	static public function add_histogram_summaries(tensors:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Adds a histogram summary for the given tensor.
		
		Args:
		  tensor: A variable or op tensor.
		  name: The optional name for the summary.
		  prefix: An optional prefix for the summary names.
		
		Returns:
		  A scalar `Tensor` of type `string` whose contents are the serialized
		  `Summary` protocol buffer.
	**/
	static public function add_histogram_summary(tensor:Dynamic, ?name:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Adds an image summary for each of the given tensors.
		
		Args:
		  tensors: A list of variable or op tensors.
		  prefix: An optional prefix for the summary names.
		
		Returns:
		  A list of scalar `Tensors` of type `string` whose contents are the
		  serialized `Summary` protocol buffer.
	**/
	static public function add_image_summaries(tensors:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Adds an image summary for the given tensor.
		
		Args:
		  tensor: a variable or op tensor with shape [batch,height,width,channels]
		  name: the optional name for the summary.
		  prefix: An optional prefix for the summary names.
		  print_summary: If `True`, the summary is printed to stdout when the summary
		    is computed.
		
		Returns:
		  An image `Tensor` of type `string` whose contents are the serialized
		  `Summary` protocol buffer.
	**/
	static public function add_image_summary(tensor:Dynamic, ?name:Dynamic, ?prefix:Dynamic, ?print_summary:Dynamic):Dynamic;
	/**
		Adds a scalar summary for each of the given tensors.
		
		Args:
		  tensors: a list of variable or op tensors.
		  prefix: An optional prefix for the summary names.
		  print_summary: If `True`, the summary is printed to stdout when the summary
		    is computed.
		
		Returns:
		  A list of scalar `Tensors` of type `string` whose contents are the
		  serialized `Summary` protocol buffer.
	**/
	static public function add_scalar_summaries(tensors:Dynamic, ?prefix:Dynamic, ?print_summary:Dynamic):Dynamic;
	/**
		Adds a scalar summary for the given tensor.
		
		Args:
		  tensor: a variable or op tensor.
		  name: the optional name for the summary.
		  prefix: An optional prefix for the summary names.
		  print_summary: If `True`, the summary is printed to stdout when the summary
		    is computed.
		
		Returns:
		  A scalar `Tensor` of type `string` whose contents are the serialized
		  `Summary` protocol buffer.
	**/
	static public function add_scalar_summary(tensor:Dynamic, ?name:Dynamic, ?prefix:Dynamic, ?print_summary:Dynamic):Dynamic;
	/**
		Adds a scalar zero-fraction summary for each of the given tensors.
		
		Args:
		  tensors: a list of variable or op tensors.
		  prefix: An optional prefix for the summary names.
		
		Returns:
		  A list of scalar `Tensors` of type `string` whose contents are the
		  serialized `Summary` protocol buffer.
	**/
	static public function add_zero_fraction_summaries(tensors:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Adds a summary for the percentage of zero values in the given tensor.
		
		Args:
		  tensor: a variable or op tensor.
		  name: the optional name for the summary.
		  prefix: An optional prefix for the summary names.
		  print_summary: If `True`, the summary is printed to stdout when the summary
		    is computed.
		
		Returns:
		  A scalar `Tensor` of type `string` whose contents are the serialized
		  `Summary` protocol buffer.
	**/
	static public function add_zero_fraction_summary(tensor:Dynamic, ?name:Dynamic, ?prefix:Dynamic, ?print_summary:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}
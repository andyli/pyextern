/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.summaries;
@:pythonImport("tensorflow.contrib.layers.python.layers.summaries") extern class Summaries_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Add a summary operation for the histogram of a tensor.
		
		Args:
		  tensor: The tensor to summarize.
		  tag: The tag to use, if None then use tensor's op's name.
		
		Returns:
		  The created histogram summary.
		
		Raises:
		  ValueError: If the tag is already in use.
	**/
	static public function _add_histogram_summary(tensor:Dynamic, ?tag:Dynamic):Dynamic;
	/**
		Add a scalar summary operation for the tensor.
		
		Args:
		  tensor: The tensor to summarize.
		  tag: The tag to use, if None then use tensor's op's name.
		
		Returns:
		  The created histogram summary.
		
		Raises:
		  ValueError: If the tag is already in use or the rank is not 0.
	**/
	static public function _add_scalar_summary(tensor:Dynamic, ?tag:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Summarize an activation.
		
		This applies the given activation and adds useful summaries specific to the
		activation.
		
		Args:
		  op: The tensor to summarize (assumed to be a layer activation).
		Returns:
		  The summary op created to summarize `op`.
	**/
	static public function summarize_activation(op:Dynamic):Dynamic;
	/**
		Summarize activations, using `summarize_activation` to summarize.
	**/
	static public function summarize_activations(?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	static public function summarize_biases(?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	/**
		Summarize a graph collection of tensors, possibly filtered by name.
	**/
	static public function summarize_collection(collection:Dynamic, ?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	/**
		Summarize a tensor using a suitable summary type.
		
		This function adds a summary op for `tensor`. The type of summary depends on
		the shape of `tensor`. For scalars, a `scalar_summary` is created, for all
		other tensors, `histogram_summary` is used.
		
		Args:
		  tensor: The tensor to summarize
		  tag: The tag to use, if None then use tensor's op's name.
		
		Returns:
		  The summary op created or None for string tensors.
	**/
	static public function summarize_tensor(tensor:Dynamic, ?tag:Dynamic):Dynamic;
	/**
		Summarize a set of tensors.
	**/
	static public function summarize_tensors(tensors:Dynamic, ?summarizer:Dynamic):Dynamic;
	static public function summarize_variables(?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	static public function summarize_weights(?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package tensorflow.contrib.receptive_field.python.util.receptive_field;
@:pythonImport("tensorflow.contrib.receptive_field.python.util.receptive_field") extern class Receptive_field_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes effective padding at the input of a given layer.
		
		Args:
		  stride: Stride of given layer (integer).
		  padding: Padding of given layer (integer).
		  effective_padding_output: Effective padding at output of given layer
		    (integer).
		
		Returns:
		  effective_padding_input: Effective padding at input of given layer
		    (integer).
	**/
	static public function _get_effective_padding_node_input(stride:Dynamic, padding:Dynamic, effective_padding_output:Dynamic):Dynamic;
	/**
		Computes effective stride at the input of a given layer.
		
		Args:
		  stride: Stride of given layer (integer).
		  effective_stride_output: Effective stride at output of given layer
		    (integer).
		
		Returns:
		  effective_stride_input: Effective stride at input of given layer
		    (integer).
	**/
	static public function _get_effective_stride_node_input(stride:Dynamic, effective_stride_output:Dynamic):Dynamic;
	/**
		Computes RF size at the input of a given layer.
		
		Args:
		  stride: Stride of given layer (integer).
		  kernel_size: Kernel size of given layer (integer).
		  rf_size_output: RF size at output of given layer (integer).
		
		Returns:
		  rf_size_input: RF size at input of given layer (integer).
	**/
	static public function _get_rf_size_node_input(stride:Dynamic, kernel_size:Dynamic, rf_size_output:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Computes receptive field (RF) parameters from a Graph or GraphDef object.
		
		The algorithm stops the calculation of the receptive field whenever it
		encounters an operation in the list `stop_propagation`. Stopping the
		calculation early can be useful to calculate the receptive field of a
		subgraph such as a single branch of the
		[inception network](https://arxiv.org/abs/1512.00567).
		
		Args:
		  graph_def: Graph or GraphDef object.
		  input_node: Name of the input node or Tensor object from graph.
		  output_node: Name of the output node or Tensor object from graph.
		  stop_propagation: List of operations or scope names for which to stop the
		    propagation of the receptive field.
		  input_resolution: 2D list. If the input resolution to the model is fixed and
		    known, this may be set. This is helpful for cases where the RF parameters
		    vary depending on the input resolution (this happens since SAME padding in
		    tensorflow depends on input resolution in general). If this is None, it is
		    assumed that the input resolution is unknown, so some RF parameters may be
		    unknown (depending on the model architecture).
		
		Returns:
		  rf_size_x: Receptive field size of network in the horizontal direction, with
		    respect to specified input and output.
		  rf_size_y: Receptive field size of network in the vertical direction, with
		    respect to specified input and output.
		  effective_stride_x: Effective stride of network in the horizontal direction,
		    with respect to specified input and output.
		  effective_stride_y: Effective stride of network in the vertical direction,
		    with respect to specified input and output.
		  effective_padding_x: Effective padding of network in the horizontal
		    direction, with respect to specified input and output.
		  effective_padding_y: Effective padding of network in the vertical
		    direction, with respect to specified input and output.
		
		Raises:
		  ValueError: If network is not aligned or if either input or output nodes
		    cannot be found. For network criterion alignment, see
		    photos/vision/features/delf/g3doc/rf_computation.md
	**/
	static public function compute_receptive_field_from_graph_def(graph_def:Dynamic, input_node:Dynamic, output_node:Dynamic, ?stop_propagation:Dynamic, ?input_resolution:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}
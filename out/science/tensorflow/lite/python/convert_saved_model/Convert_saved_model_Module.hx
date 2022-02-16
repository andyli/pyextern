/* This file is generated, do not edit! */
package tensorflow.lite.python.convert_saved_model;
@:pythonImport("tensorflow.lite.python.convert_saved_model") extern class Convert_saved_model_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Gets the tensors associated with the tensor names.
		
		Either signature_def_tensor_names or user_tensor_names should be provided. If
		the user provides tensors, the tensors associated with the user provided
		tensor names are provided. Otherwise, the tensors associated with the names in
		the SignatureDef are provided.
		
		Args:
		  graph: GraphDef representing graph.
		  signature_def_tensor_names: Tensor names stored in either the inputs or
		    outputs of a SignatureDef. (default None)
		  user_tensor_names: Tensor names provided by the user. (default None)
		
		Returns:
		  List of tensors.
		
		Raises:
		  ValueError:
		    signature_def_tensors and user_tensor_names are undefined or empty.
		    user_tensor_names are not valid.
	**/
	static public function _get_tensors(graph:Dynamic, ?signature_def_tensor_names:Dynamic, ?user_tensor_names:Dynamic):Dynamic;
	/**
		Log tensor details: name, shape, and type.
	**/
	static public function _log_tensor_details(tensor_info:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		The decorator to identify converter component and subcomponent.
		
		Args:
		  component: Converter component name.
		  subcomponent: Converter subcomponent name.
		
		Returns:
		  Forward the result from the wrapped function.
		
		Raises:
		  ValueError: if component and subcomponent name is not valid.
	**/
	static public function convert_phase(component:Dynamic, ?subcomponent:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Converts a SavedModel to a frozen graph.
		
		Args:
		  saved_model_dir: SavedModel directory to convert.
		  input_arrays: List of input tensors to freeze graph with. Uses input arrays
		    from SignatureDef when none are provided.
		  input_shapes: Dict of strings representing input tensor names to list of
		    integers representing input shapes (e.g., {"foo": : [1, 16, 16, 3]}).
		    Automatically determined when input shapes is None (e.g., {"foo" : None}).
		  output_arrays: List of output tensors to freeze graph with. Uses output
		    arrays from SignatureDef when none are provided.
		  tag_set: Set of tags identifying the MetaGraphDef within the SavedModel to
		    analyze. All tags in the tag set must be present.
		  signature_key: Key identifying SignatureDef containing inputs and outputs.
		
		Returns:
		  frozen_graph_def: Frozen GraphDef.
		  in_tensors: List of input tensors for the graph.
		  out_tensors: List of output tensors for the graph.
		  graph: `Graph` object.
		
		Raises:
		  ValueError:
		    SavedModel doesn't contain a MetaGraphDef identified by tag_set.
		    signature_key is not in the MetaGraphDef.
		    assets/ directory is in the MetaGraphDef.
		    input_shapes does not match the length of input_arrays.
		    input_arrays or output_arrays are not valid.
	**/
	static public function freeze_saved_model(saved_model_dir:Dynamic, input_arrays:Dynamic, input_shapes:Dynamic, output_arrays:Dynamic, tag_set:Dynamic, signature_key:Dynamic):Dynamic;
	/**
		Get inputs and outputs from SignatureDef.
		
		Args:
		  signature_def: SignatureDef in the meta_graph_def for conversion.
		
		Returns:
		  The inputs and outputs in the graph for conversion.
	**/
	static public function get_inputs_outputs(signature_def:Dynamic):Dynamic;
	/**
		Validate saved_model and extract MetaGraphDef.
		
		Args:
		  saved_model_dir: saved_model path to convert.
		  tag_set: Set of tag(s) of the MetaGraphDef to load.
		
		Returns:
		  The meta_graph_def used for tflite conversion.
		
		Raises:
		  ValueError: No valid MetaGraphDef for given tag_set.
	**/
	static public function get_meta_graph_def(saved_model_dir:Dynamic, tag_set:Dynamic):Dynamic;
	/**
		Get the signature def from meta_graph with given signature_key.
		
		Args:
		  meta_graph: meta_graph_def.
		  signature_key: signature_def in the meta_graph_def.
		
		Returns:
		  The signature_def used for tflite conversion.
		
		Raises:
		  ValueError: Given signature_key is not valid for this meta_graph.
	**/
	static public function get_signature_def(meta_graph:Dynamic, signature_key:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}
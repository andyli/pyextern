/* This file is generated, do not edit! */
package keras.utils.vis_utils;
@:pythonImport("keras.utils.vis_utils") extern class Vis_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_pydot():Dynamic;
	/**
		Convert a Keras model to dot format.
		
		# Arguments
		    model: A Keras model instance.
		    show_shapes: whether to display shape information.
		    show_layer_names: whether to display layer names.
		    rankdir: `rankdir` argument passed to PyDot,
		        a string specifying the format of the plot:
		        'TB' creates a vertical plot;
		        'LR' creates a horizontal plot.
		
		# Returns
		    A `pydot.Dot` instance representing the Keras model.
	**/
	static public function model_to_dot(model:Dynamic, ?show_shapes:Dynamic, ?show_layer_names:Dynamic, ?rankdir:Dynamic):Dynamic;
	/**
		Converts a Keras model to dot format and save to a file.
		
		# Arguments
		    model: A Keras model instance
		    to_file: File name of the plot image.
		    show_shapes: whether to display shape information.
		    show_layer_names: whether to display layer names.
		    rankdir: `rankdir` argument passed to PyDot,
		        a string specifying the format of the plot:
		        'TB' creates a vertical plot;
		        'LR' creates a horizontal plot.
	**/
	static public function plot_model(model:Dynamic, ?to_file:Dynamic, ?show_shapes:Dynamic, ?show_layer_names:Dynamic, ?rankdir:Dynamic):Dynamic;
	static public var pydot : Dynamic;
}
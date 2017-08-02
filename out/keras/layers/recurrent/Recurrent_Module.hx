/* This file is generated, do not edit! */
package keras.layers.recurrent;
@:pythonImport("keras.layers.recurrent") extern class Recurrent_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Apply `y . w + b` for every temporal slice y of x.
		
		# Arguments
		    x: input tensor.
		    w: weight matrix.
		    b: optional bias vector.
		    dropout: wether to apply dropout (same dropout mask
		        for every temporal slice of the input).
		    input_dim: integer; optional dimensionality of the input.
		    output_dim: integer; optional dimensionality of the output.
		    timesteps: integer; optional number of timesteps.
		    training: training phase tensor or boolean.
		
		# Returns
		    Output tensor.
	**/
	static public function _time_distributed_dense(x:Dynamic, w:Dynamic, ?b:Dynamic, ?dropout:Dynamic, ?input_dim:Dynamic, ?output_dim:Dynamic, ?timesteps:Dynamic, ?training:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
}
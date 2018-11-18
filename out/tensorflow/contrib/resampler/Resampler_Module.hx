/* This file is generated, do not edit! */
package tensorflow.contrib.resampler;
@:pythonImport("tensorflow.contrib.resampler") extern class Resampler_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Resamples input data at user defined coordinates.
		
		The resampler currently only supports bilinear interpolation of 2D data.
		
		Args:
		  data: Tensor of shape `[batch_size, data_height, data_width,
		    data_num_channels]` containing 2D data that will be resampled.
		  warp: Tensor of minimum rank 2 containing the coordinates at which
		    resampling will be performed. Since only bilinear interpolation is
		    currently supported, the last dimension of the `warp` tensor must be 2.
		  name: Optional name of the op.
		
		Returns:
		  Tensor of resampled values from `data`. The output tensor shape is
		  determined by the shape of the warp tensor. For example, if `data` is of
		  shape `[batch_size, data_height, data_width, data_num_channels]` and warp of
		  shape `[batch_size, dim_0, ... , dim_n, 2]` the output will be of shape
		  `[batch_size, dim_0, ... , dim_n, data_num_channels]`.
		
		Raises:
		  ImportError: if the wrapper generated during compilation is not present when
		  the function is called.
	**/
	static public function resampler(data:Dynamic, warp:Dynamic, ?name:Dynamic):Dynamic;
}
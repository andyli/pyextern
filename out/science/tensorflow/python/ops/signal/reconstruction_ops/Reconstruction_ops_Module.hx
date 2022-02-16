/* This file is generated, do not edit! */
package tensorflow.python.ops.signal.reconstruction_ops;
@:pythonImport("tensorflow.python.ops.signal.reconstruction_ops") extern class Reconstruction_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Reconstructs a signal from a framed representation.
		
		Adds potentially overlapping frames of a signal with shape
		`[..., frames, frame_length]`, offsetting subsequent frames by `frame_step`.
		The resulting tensor has shape `[..., output_size]` where
		
		    output_size = (frames - 1) * frame_step + frame_length
		
		Args:
		  signal: A [..., frames, frame_length] `Tensor`. All dimensions may be
		    unknown, and rank must be at least 2.
		  frame_step: An integer or scalar `Tensor` denoting overlap offsets. Must be
		    less than or equal to `frame_length`.
		  name: An optional name for the operation.
		
		Returns:
		  A `Tensor` with shape `[..., output_size]` containing the overlap-added
		  frames of `signal`'s inner-most two dimensions.
		
		Raises:
		  ValueError: If `signal`'s rank is less than 2, or `frame_step` is not a
		    scalar integer.
	**/
	static public function overlap_and_add(signal:Dynamic, frame_step:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
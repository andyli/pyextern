/* This file is generated, do not edit! */
package tensorflow.contrib.signal.python.ops.reconstruction_ops;
@:pythonImport("tensorflow.contrib.signal.python.ops.reconstruction_ops") extern class Reconstruction_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Shuffles the last `k` indices of `input_tensor` to the front.
		
		Transposes `input_tensor` to have the last `k` indices at the front. The input
		may have arbitrary rank and unknown shape.
		
		Args:
		  input_tensor: A `Tensor` of arbitrary rank and unknown shape.
		  k: A scalar `Tensor` specifying how many indices to shuffle.
		
		Returns:
		  A transposed version of `input_tensor` with `k` indices shuffled to the
		  front.
		
		Raises:
		  ValueError: If `input_tensor` is not at least rank `k` or `k` is not scalar.
	**/
	static public function _shuffle_to_front(input_tensor:Dynamic, k:Dynamic):Dynamic;
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
		  ValueError: If `signal`'s rank is less than 2, `frame_step` is not a scalar
		    integer or `frame_step` is greater than `frame_length`.
	**/
	static public function overlap_and_add(signal:Dynamic, frame_step:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}
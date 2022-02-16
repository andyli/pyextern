/* This file is generated, do not edit! */
package tensorflow.python.ops.signal.shape_ops;
@:pythonImport("tensorflow.python.ops.signal.shape_ops") extern class Shape_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Infers the shape of the return value of `frame`.
	**/
	static public function _infer_frame_shape(signal:Dynamic, frame_length:Dynamic, frame_step:Dynamic, pad_end:Dynamic, axis:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Expands `signal`'s `axis` dimension into frames of `frame_length`.
		
		Slides a window of size `frame_length` over `signal`'s `axis` dimension
		with a stride of `frame_step`, replacing the `axis` dimension with
		`[frames, frame_length]` frames.
		
		If `pad_end` is True, window positions that are past the end of the `axis`
		dimension are padded with `pad_value` until the window moves fully past the
		end of the dimension. Otherwise, only window positions that fully overlap the
		`axis` dimension are produced.
		
		For example:
		
		>>> # A batch size 3 tensor of 9152 audio samples.
		>>> audio = tf.random.normal([3, 9152])
		>>> 
		>>> # Compute overlapping frames of length 512 with a step of 180 (frames overlap
		>>> # by 332 samples). By default, only 49 frames are generated since a frame
		>>> # with start position j*180 for j > 48 would overhang the end.
		>>> frames = tf.signal.frame(audio, 512, 180)
		>>> frames.shape.assert_is_compatible_with([3, 49, 512])
		>>> 
		>>> # When pad_end is enabled, the final two frames are kept (padded with zeros).
		>>> frames = tf.signal.frame(audio, 512, 180, pad_end=True)
		>>> frames.shape.assert_is_compatible_with([3, 51, 512])
		
		If the dimension along `axis` is N, and `pad_end=False`, the number of frames
		can be computed by:
		 ```python
		 num_frames = 1 + (N - frame_size) // frame_step
		 ```
		 If `pad_end=True`, the number of frames can be computed by:
		```python
		num_frames = -(-N // frame_step) # ceiling division
		```
		
		Args:
		  signal: A `[..., samples, ...]` `Tensor`. The rank and dimensions
		    may be unknown. Rank must be at least 1.
		  frame_length: The frame length in samples. An integer or scalar `Tensor`.
		  frame_step: The frame hop size in samples. An integer or scalar `Tensor`.
		  pad_end: Whether to pad the end of `signal` with `pad_value`.
		  pad_value: An optional scalar `Tensor` to use where the input signal
		    does not exist when `pad_end` is True.
		  axis: A scalar integer `Tensor` indicating the axis to frame. Defaults to
		    the last axis. Supports negative values for indexing from the end.
		  name: An optional name for the operation.
		
		Returns:
		  A `Tensor` of frames with shape `[..., num_frames, frame_length, ...]`.
		
		Raises:
		  ValueError: If `frame_length`, `frame_step`, `pad_value`, or `axis` are not
		    scalar.
	**/
	static public function frame(signal:Dynamic, frame_length:Dynamic, frame_step:Dynamic, ?pad_end:Dynamic, ?pad_value:Dynamic, ?axis:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
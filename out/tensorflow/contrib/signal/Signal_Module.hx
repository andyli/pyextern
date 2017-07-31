/* This file is generated, do not edit! */
package tensorflow.contrib.signal;
@:pythonImport("tensorflow.contrib.signal") extern class Signal_Module {
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
		Frame a signal into overlapping frames.
		
		May be used in front of spectral functions.
		
		For example:
		
		```python
		pcm = tf.placeholder(tf.float32, [None, 9152])
		frames = tf.contrib.signal.frames(pcm, 512, 180)
		magspec = tf.abs(tf.spectral.rfft(frames, [512]))
		image = tf.expand_dims(magspec, 3)
		```
		
		Args:
		  signal: A `Tensor` of shape `[batch_size, signal_length]`.
		  frame_length: An `int32` or `int64` `Tensor`. The length of each frame.
		  frame_step: An `int32` or `int64` `Tensor`. The step between frames.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of frames with shape `[batch_size, num_frames, frame_length]`.
		
		Raises:
		  ValueError: if signal does not have rank 2.
	**/
	static public function frames(signal:Dynamic, frame_length:Dynamic, frame_step:Dynamic, ?name:Dynamic):Dynamic;
}
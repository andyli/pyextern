/* This file is generated, do not edit! */
package tensorflow.lite.experimental.microfrontend.python.ops.audio_microfrontend_op;
@:pythonImport("tensorflow.lite.experimental.microfrontend.python.ops.audio_microfrontend_op") extern class Audio_microfrontend_op_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Audio Microfrontend Op.
		
		This Op converts a sequence of audio data into one or more
		feature vectors containing filterbanks of the input. The
		conversion process uses a lightweight library to perform:
		
		1. A slicing window function
		2. Short-time FFTs
		3. Filterbank calculations
		4. Noise reduction
		5. PCAN Auto Gain Control
		6. Logarithmic scaling
		
		Args:
		  audio: 1D Tensor, int16 audio data in temporal ordering.
		  sample_rate: Integer, the sample rate of the audio in Hz.
		  window_size: Integer, length of desired time frames in ms.
		  window_step: Integer, length of step size for the next frame in ms.
		  num_channels: Integer, the number of filterbank channels to use.
		  upper_band_limit: Float, the highest frequency included in the filterbanks.
		  lower_band_limit: Float, the lowest frequency included in the filterbanks.
		  smoothing_bits: Int, scale up signal by 2^(smoothing_bits) before reduction.
		  even_smoothing: Float, smoothing coefficient for even-numbered channels.
		  odd_smoothing: Float, smoothing coefficient for odd-numbered channels.
		  min_signal_remaining: Float, fraction of signal to preserve in smoothing.
		  enable_pcan: Bool, enable PCAN auto gain control.
		  pcan_strength: Float, gain normalization exponent.
		  pcan_offset: Float, positive value added in the normalization denominator.
		  gain_bits: Int, number of fractional bits in the gain.
		  enable_log: Bool, enable logarithmic scaling of filterbanks.
		  scale_shift: Integer, scale filterbanks by 2^(scale_shift).
		  left_context: Integer, number of preceding frames to attach to each frame.
		  right_context: Integer, number of preceding frames to attach to each frame.
		  frame_stride: Integer, M frames to skip over, where output[n] = frame[n*M].
		  zero_padding: Bool, if left/right context is out-of-bounds, attach frame of
		    zeroes. Otherwise, frame[0] or frame[size-1] will be copied.
		  out_scale: Integer, divide all filterbanks by this number.
		  out_type: DType, type of the output Tensor, defaults to UINT16.
		
		Returns:
		  filterbanks: 2D Tensor, each row is a time frame, each column is a channel.
		
		Raises:
		  ValueError: If the audio tensor is not explicitly a vector.
	**/
	static public function audio_microfrontend(audio:Dynamic, ?sample_rate:Dynamic, ?window_size:Dynamic, ?window_step:Dynamic, ?num_channels:Dynamic, ?upper_band_limit:Dynamic, ?lower_band_limit:Dynamic, ?smoothing_bits:Dynamic, ?even_smoothing:Dynamic, ?odd_smoothing:Dynamic, ?min_signal_remaining:Dynamic, ?enable_pcan:Dynamic, ?pcan_strength:Dynamic, ?pcan_offset:Dynamic, ?gain_bits:Dynamic, ?enable_log:Dynamic, ?scale_shift:Dynamic, ?left_context:Dynamic, ?right_context:Dynamic, ?frame_stride:Dynamic, ?zero_padding:Dynamic, ?out_scale:Dynamic, ?out_type:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
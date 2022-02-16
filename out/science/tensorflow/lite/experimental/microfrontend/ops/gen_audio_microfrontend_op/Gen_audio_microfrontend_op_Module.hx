/* This file is generated, do not edit! */
package tensorflow.lite.experimental.microfrontend.ops.gen_audio_microfrontend_op;
@:pythonImport("tensorflow.lite.experimental.microfrontend.ops.gen_audio_microfrontend_op") extern class Gen_audio_microfrontend_op_Module {
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
		
		Arguments
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
		
		Returns
		  filterbanks: 2D Tensor, each row is a time frame, each column is a channel.
		
		Args:
		  audio: A `Tensor` of type `int16`.
		  sample_rate: An optional `int`. Defaults to `16000`.
		  window_size: An optional `int`. Defaults to `25`.
		  window_step: An optional `int`. Defaults to `10`.
		  num_channels: An optional `int`. Defaults to `32`.
		  upper_band_limit: An optional `float`. Defaults to `7500`.
		  lower_band_limit: An optional `float`. Defaults to `125`.
		  smoothing_bits: An optional `int`. Defaults to `10`.
		  even_smoothing: An optional `float`. Defaults to `0.025`.
		  odd_smoothing: An optional `float`. Defaults to `0.06`.
		  min_signal_remaining: An optional `float`. Defaults to `0.05`.
		  enable_pcan: An optional `bool`. Defaults to `False`.
		  pcan_strength: An optional `float`. Defaults to `0.95`.
		  pcan_offset: An optional `float`. Defaults to `80`.
		  gain_bits: An optional `int`. Defaults to `21`.
		  enable_log: An optional `bool`. Defaults to `True`.
		  scale_shift: An optional `int`. Defaults to `6`.
		  left_context: An optional `int`. Defaults to `0`.
		  right_context: An optional `int`. Defaults to `0`.
		  frame_stride: An optional `int`. Defaults to `1`.
		  zero_padding: An optional `bool`. Defaults to `False`.
		  out_scale: An optional `int`. Defaults to `1`.
		  out_type: An optional `tf.DType` from: `tf.uint16, tf.float32`. Defaults to `tf.uint16`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function AudioMicrofrontend(audio:Dynamic, ?sample_rate:Dynamic, ?window_size:Dynamic, ?window_step:Dynamic, ?num_channels:Dynamic, ?upper_band_limit:Dynamic, ?lower_band_limit:Dynamic, ?smoothing_bits:Dynamic, ?even_smoothing:Dynamic, ?odd_smoothing:Dynamic, ?min_signal_remaining:Dynamic, ?enable_pcan:Dynamic, ?pcan_strength:Dynamic, ?pcan_offset:Dynamic, ?gain_bits:Dynamic, ?enable_log:Dynamic, ?scale_shift:Dynamic, ?left_context:Dynamic, ?right_context:Dynamic, ?frame_stride:Dynamic, ?zero_padding:Dynamic, ?out_scale:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_audio_microfrontend(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		Arguments
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
		
		Returns
		  filterbanks: 2D Tensor, each row is a time frame, each column is a channel.
		
		Args:
		  audio: A `Tensor` of type `int16`.
		  sample_rate: An optional `int`. Defaults to `16000`.
		  window_size: An optional `int`. Defaults to `25`.
		  window_step: An optional `int`. Defaults to `10`.
		  num_channels: An optional `int`. Defaults to `32`.
		  upper_band_limit: An optional `float`. Defaults to `7500`.
		  lower_band_limit: An optional `float`. Defaults to `125`.
		  smoothing_bits: An optional `int`. Defaults to `10`.
		  even_smoothing: An optional `float`. Defaults to `0.025`.
		  odd_smoothing: An optional `float`. Defaults to `0.06`.
		  min_signal_remaining: An optional `float`. Defaults to `0.05`.
		  enable_pcan: An optional `bool`. Defaults to `False`.
		  pcan_strength: An optional `float`. Defaults to `0.95`.
		  pcan_offset: An optional `float`. Defaults to `80`.
		  gain_bits: An optional `int`. Defaults to `21`.
		  enable_log: An optional `bool`. Defaults to `True`.
		  scale_shift: An optional `int`. Defaults to `6`.
		  left_context: An optional `int`. Defaults to `0`.
		  right_context: An optional `int`. Defaults to `0`.
		  frame_stride: An optional `int`. Defaults to `1`.
		  zero_padding: An optional `bool`. Defaults to `False`.
		  out_scale: An optional `int`. Defaults to `1`.
		  out_type: An optional `tf.DType` from: `tf.uint16, tf.float32`. Defaults to `tf.uint16`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function audio_microfrontend(audio:Dynamic, ?sample_rate:Dynamic, ?window_size:Dynamic, ?window_step:Dynamic, ?num_channels:Dynamic, ?upper_band_limit:Dynamic, ?lower_band_limit:Dynamic, ?smoothing_bits:Dynamic, ?even_smoothing:Dynamic, ?odd_smoothing:Dynamic, ?min_signal_remaining:Dynamic, ?enable_pcan:Dynamic, ?pcan_strength:Dynamic, ?pcan_offset:Dynamic, ?gain_bits:Dynamic, ?enable_log:Dynamic, ?scale_shift:Dynamic, ?left_context:Dynamic, ?right_context:Dynamic, ?frame_stride:Dynamic, ?zero_padding:Dynamic, ?out_scale:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function audio_microfrontend_eager_fallback(audio:Dynamic, sample_rate:Dynamic, window_size:Dynamic, window_step:Dynamic, num_channels:Dynamic, upper_band_limit:Dynamic, lower_band_limit:Dynamic, smoothing_bits:Dynamic, even_smoothing:Dynamic, odd_smoothing:Dynamic, min_signal_remaining:Dynamic, enable_pcan:Dynamic, pcan_strength:Dynamic, pcan_offset:Dynamic, gain_bits:Dynamic, enable_log:Dynamic, scale_shift:Dynamic, left_context:Dynamic, right_context:Dynamic, frame_stride:Dynamic, zero_padding:Dynamic, out_scale:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
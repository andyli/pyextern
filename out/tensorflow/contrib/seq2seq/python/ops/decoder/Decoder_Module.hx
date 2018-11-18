/* This file is generated, do not edit! */
package tensorflow.contrib.seq2seq.python.ops.decoder;
@:pythonImport("tensorflow.contrib.seq2seq.python.ops.decoder") extern class Decoder_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Create a zero outputs Tensor structure.
	**/
	static public function _create_zero_outputs(size:Dynamic, dtype:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Transposes the batch and time dimensions of a Tensor.
		
		If the input tensor has rank < 2 it returns the original tensor. Retains as
		much of the static shape information as possible.
		
		Args:
		  x: A Tensor.
		
		Returns:
		  x transposed along the first two dimensions.
	**/
	static public function _transpose_batch_time(x:Dynamic):Dynamic;
	/**
		Create tensors of zeros based on state_size, batch_size, and dtype.
	**/
	static public function _zero_state_tensors(state_size:Dynamic, batch_size:Dynamic, dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Perform dynamic decoding with `decoder`.
		
		Calls initialize() once and step() repeatedly on the Decoder object.
		
		Args:
		  decoder: A `Decoder` instance.
		  output_time_major: Python boolean.  Default: `False` (batch major).  If
		    `True`, outputs are returned as time major tensors (this mode is faster).
		    Otherwise, outputs are returned as batch major tensors (this adds extra
		    time to the computation).
		  impute_finished: Python boolean.  If `True`, then states for batch
		    entries which are marked as finished get copied through and the
		    corresponding outputs get zeroed out.  This causes some slowdown at
		    each time step, but ensures that the final state and outputs have
		    the correct values and that backprop ignores time steps that were
		    marked as finished.
		  maximum_iterations: `int32` scalar, maximum allowed number of decoding
		     steps.  Default is `None` (decode until the decoder is fully done).
		  parallel_iterations: Argument passed to `tf.while_loop`.
		  swap_memory: Argument passed to `tf.while_loop`.
		  scope: Optional variable scope to use.
		
		Returns:
		  `(final_outputs, final_state, final_sequence_lengths)`.
		
		Raises:
		  TypeError: if `decoder` is not an instance of `Decoder`.
		  ValueError: if `maximum_iterations` is provided but is not a scalar.
	**/
	static public function dynamic_decode(decoder:Dynamic, ?output_time_major:Dynamic, ?impute_finished:Dynamic, ?maximum_iterations:Dynamic, ?parallel_iterations:Dynamic, ?swap_memory:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}
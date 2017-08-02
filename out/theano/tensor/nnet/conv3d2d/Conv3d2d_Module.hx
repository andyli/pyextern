/* This file is generated, do not edit! */
package theano.tensor.nnet.conv3d2d;
@:pythonImport("theano.tensor.nnet.conv3d2d") extern class Conv3d2d_Module {
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
		Convolve spatio-temporal filters with a movie.
		
		It flips the filters.
		
		Parameters
		----------
		signals
		    Timeseries of images whose pixels have color channels.
		    Shape: [Ns, Ts, C, Hs, Ws].
		filters
		    Spatio-temporal filters.
		    Shape: [Nf, Tf, C, Hf, Wf].
		signals_shape
		    None or a tuple/list with the shape of signals.
		filters_shape
		    None or a tuple/list with the shape of filters.
		border_mode
		    One of 'valid', 'full' or 'half'.
		
		Notes
		-----
		Another way to define signals: (batch,  time, in channel, row, column)
		Another way to define filters: (out channel,time,in channel, row, column)
		
		For the GPU, you can use this implementation or
		:func:`conv3d_fft <theano.sandbox.cuda.fftconv.conv3d_fft>`.
		
		See Also
		--------
		Someone made a script that shows how to swap the axes between
		both 3d convolution implementations in Theano. See the last
		`attachment <https://groups.google.com/d/msg/theano-users/1S9_bZgHxVw/0cQR9a4riFUJ>`_
	**/
	static public function conv3d(signals:Dynamic, filters:Dynamic, ?signals_shape:Dynamic, ?filters_shape:Dynamic, ?border_mode:Dynamic):Dynamic;
	/**
		Copies the stack trace from one or more tensor variables to
		one or more tensor variables.
		
		Parameters
		----------
		from_var
		    Tensor variable or list of tensor variables to copy stack traces from.
		to_var
		    Tensor variable or list of tensor variables to copy stack traces to.
		
		Notes
		-----
		The stacktrace is assumed to be of the form of a list of lists
		of tuples. Each tuple contains the filename, line number, function name
		and so on. Each list of tuples contains the truples belonging to a
		particular variable.
	**/
	static public function copy_stack_trace(from_var:Dynamic, to_var:Dynamic):Dynamic;
	static public function diagonal_subtensor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Helper function for DiagonalSubtensor and IncDiagonalSubtensor.
		
		Notes
		-----
		It returns a partial view of x, not a partial copy.
	**/
	static public function get_diagonal_subtensor_view(x:Dynamic, i0:Dynamic, i1:Dynamic):Dynamic;
	static public function inc_diagonal_subtensor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var local_inplace_DiagonalSubtensor : Dynamic;
	/**
		This function create optimizer that move some inputs to the GPU
		for op that work on both CPU and GPU.
		
		The op object is created by calling op(), so good default value
		are needed.
		
		We suppose the same op work with CPU and GPU inputs.
		
		Parameters
		----------
		op
		    The op that support GPU inputs.
		to_gpu
		    A list of op inputs that are moved to the GPU.
	**/
	static public function make_gpu_optimizer(op:Dynamic, to_gpu:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}
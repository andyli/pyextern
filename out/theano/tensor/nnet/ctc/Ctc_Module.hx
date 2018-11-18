/* This file is generated, do not edit! */
package theano.tensor.nnet.ctc;
@:pythonImport("theano.tensor.nnet.ctc") extern class Ctc_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _ctc_check_compile(ctc_lib_path:Dynamic):Dynamic;
	/**
		Find the directory that contains libwarpctc.so
	**/
	static public function _ctc_find_lib():Dynamic;
	static public var absolute_import : Dynamic;
	static public var config : Dynamic;
	static public function cpu_contiguous(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compute CTC loss function.
		
		Notes
		-----
		Using the loss function requires that the Baidu's warp-ctc library be installed.
		If the warp-ctc library is not on the compiler's default library path, the
		configuration variable ``config.ctc.root`` must be properly set.
		
		Parameters
		----------
		activations
		    Three-dimensional tensor, which has a shape of (t, m, p), where
		    t is the time index, m is the minibatch index, and p is the index
		    over the probabilities of each symbol in the alphabet. The memory
		    layout is assumed to be in C-order, which consists in the slowest
		    to the fastest changing dimension, from left to right. In this case,
		    p is the fastest changing dimension.
		labels
		    A 2-D tensor of all the labels for the minibatch. In each row, there
		    is a sequence of target labels. Negative values are assumed to be padding,
		    and thus are ignored. Blank symbol is assumed to have index 0 in the
		    alphabet.
		input_lengths
		    A 1-D tensor with the number of time steps for each sequence in
		    the minibatch.
		
		Returns
		-------
		1-D array
		    Cost of each example in the minibatch.
	**/
	static public function ctc(activations:Dynamic, labels:Dynamic, input_lengths:Dynamic):Dynamic;
	static public function ctc_available():Dynamic;
	static public function ctc_present():Dynamic;
	static public var division : Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (GradUndefinedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` is mathematically undefined. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not defined.
	**/
	static public function grad_undefined(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	static public var local_ctc_no_grad : Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function register_canonicalize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
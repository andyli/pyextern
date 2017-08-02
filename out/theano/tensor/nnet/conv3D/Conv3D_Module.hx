/* This file is generated, do not edit! */
package theano.tensor.nnet.conv3D;
@:pythonImport("theano.tensor.nnet.Conv3D") extern class Conv3D_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _conv3D(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		C header for the fortran blas interface
	**/
	static public function blas_header_text():Dynamic;
	static public function blas_header_version():Dynamic;
	static public function computeH(V:Dynamic, W:Dynamic, b:Dynamic, d:Dynamic):Dynamic;
	/**
		3D "convolution" of multiple filters on a minibatch.
		
		(does not flip the kernel, moves kernel with a user specified stride)
		
		Parameters
		----------
		V
		    Visible unit, input.
		    Dimensions: (batch, row, column, time, in channel).
		W
		    Weights, filter.
		    Dimensions: (out channel, row, column, time ,in channel).
		b
		    Bias, shape == (W.shape[0],).
		d
		    Strides when moving the filter over the input(dx, dy, dt).
		
		Notes
		-----
		The order of dimensions does not correspond to the one in `conv2d`.
		This is for optimization.
		
		The GPU implementation is very slow. You should use
		:func:`conv3d2d <theano.tensor.nnet.conv3d2d.conv3d>` or
		:func:`conv3d_fft <theano.sandbox.cuda.fftconv.conv3d_fft>` for a
		GPU graph instead.
		
		See Also
		--------
		Someone made a script that shows how to swap the axes
		between both 3d convolution implementations in Theano. See
		the last `attachment <https://groups.google.com/d/msg/theano-users/1S9_bZgHxVw/0cQR9a4riFUJ>`_
	**/
	static public function conv3D(V:Dynamic, W:Dynamic, b:Dynamic, d:Dynamic):Dynamic;
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
	/**
		Extract a list of compilation flags from config.blas.ldflags.
		
		Depending on the options, different type of flags will be kept.
		It returns a list of libraries against which an Op's object file
		should be linked to benefit from a BLAS implementation.
		
		Parameters
		----------
		libs : bool, optional
		    Extract flags starting with "-l" (the default is True).
		libs_dir : bool, optional
		    Extract flags starting with "-L" (the default is False).
		include_dir : bool, optional
		    Extract flags starting with "-I" (the default is False).
		flags: bool, optional
		    Extract all the other flags (the default is False).
		
		Returns
		-------
		list of strings
		    Extracted flags.
	**/
	static public function ldflags(?libs:Dynamic, ?flags:Dynamic, ?libs_dir:Dynamic, ?include_dir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}
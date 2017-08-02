/* This file is generated, do not edit! */
package theano.sandbox.cuda.opt_util;
@:pythonImport("theano.sandbox.cuda.opt_util") extern class Opt_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _one : Dynamic;
	static public var absolute_import : Dynamic;
	static public function alpha_merge(cls:Dynamic, alpha_in:Dynamic, beta_in:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function find_node(v:Dynamic, cls:Dynamic, ?ignore_clients:Dynamic):Dynamic;
	/**
		Return the constant scalar(0-D) value underlying variable `v`.
		
		If `v` is the output of dimshuffles, fills, allocs, rebroadcasts,
		cast, OutputGuard, DeepCopyOp, ScalarFromTensor, ScalarOp, Elemwise
		and some pattern with Subtensor, this function digs through them.
		
		If `v` is not some view of constant scalar data, then raise a
		NotScalarConstantError.
		
		Parameters
		----------
		elemwise : bool
		    If False, we won't try to go into elemwise. So this call is faster.
		    But we still investigate in Second Elemwise (as this is a substitute
		    for Alloc)
		only_process_constants : bool
		    If True, we only attempt to obtain the value of `orig_v` if it's
		    directly constant and don't try to dig through dimshuffles, fills,
		    allocs, and other to figure out its value.
		max_recur : int
		    The maximum number of recursion.
		
		Notes
		-----
		    There may be another function similar to this one in the code,
		    but I'm not sure where it is.
	**/
	static public function get_scalar_constant_value(orig_v:Dynamic, ?elemwise:Dynamic, ?only_process_constants:Dynamic, ?max_recur:Dynamic):Dynamic;
	static public function grab_cpu_scalar(v:Dynamic, nd:Dynamic):Dynamic;
	static public function host_from_gpu(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_equal(_var:Dynamic, val:Dynamic):Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	static public function output_merge(cls:Dynamic, alpha_in:Dynamic, beta_in:Dynamic, out_in:Dynamic):Dynamic;
	/**
		Reshapes the input to a (leftdims + rightdims) tensor
		
		This helper function is used to convert pooling inputs with arbitrary
		non-pooling dimensions to the correct number of dimensions for the
		GPU pooling ops.
		
		This reduces or expands the number of dimensions of the input to
		exactly `leftdims`, by adding extra dimensions on the left or by
		combining some existing dimensions on the left of the input.
		
		Use `unpad_dims` to reshape back to the original dimensions.
		
		Examples
		--------
		Given input of shape (3, 5, 7), ``pad_dims(input, 2, 2)``
		adds a singleton dimension and reshapes to (3, 1, 5, 7).
		Given that output from pad_dims, ``unpad_dims(output, input, 2, 2)``
		reshapes back to (3, 5, 7).
		
		Given input of shape (3, 5, 7, 9), ``pad_dims(input, 2, 2)``
		does not reshape and returns output with shape (3, 5, 7, 9).
		
		Given input of shape (3, 5, 7, 9, 11), ``pad_dims(input, 2, 2)``
		combines the first two dimensions and reshapes to (8, 7, 9, 11).
		
		Given input of shape (3, 5, 7, 9), ``pad_dims(input, 2, 3)``
		adds a singleton dimension and reshapes to (3, 1, 5, 7, 9).
	**/
	static public function pad_dims(input:Dynamic, leftdims:Dynamic, rightdims:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reshapes the output after pad_dims.
		
		This reverts the padding by `pad_dims`.
	**/
	static public function unpad_dims(output:Dynamic, input:Dynamic, leftdims:Dynamic, rightdims:Dynamic):Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}
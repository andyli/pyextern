/* This file is generated, do not edit! */
package tensorflow.python.ops.inplace_ops;
@:pythonImport("tensorflow.python.ops.inplace_ops") extern class Inplace_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Applies an inplace op on (x, i, v).
		
		op is one of gen_array_ops.alias_inplace_update,
		gen_array_ops.alias_inplace_add, or gen_array_ops.alias_inplace_sub.
		
		If i is None, x and v must be the same shape. Computes
		  x op v;
		If i is a scalar, x has a rank 1 higher than v's. Computes
		  x[i, :] op v;
		Otherwise, x and v must have the same rank. Computes
		  x[i, :] op v;
		
		Args:
		  x: A Tensor.
		  i: None, a scalar or a vector.
		  v: A Tensor.
		  op: alias_inplace_update, alias_inplace_add, or alias_inplace_sub.
		
		Returns:
		  Returns x.
	**/
	static public function _inplace_helper(x:Dynamic, i:Dynamic, v:Dynamic, op:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Applies an inplace add on input x at index i with value v. Aliases x.
		
		If i is None, x and v must be the same shape. Computes
		  x += v;
		If i is a scalar, x has a rank 1 higher than v's. Computes
		  x[i, :] += v;
		Otherwise, x and v must have the same rank. Computes
		  x[i, :] += v;
		
		Args:
		  x: A Tensor.
		  i: None, a scalar or a vector.
		  v: A Tensor.
		
		Returns:
		  Returns x.
	**/
	static public function alias_inplace_add(x:Dynamic, i:Dynamic, v:Dynamic):Dynamic;
	/**
		Applies an inplace sub on input x at index i with value v. Aliases x.
		
		If i is None, x and v must be the same shape. Computes
		  x -= v;
		If i is a scalar, x has a rank 1 higher than v's. Computes
		  x[i, :] -= v;
		Otherwise, x and v must have the same rank. Computes
		  x[i, :] -= v;
		
		Args:
		  x: A Tensor.
		  i: None, a scalar or a vector.
		  v: A Tensor.
		
		Returns:
		  Returns x.
	**/
	static public function alias_inplace_sub(x:Dynamic, i:Dynamic, v:Dynamic):Dynamic;
	/**
		Applies an inplace update on input x at index i with value v. Aliases x.
		
		If i is None, x and v must be the same shape. Computes
		  x = v;
		If i is a scalar, x has a rank 1 higher than v's. Computes
		  x[i, :] = v;
		Otherwise, x and v must have the same rank. Computes
		  x[i, :] = v;
		
		Args:
		  x: A Tensor.
		  i: None, a scalar or a vector.
		  v: A Tensor.
		
		Returns:
		  Returns x.
	**/
	static public function alias_inplace_update(x:Dynamic, i:Dynamic, v:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates a tensor with the given shape.
		
		This operation creates a tensor of `shape` and `dtype`.
		
		  Args:
		    shape: A `Tensor` of type `int32`.
		      1-D. Represents the shape of the output tensor.
		    dtype: A `tf.DType`.
		    init: An optional `bool`. Defaults to `False`.
		      If True, initialize the returned tensor with the default value of dtype.  Otherwise, the implementation is free not to initializethe tensor's content.
		    name: A name for the operation (optional).
		
		  Returns:
		    A `Tensor` of type `dtype`.
		  
	**/
	static public function empty(shape:Dynamic, dtype:Dynamic, ?init:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a non-initialized tensor with the same shape and dtype as x.
		
		Args:
		  x: A Tensor.
		  init: Initialize the returned tensor with the default value of
		    x.dtype(), if True. Otherwise, do not initialize. Defaults to
		    None.
		
		Returns:
		  A tensor y, whose dtype and shape are the same as those of x.
		  y is guaranteed not to be an alias of x. Upon return, y may contain
		  arbitrary data.
	**/
	static public function empty_like(x:Dynamic, ?init:Dynamic):Dynamic;
	/**
		Applies an inplace add on input x at index i with value v.
		
		Note that this function is not actually inplace - it allocates
		a copy of x.  The utility is not avoiding memory copies but rather
		specifying a sparse update.
		
		If i is None, x and v must be the same shape. Computes
		  y = x; y += v;
		If i is a scalar, x has a rank 1 higher than v's. Computes
		  y = x; y[i, :] += v;
		Otherwise, x and v must have the same rank. Computes
		  y = x; y[i, :] += v;
		
		Args:
		  x: A Tensor.
		  i: None, a scalar or a vector.
		  v: A Tensor.
		
		Returns:
		  Returns y, which is guaranteed not to be an alias of x.
	**/
	static public function inplace_add(x:Dynamic, i:Dynamic, v:Dynamic):Dynamic;
	/**
		Applies an inplace sub on input x at index i with value v.
		
		Note that this function is not actually inplace - it allocates
		a copy of x.  The utility is not avoiding memory copies but rather
		specifying a sparse update.
		
		If i is None, x and v must be the same shape. Computes
		  y = x; y -= v;
		If i is a scalar, x has a rank 1 higher than v's. Computes
		  y = x; y[i, :] -= v;
		Otherwise, x and v must have the same rank. Computes
		  y = x; y[i, :] -= v;
		
		Args:
		  x: A Tensor.
		  i: None, a scalar or a vector.
		  v: A Tensor.
		
		Returns:
		  Returns y, which is guaranteed not to be an alias of x.
	**/
	static public function inplace_sub(x:Dynamic, i:Dynamic, v:Dynamic):Dynamic;
	/**
		Applies an inplace update on input x at index i with value v.
		
		Note that this function is not actually inplace - it allocates
		a copy of x.  The utility is not avoiding memory copies but rather
		specifying a sparse update.
		
		If i is None, x and v must be the same shape. Computes
		  y = x; y = v;
		If i is a scalar, x has a rank 1 higher than v's. Computes
		  y = x; y[i, :] = v;
		Otherwise, x and v must have the same rank. Computes
		  y = x; y[i, :] = v;
		
		Args:
		  x: A Tensor.
		  i: None, a scalar or a vector.
		  v: A Tensor.
		
		Returns:
		  Returns y, which is guaranteed not to be an alias of x.
	**/
	static public function inplace_update(x:Dynamic, i:Dynamic, v:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}
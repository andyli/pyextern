/* This file is generated, do not edit! */
package tensorflow.python.ops.clip_ops;
@:pythonImport("tensorflow.python.ops.clip_ops") extern class Clip_ops_Module {
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
		Clips tensor values to a maximum average L2-norm.
		
		Given a tensor `t`, and a maximum clip value `clip_norm`, this operation
		normalizes `t` so that its average L2-norm is less than or equal to
		`clip_norm`. Specifically, if the average L2-norm is already less than or
		equal to `clip_norm`, then `t` is not modified. If the average L2-norm is
		greater than `clip_norm`, then this operation returns a tensor of the same
		type and shape as `t` with its values set to:
		
		`t * clip_norm / l2norm_avg(t)`
		
		In this case, the average L2-norm of the output tensor is `clip_norm`.
		
		This operation is typically used to clip gradients before applying them with
		an optimizer.
		
		Args:
		  t: A `Tensor`.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. A maximum clipping value.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor`.
	**/
	static public function clip_by_average_norm(t:Dynamic, clip_norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips values of multiple tensors by the ratio of the sum of their norms.
		
		Given a tuple or list of tensors `t_list`, and a clipping ratio `clip_norm`,
		this operation returns a list of clipped tensors `list_clipped`
		and the global norm (`global_norm`) of all tensors in `t_list`. Optionally,
		if you've already computed the global norm for `t_list`, you can specify
		the global norm with `use_norm`.
		
		To perform the clipping, the values `t_list[i]` are set to:
		
		    t_list[i] * clip_norm / max(global_norm, clip_norm)
		
		where:
		
		    global_norm = sqrt(sum([l2norm(t)**2 for t in t_list]))
		
		If `clip_norm > global_norm` then the entries in `t_list` remain as they are,
		otherwise they're all shrunk by the global ratio.
		
		Any of the entries of `t_list` that are of type `None` are ignored.
		
		This is the correct way to perform gradient clipping (for example, see
		[Pascanu et al., 2012](http://arxiv.org/abs/1211.5063)
		([pdf](http://arxiv.org/pdf/1211.5063.pdf))).
		
		However, it is slower than `clip_by_norm()` because all the parameters must be
		ready before the clipping operation can be performed.
		
		Args:
		  t_list: A tuple or list of mixed `Tensors`, `IndexedSlices`, or None.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. The clipping ratio.
		  use_norm: A 0-D (scalar) `Tensor` of type `float` (optional). The global
		    norm to use. If not provided, `global_norm()` is used to compute the norm.
		  name: A name for the operation (optional).
		
		Returns:
		  list_clipped: A list of `Tensors` of the same type as `list_t`.
		  global_norm: A 0-D (scalar) `Tensor` representing the global norm.
		
		Raises:
		  TypeError: If `t_list` is not a sequence.
	**/
	static public function clip_by_global_norm(t_list:Dynamic, clip_norm:Dynamic, ?use_norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips tensor values to a maximum L2-norm.
		
		Given a tensor `t`, and a maximum clip value `clip_norm`, this operation
		normalizes `t` so that its L2-norm is less than or equal to `clip_norm`,
		along the dimensions given in `axes`. Specifically, in the default case
		where all dimensions are used for calculation, if the L2-norm of `t` is
		already less than or equal to `clip_norm`, then `t` is not modified. If
		the L2-norm is greater than `clip_norm`, then this operation returns a
		tensor of the same type and shape as `t` with its values set to:
		
		`t * clip_norm / l2norm(t)`
		
		In this case, the L2-norm of the output tensor is `clip_norm`.
		
		As another example, if `t` is a matrix and `axes == [1]`, then each row
		of the output will have L2-norm equal to `clip_norm`. If `axes == [0]`
		instead, each column of the output will be clipped.
		
		This operation is typically used to clip gradients before applying them with
		an optimizer.
		
		Args:
		  t: A `Tensor`.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. A maximum clipping value.
		  axes: A 1-D (vector) `Tensor` of type int32 containing the dimensions
		    to use for computing the L2-norm. If `None` (the default), uses all
		    dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor`.
	**/
	static public function clip_by_norm(t:Dynamic, clip_norm:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips tensor values to a specified min and max.
		
		Given a tensor `t`, this operation returns a tensor of the same type and
		shape as `t` with its values clipped to `clip_value_min` and `clip_value_max`.
		Any values less than `clip_value_min` are set to `clip_value_min`. Any values
		greater than `clip_value_max` are set to `clip_value_max`.
		
		Args:
		  t: A `Tensor`.
		  clip_value_min: A 0-D (scalar) `Tensor`. The minimum value to clip by.
		  clip_value_max: A 0-D (scalar) `Tensor`. The maximum value to clip by.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor`.
	**/
	static public function clip_by_value(t:Dynamic, clip_value_min:Dynamic, clip_value_max:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Computes the global norm of multiple tensors.
		
		Given a tuple or list of tensors `t_list`, this operation returns the
		global norm of the elements in all tensors in `t_list`. The global norm is
		computed as:
		
		`global_norm = sqrt(sum([l2norm(t)**2 for t in t_list]))`
		
		Any entries in `t_list` that are of type None are ignored.
		
		Args:
		  t_list: A tuple or list of mixed `Tensors`, `IndexedSlices`, or None.
		  name: A name for the operation (optional).
		
		Returns:
		  A 0-D (scalar) `Tensor` of type `float`.
		
		Raises:
		  TypeError: If `t_list` is not a sequence.
	**/
	static public function global_norm(t_list:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}
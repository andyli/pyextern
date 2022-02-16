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
	/**
		Returns grad of clip_by_value.
	**/
	static public function _clip_by_value_grad(op:Dynamic, grad:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Clips tensor values to a maximum average L2-norm. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		clip_by_average_norm is deprecated in TensorFlow 2.0. Please use clip_by_norm(t, clip_norm * tf.cast(tf.size(t), tf.float32), name) instead.
		
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
		
		If `global_norm == infinity` then the entries in `t_list` are all set to `NaN`
		to signal that an error occurred.
		
		Any of the entries of `t_list` that are of type `None` are ignored.
		
		This is the correct way to perform gradient clipping (Pascanu et al., 2012).
		
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
		
		References:
		  On the difficulty of training Recurrent Neural Networks:
		    [Pascanu et al., 2012](http://proceedings.mlr.press/v28/pascanu13.html)
		    ([pdf](http://proceedings.mlr.press/v28/pascanu13.pdf))
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
		of the output will have L2-norm less than or equal to `clip_norm`. If
		`axes == [0]` instead, each column of the output will be clipped.
		
		Code example:
		
		>>> some_nums = tf.constant([[1, 2, 3, 4, 5]], dtype=tf.float32)
		>>> tf.clip_by_norm(some_nums, 2.0).numpy()
		array([[0.26967996, 0.5393599 , 0.80903983, 1.0787199 , 1.3483998 ]],
		      dtype=float32)
		
		This operation is typically used to clip gradients before applying them with
		an optimizer.  Most gradient data is a collection of different shaped tensors
		for different parts of the model.  Thus, this is a common usage:
		
		```
		# Get your gradients after training
		loss_value, grads = grad(model, features, labels)
		
		# Apply some clipping
		grads = [tf.clip_by_norm(g, norm)
		             for g in grads]
		
		# Continue on with training
		optimizer.apply_gradients(grads)
		```
		
		Args:
		  t: A `Tensor` or `IndexedSlices`.  This must be a floating point type.
		  clip_norm: A 0-D (scalar) `Tensor` > 0. A maximum clipping value, also
		    floating point
		  axes: A 1-D (vector) `Tensor` of type int32 containing the dimensions
		    to use for computing the L2-norm. If `None` (the default), uses all
		    dimensions.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor` or `IndexedSlices`.
		
		Raises:
		  ValueError: If the clip_norm tensor is not a 0-D scalar tensor.
		  TypeError: If dtype of the input is not a floating point or
		    complex type.
	**/
	static public function clip_by_norm(t:Dynamic, clip_norm:Dynamic, ?axes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clips tensor values to a specified min and max.
		
		Given a tensor `t`, this operation returns a tensor of the same type and
		shape as `t` with its values clipped to `clip_value_min` and `clip_value_max`.
		Any values less than `clip_value_min` are set to `clip_value_min`. Any values
		greater than `clip_value_max` are set to `clip_value_max`.
		
		Note: `clip_value_min` needs to be smaller or equal to `clip_value_max` for
		correct results.
		
		For example:
		
		Basic usage passes a scalar as the min and max value.
		
		>>> t = tf.constant([[-10., -1., 0.], [0., 2., 10.]])
		>>> t2 = tf.clip_by_value(t, clip_value_min=-1, clip_value_max=1)
		>>> t2.numpy()
		array([[-1., -1.,  0.],
		       [ 0.,  1.,  1.]], dtype=float32)
		
		The min and max can be the same size as `t`, or broadcastable to that size.
		
		>>> t = tf.constant([[-1, 0., 10.], [-1, 0, 10]])
		>>> clip_min = [[2],[1]]
		>>> t3 = tf.clip_by_value(t, clip_value_min=clip_min, clip_value_max=100)
		>>> t3.numpy()
		array([[ 2.,  2., 10.],
		       [ 1.,  1., 10.]], dtype=float32)
		
		Broadcasting fails, intentionally, if you would expand the dimensions of `t`
		
		>>> t = tf.constant([[-1, 0., 10.], [-1, 0, 10]])
		>>> clip_min = [[[2, 1]]] # Has a third axis
		>>> t4 = tf.clip_by_value(t, clip_value_min=clip_min, clip_value_max=100)
		Traceback (most recent call last):
		...
		InvalidArgumentError: Incompatible shapes: [2,3] vs. [1,1,2]
		
		It throws a `TypeError` if you try to clip an `int` to a `float` value
		(`tf.cast` the input to `float` first).
		
		>>> t = tf.constant([[1, 2], [3, 4]], dtype=tf.int32)
		>>> t5 = tf.clip_by_value(t, clip_value_min=-3.1, clip_value_max=3.1)
		Traceback (most recent call last):
		...
		TypeError: Cannot convert ...
		
		
		Args:
		  t: A `Tensor` or `IndexedSlices`.
		  clip_value_min: The minimum value to clip to. A scalar `Tensor` or one that
		    is broadcastable to the shape of `t`.
		  clip_value_max: The maximum value to clip to. A scalar `Tensor` or one that
		    is broadcastable to the shape of `t`.
		  name: A name for the operation (optional).
		
		Returns:
		  A clipped `Tensor` or `IndexedSlices`.
		
		Raises:
		  `tf.errors.InvalidArgumentError`: If the clip tensors would trigger array
		    broadcasting that would make the returned tensor larger than the input.
		  TypeError: If dtype of the input is `int32` and dtype of
		    the `clip_value_min` or `clip_value_max` is `float32`
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
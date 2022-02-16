/* This file is generated, do not edit! */
package tensorflow.python.ops.numpy_ops.np_array_ops;
@:pythonImport("tensorflow.python.ops.numpy_ops.np_array_ops") extern class Np_array_ops_Module {
	static public var _SLICE_ERORR : Dynamic;
	static public var _TO_FLOAT : Dynamic;
	static public var _TO_INT_ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Main implementation of np.array().
	**/
	static public function _array_internal(val:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?ndmin:Dynamic):Dynamic;
	/**
		Helper function to parse idx as an index.
		
		Args:
		  idx: index
		  need_scalar: If idx needs to be a scalar value.
		
		Returns:
		  A pair, (indx, bool). First one is the parsed index and can be a tensor,
		  or scalar integer / Dimension. Second one is True if rank is known to be 0.
		
		Raises:
		  IndexError: For incorrect indices.
	**/
	static public function _as_index(idx:Dynamic, ?need_scalar:Dynamic):Dynamic;
	/**
		Convert slice_spec to tuple.
	**/
	static public function _as_spec_tuple(slice_spec:Dynamic):Dynamic;
	/**
		Reshape arrays to be at least `n`-dimensional.
		
		Args:
		  n: The minimal rank.
		  new_shape: a function that takes `n` and the old shape and returns the
		    desired new shape.
		  *arys: ndarray(s) to be reshaped.
		
		Returns:
		  The reshaped array(s).
	**/
	static public function _atleast_nd(n:Dynamic, new_shape:Dynamic, ?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		Converting boundaries of splits to sizes of splits.
		
		Args:
		  a: the array to be split.
		  boundaries: the boundaries, as in np.split.
		  axis: the axis along which to split.
		
		Returns:
		  A list of sizes of the splits, as in tf.split.
	**/
	static public function _boundaries_to_sizes(a:Dynamic, boundaries:Dynamic, axis:Dynamic):Dynamic;
	/**
		Implementation of ndarray.__getitem__.
	**/
	static public function _getitem(self:Dynamic, slice_spec:Dynamic):Dynamic;
	static public function _maybe_promote_to_int(a:Dynamic):Dynamic;
	static public function _pad_left_to(n:Dynamic, old_shape:Dynamic):Dynamic;
	static public function _promote_dtype(?arrays:python.VarArgs<Dynamic>):Dynamic;
	static public function _promote_dtype_binary(t1:Dynamic, t2:Dynamic):Dynamic;
	/**
		A general reduction function.
		
		Args:
		  tf_fn: the TF reduction function.
		  a: the array to be reduced.
		  axis: (optional) the axis along which to do the reduction. If None, all
		    dimensions are reduced.
		  dtype: (optional) the dtype of the result.
		  keepdims: (optional) whether to keep the reduced dimension(s).
		  promote_int: how to promote integer and bool inputs. There are three
		    choices. (1) `_TO_INT_` always promotes them to np.int_ or np.uint; (2)
		    `_TO_FLOAT` always promotes them to a float type (determined by
		    dtypes.default_float_type); (3) None: don't promote.
		  tf_bool_fn: (optional) the TF reduction function for bool inputs. It will
		    only be used if `dtype` is explicitly set to `np.bool_` or if `a`'s dtype
		    is `np.bool_` and `preserve_bool` is True.
		  preserve_bool: a flag to control whether to use `tf_bool_fn` if `a`'s dtype
		    is `np.bool_` (some reductions such as np.sum convert bools to integers,
		    while others such as np.max preserve bools.
		
		Returns:
		  An ndarray.
	**/
	static public function _reduce(tf_fn:Dynamic, a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic, ?promote_int:Dynamic, ?tf_bool_fn:Dynamic, ?preserve_bool:Dynamic):Dynamic;
	static public function _reshape_method_wrapper(a:Dynamic, ?newshape:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper function for __getitem__ and _with_index_update_helper.
		
		This function collects the indices in `slice_spec` into two buckets, which we
		can call "idx1" and "idx2" here. idx1 is intended for `strided_slice`, idx2
		`gather`.  They also correspond to "basic indices" and "advanced indices" in
		numpy.  This function supports both reading and writing at the indices. The
		reading path can be summarized as `gather(stride_slice(tensor, idx1),
		idx2)`. The writing path can be summarized as `strided_slice_update(tensor,
		idx1, scatter(strided_slice(tensor, idx1), idx2, updates))`.  (`gather` here
		means `tf.gather` or `tf.gather_nd`; `scatter` here means
		`tf.tensor_scatter_update`.)  The writing path is inefficient because it needs
		to first read out a portion (probably much larger than `updates`) of `tensor`
		using `strided_slice`, update it, and then write the portion back. An
		alternative approach is to only use `scatter`, which amounts to using the
		indexing mechanism of gather/scatter to implement
		strided_slice/strided_slice_update. This is feasible for XLA Gather/Scatter
		because they support spans (e.g. `2:5`) in indices (as begin/end pairs), but
		not TF gather/scatter because they don't support spans (except those that
		cover entire dimensions, i.e. `:`).  If we materialize spans into individual
		indices, the size of the index tensor would explode.  (Note that XLA
		Gather/Scatter have a similar problem for stride > 1 because they don't
		support strides.  Indices such as `1:2:8` will need to be materialized into
		individual indices such as [1, 3, 5, 7].)
		
		Args:
		  tensor: the tensor to be read from or write into.
		  slice_spec: the indices.
		  update_method: (optional) a member of `_UpdateMethod`, indicating how to
		    update the values (replacement, add, etc.). `None` indicates just reading.
		  updates: (optional) the new values to write into `tensor`. It must have the
		    same dtype as `tensor`.
		
		Returns:
		  The result of reading (if `update_method` is `None`) or the updated `tensor`
		  after writing.
	**/
	static public function _slice_helper(tensor:Dynamic, slice_spec:Dynamic, ?update_method:Dynamic, ?updates:Dynamic):Dynamic;
	static public function _split_on_axis(np_fun_name:Dynamic, axis:Dynamic):Dynamic;
	static public var _tf_api_constants : Dynamic;
	static public var _tf_api_constants_v1 : Dynamic;
	/**
		Implementation of ndarray._with_index_*.
	**/
	static public function _with_index_update_helper(update_method:Dynamic, a:Dynamic, slice_spec:Dynamic, updates:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		TensorFlow variant of NumPy's `all`.
		
		Unsupported arguments: `out`, `where`.
		
		See the NumPy documentation for [`numpy.all`](https://numpy.org/doc/1.16/reference/generated/numpy.all.html).
	**/
	static public function all(a:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `amax`.
		
		Unsupported arguments: `out`, `initial`, `where`.
		
		See the NumPy documentation for [`numpy.amax`](https://numpy.org/doc/1.16/reference/generated/numpy.amax.html).
	**/
	static public function amax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `amin`.
		
		Unsupported arguments: `out`, `initial`, `where`.
		
		See the NumPy documentation for [`numpy.amin`](https://numpy.org/doc/1.16/reference/generated/numpy.amin.html).
	**/
	static public function amin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `any`.
		
		Unsupported arguments: `out`, `where`.
		
		See the NumPy documentation for [`numpy.any`](https://numpy.org/doc/1.16/reference/generated/numpy.any.html).
	**/
	static public function any(a:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `arange`.
		
		Returns `step`-separated values in the range [start, stop).
		
		  Args:
		    start: Start of the interval. Included in the range.
		    stop: End of the interval. If not specified, `start` is treated as 0 and
		      `start` value is used as `stop`. If specified, it is not included in the
		      range if `step` is integer. When `step` is floating point, it may or may
		      not be included.
		    step: The difference between 2 consecutive values in the output range. It is
		      recommended to use `linspace` instead of using non-integer values for
		      `step`.
		    dtype: Optional. Type of the resulting ndarray. Could be a python type, a
		      NumPy type or a TensorFlow `DType`. If not provided, the largest type of
		      `start`, `stop`, `step` is used.
		
		  Raises:
		    ValueError: If step is zero.
		  
		
		See the NumPy documentation for [`numpy.arange`](https://numpy.org/doc/1.16/reference/generated/numpy.arange.html).
	**/
	static public function arange(start:Dynamic, ?stop:Dynamic, ?step:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `around`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.around`](https://numpy.org/doc/1.16/reference/generated/numpy.around.html).
	**/
	static public function around(a:Dynamic, ?decimals:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `array`.
		
		Since Tensors are immutable, a copy is made only if val is placed on a
		
		  different device than the current one. Even if `copy` is False, a new Tensor
		  may need to be built to satisfy `dtype` and `ndim`. This is used only if `val`
		  is an ndarray or a Tensor.
		  
		
		See the NumPy documentation for [`numpy.array`](https://numpy.org/doc/1.16/reference/generated/numpy.array.html).
	**/
	static public function array(val:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?ndmin:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `asanyarray`.
		
		See the NumPy documentation for [`numpy.asanyarray`](https://numpy.org/doc/1.16/reference/generated/numpy.asanyarray.html).
	**/
	static public function asanyarray(a:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `asarray`.
		
		See the NumPy documentation for [`numpy.asarray`](https://numpy.org/doc/1.16/reference/generated/numpy.asarray.html).
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `ascontiguousarray`.
		
		See the NumPy documentation for [`numpy.ascontiguousarray`](https://numpy.org/doc/1.16/reference/generated/numpy.ascontiguousarray.html).
	**/
	static public function ascontiguousarray(a:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `atleast_1d`.
		
		See the NumPy documentation for [`numpy.atleast_1d`](https://numpy.org/doc/1.16/reference/generated/numpy.atleast_1d.html).
	**/
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		TensorFlow variant of NumPy's `atleast_2d`.
		
		See the NumPy documentation for [`numpy.atleast_2d`](https://numpy.org/doc/1.16/reference/generated/numpy.atleast_2d.html).
	**/
	static public function atleast_2d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		TensorFlow variant of NumPy's `atleast_3d`.
		
		See the NumPy documentation for [`numpy.atleast_3d`](https://numpy.org/doc/1.16/reference/generated/numpy.atleast_3d.html).
	**/
	static public function atleast_3d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		TensorFlow variant of NumPy's `broadcast_arrays`.
		
		Unsupported arguments: `subok`.
		
		See the NumPy documentation for [`numpy.broadcast_arrays`](https://numpy.org/doc/1.16/reference/generated/numpy.broadcast_arrays.html).
	**/
	static public function broadcast_arrays(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		TensorFlow variant of NumPy's `broadcast_to`.
		
		Unsupported arguments: `subok`.
		
		See the NumPy documentation for [`numpy.broadcast_to`](https://numpy.org/doc/1.16/reference/generated/numpy.broadcast_to.html).
	**/
	static public function broadcast_to(array:Dynamic, shape:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `compress`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.compress`](https://numpy.org/doc/1.16/reference/generated/numpy.compress.html).
	**/
	static public function compress(condition:Dynamic, a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `copy`.
		
		Unsupported arguments: `order`, `subok`.
		
		See the NumPy documentation for [`numpy.copy`](https://numpy.org/doc/1.16/reference/generated/numpy.copy.html).
	**/
	static public function copy(a:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `cumprod`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.cumprod`](https://numpy.org/doc/1.16/reference/generated/numpy.cumprod.html).
	**/
	static public function cumprod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `cumsum`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.cumsum`](https://numpy.org/doc/1.16/reference/generated/numpy.cumsum.html).
	**/
	static public function cumsum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `diag`.
		
		Raises an error if input is not 1- or 2-d.
		
		See the NumPy documentation for [`numpy.diag`](https://numpy.org/doc/1.16/reference/generated/numpy.diag.html).
	**/
	static public function diag(v:Dynamic, ?k:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `diag_indices`.
		
		See the NumPy documentation for [`numpy.diag_indices`](https://numpy.org/doc/1.16/reference/generated/numpy.diag_indices.html).
	**/
	static public function diag_indices(n:Dynamic, ?ndim:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `diagflat`.
		
		See the NumPy documentation for [`numpy.diagflat`](https://numpy.org/doc/1.16/reference/generated/numpy.diagflat.html).
	**/
	static public function diagflat(v:Dynamic, ?k:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `diagonal`.
		
		See the NumPy documentation for [`numpy.diagonal`](https://numpy.org/doc/1.16/reference/generated/numpy.diagonal.html).
	**/
	static public function diagonal(a:Dynamic, ?offset:Dynamic, ?axis1:Dynamic, ?axis2:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		TensorFlow variant of NumPy's `dsplit`.
		
		See the NumPy documentation for [`numpy.dsplit`](https://numpy.org/doc/1.16/reference/generated/numpy.dsplit.html).
	**/
	static public function dsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `dstack`.
		
		See the NumPy documentation for [`numpy.dstack`](https://numpy.org/doc/1.16/reference/generated/numpy.dstack.html).
	**/
	static public function dstack(tup:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `empty`.
		
		See the NumPy documentation for [`numpy.empty`](https://numpy.org/doc/1.16/reference/generated/numpy.empty.html).
	**/
	static public function empty(shape:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `empty_like`.
		
		See the NumPy documentation for [`numpy.empty_like`](https://numpy.org/doc/1.16/reference/generated/numpy.empty_like.html).
	**/
	static public function empty_like(a:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `expand_dims`.
		
		See the NumPy documentation for [`numpy.expand_dims`](https://numpy.org/doc/1.16/reference/generated/numpy.expand_dims.html).
	**/
	static public function expand_dims(a:Dynamic, axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `eye`.
		
		Unsupported arguments: `order`, `like`.
		
		See the NumPy documentation for [`numpy.eye`](https://numpy.org/doc/1.16/reference/generated/numpy.eye.html).
	**/
	static public function eye(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `flip`.
		
		See the NumPy documentation for [`numpy.flip`](https://numpy.org/doc/1.16/reference/generated/numpy.flip.html).
	**/
	static public function flip(m:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `fliplr`.
		
		See the NumPy documentation for [`numpy.fliplr`](https://numpy.org/doc/1.16/reference/generated/numpy.fliplr.html).
	**/
	static public function fliplr(m:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `flipud`.
		
		See the NumPy documentation for [`numpy.flipud`](https://numpy.org/doc/1.16/reference/generated/numpy.flipud.html).
	**/
	static public function flipud(m:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `full`.
		
		Unsupported arguments: `order`, `like`.
		
		See the NumPy documentation for [`numpy.full`](https://numpy.org/doc/1.16/reference/generated/numpy.full.html).
	**/
	static public function full(shape:Dynamic, fill_value:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `full_like`.
		
		order, subok and shape arguments mustn't be changed.
		
		See the NumPy documentation for [`numpy.full_like`](https://numpy.org/doc/1.16/reference/generated/numpy.full_like.html).
	**/
	static public function full_like(a:Dynamic, fill_value:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?subok:Dynamic, ?shape:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `hsplit`.
		
		See the NumPy documentation for [`numpy.hsplit`](https://numpy.org/doc/1.16/reference/generated/numpy.hsplit.html).
	**/
	static public function hsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `hstack`.
		
		See the NumPy documentation for [`numpy.hstack`](https://numpy.org/doc/1.16/reference/generated/numpy.hstack.html).
	**/
	static public function hstack(tup:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `identity`.
		
		Unsupported arguments: `like`.
		
		See the NumPy documentation for [`numpy.identity`](https://numpy.org/doc/1.16/reference/generated/numpy.identity.html).
	**/
	static public function identity(n:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `imag`.
		
		See the NumPy documentation for [`numpy.imag`](https://numpy.org/doc/1.16/reference/generated/numpy.imag.html).
	**/
	static public function imag(val:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `isscalar`.
		
		Unsupported arguments: `element`.
		
		See the NumPy documentation for [`numpy.isscalar`](https://numpy.org/doc/1.16/reference/generated/numpy.isscalar.html).
	**/
	static public function isscalar(num:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `ix_`.
		
		See the NumPy documentation for [`numpy.ix_`](https://numpy.org/doc/1.16/reference/generated/numpy.ix_.html).
	**/
	static public function ix_(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		TensorFlow variant of NumPy's `mean`.
		
		Unsupported arguments: `out`, `where`.
		
		See the NumPy documentation for [`numpy.mean`](https://numpy.org/doc/1.16/reference/generated/numpy.mean.html).
	**/
	static public function mean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `moveaxis`.
		
		Raises ValueError if source, destination not in (-ndim(a), ndim(a)).
		
		See the NumPy documentation for [`numpy.moveaxis`](https://numpy.org/doc/1.16/reference/generated/numpy.moveaxis.html).
	**/
	static public function moveaxis(a:Dynamic, source:Dynamic, destination:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `ndim`.
	**/
	static public function ndim(a:Dynamic):Dynamic;
	static public var newaxis : Dynamic;
	/**
		TensorFlow variant of NumPy's `nonzero`.
		
		See the NumPy documentation for [`numpy.nonzero`](https://numpy.org/doc/1.16/reference/generated/numpy.nonzero.html).
	**/
	static public function nonzero(a:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `ones`.
		
		Unsupported arguments: `order`, `like`.
		
		See the NumPy documentation for [`numpy.ones`](https://numpy.org/doc/1.16/reference/generated/numpy.ones.html).
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `ones_like`.
		
		Unsupported arguments: `order`, `subok`, `shape`.
		
		See the NumPy documentation for [`numpy.ones_like`](https://numpy.org/doc/1.16/reference/generated/numpy.ones_like.html).
	**/
	static public function ones_like(a:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `pad`.
		
		Only supports modes 'constant', 'reflect' and 'symmetric' currently.
		
		See the NumPy documentation for [`numpy.pad`](https://numpy.org/doc/1.16/reference/generated/numpy.pad.html).
	**/
	static public function pad(array:Dynamic, pad_width:Dynamic, mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		TensorFlow variant of NumPy's `prod`.
		
		Unsupported arguments: `out`, `initial`, `where`.
		
		See the NumPy documentation for [`numpy.prod`](https://numpy.org/doc/1.16/reference/generated/numpy.prod.html).
	**/
	static public function prod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `ravel`.
		
		Unsupported arguments: `order`.
		
		See the NumPy documentation for [`numpy.ravel`](https://numpy.org/doc/1.16/reference/generated/numpy.ravel.html).
	**/
	static public function ravel(a:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `real`.
		
		See the NumPy documentation for [`numpy.real`](https://numpy.org/doc/1.16/reference/generated/numpy.real.html).
	**/
	static public function real(val:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `repeat`.
		
		See the NumPy documentation for [`numpy.repeat`](https://numpy.org/doc/1.16/reference/generated/numpy.repeat.html).
	**/
	static public function repeat(a:Dynamic, repeats:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `reshape`.
		
		order argument can only b 'C' or 'F'.
		
		See the NumPy documentation for [`numpy.reshape`](https://numpy.org/doc/1.16/reference/generated/numpy.reshape.html).
	**/
	static public function reshape(a:Dynamic, newshape:Dynamic, ?order:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `roll`.
		
		See the NumPy documentation for [`numpy.roll`](https://numpy.org/doc/1.16/reference/generated/numpy.roll.html).
	**/
	static public function roll(a:Dynamic, shift:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `rot90`.
		
		See the NumPy documentation for [`numpy.rot90`](https://numpy.org/doc/1.16/reference/generated/numpy.rot90.html).
	**/
	static public function rot90(m:Dynamic, ?k:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `select`.
		
		See the NumPy documentation for [`numpy.select`](https://numpy.org/doc/1.16/reference/generated/numpy.select.html).
	**/
	static public function select(condlist:Dynamic, choicelist:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `shape`.
		
		See the NumPy documentation for [`numpy.shape`](https://numpy.org/doc/1.18/reference/generated/numpy.shape.html).
	**/
	static public function shape(a:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `sign`.
		
		See the NumPy documentation for [`numpy.sign`](https://numpy.org/doc/1.16/reference/generated/numpy.sign.html).
	**/
	static public function sign(x:Dynamic, ?out:Dynamic, ?where:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		TensorFlow variant of NumPy's `size`.
		
		Unsupported arguments: `a`.
		
		See the NumPy documentation for [`numpy.size`](https://numpy.org/doc/1.16/reference/generated/numpy.size.html).
	**/
	static public function size(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `split`.
		
		See the NumPy documentation for [`numpy.split`](https://numpy.org/doc/1.16/reference/generated/numpy.split.html).
	**/
	static public function split(ary:Dynamic, indices_or_sections:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `squeeze`.
		
		See the NumPy documentation for [`numpy.squeeze`](https://numpy.org/doc/1.16/reference/generated/numpy.squeeze.html).
	**/
	static public function squeeze(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `stack`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.stack`](https://numpy.org/doc/1.16/reference/generated/numpy.stack.html).
	**/
	static public function stack(arrays:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `std`.
		
		Unsupported arguments: `dtype`, `out`, `ddof`, `where`.
		
		See the NumPy documentation for [`numpy.std`](https://numpy.org/doc/1.16/reference/generated/numpy.std.html).
	**/
	static public function std(a:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `sum`.
		
		Unsupported arguments: `out`, `initial`, `where`.
		
		See the NumPy documentation for [`numpy.sum`](https://numpy.org/doc/1.16/reference/generated/numpy.sum.html).
	**/
	static public function sum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `swapaxes`.
		
		See the NumPy documentation for [`numpy.swapaxes`](https://numpy.org/doc/1.16/reference/generated/numpy.swapaxes.html).
	**/
	static public function swapaxes(a:Dynamic, axis1:Dynamic, axis2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `take`.
		
		out argument is not supported, and default mode is clip.
		
		See the NumPy documentation for [`numpy.take`](https://numpy.org/doc/1.16/reference/generated/numpy.take.html).
	**/
	static public function take(a:Dynamic, indices:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `take_along_axis`.
		
		See the NumPy documentation for [`numpy.take_along_axis`](https://numpy.org/doc/1.16/reference/generated/numpy.take_along_axis.html).
	**/
	static public function take_along_axis(arr:Dynamic, indices:Dynamic, axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `transpose`.
		
		See the NumPy documentation for [`numpy.transpose`](https://numpy.org/doc/1.16/reference/generated/numpy.transpose.html).
	**/
	static public function transpose(a:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `tri`.
		
		Unsupported arguments: `like`.
		
		See the NumPy documentation for [`numpy.tri`](https://numpy.org/doc/1.16/reference/generated/numpy.tri.html).
	**/
	static public function tri(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `tril`.
		
		See the NumPy documentation for [`numpy.tril`](https://numpy.org/doc/1.16/reference/generated/numpy.tril.html).
	**/
	static public function tril(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `triu`.
		
		See the NumPy documentation for [`numpy.triu`](https://numpy.org/doc/1.16/reference/generated/numpy.triu.html).
	**/
	static public function triu(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `vander`.
		
		See the NumPy documentation for [`numpy.vander`](https://numpy.org/doc/1.16/reference/generated/numpy.vander.html).
	**/
	static public function vander(x:Dynamic, ?N:Dynamic, ?increasing:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `var`.
		
		Unsupported arguments: `where`.
		
		See the NumPy documentation for [`numpy.var`](https://numpy.org/doc/1.16/reference/generated/numpy.var.html).
	**/
	@:native("var")
	static public function _var(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `vsplit`.
		
		See the NumPy documentation for [`numpy.vsplit`](https://numpy.org/doc/1.16/reference/generated/numpy.vsplit.html).
	**/
	static public function vsplit(ary:Dynamic, indices_or_sections:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `vstack`.
		
		See the NumPy documentation for [`numpy.vstack`](https://numpy.org/doc/1.16/reference/generated/numpy.vstack.html).
	**/
	static public function vstack(tup:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `where`.
		
		Raises ValueError if exactly one of x or y is not None.
		
		See the NumPy documentation for [`numpy.where`](https://numpy.org/doc/1.16/reference/generated/numpy.where.html).
	**/
	static public function where(condition:Dynamic, ?x:Dynamic, ?y:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `zeros`.
		
		See the NumPy documentation for [`numpy.zeros`](https://numpy.org/doc/1.16/reference/generated/numpy.zeros.html).
	**/
	static public function zeros(shape:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `zeros_like`.
		
		Unsupported arguments: `order`, `subok`, `shape`.
		
		See the NumPy documentation for [`numpy.zeros_like`](https://numpy.org/doc/1.16/reference/generated/numpy.zeros_like.html).
	**/
	static public function zeros_like(a:Dynamic, ?dtype:Dynamic):Dynamic;
}
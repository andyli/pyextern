/* This file is generated, do not edit! */
package tensorflow.experimental.numpy;
@:pythonImport("tensorflow.experimental.numpy") extern class Numpy_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		TensorFlow variant of NumPy's `abs`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.abs`](https://numpy.org/doc/1.16/reference/generated/numpy.absolute.html).
	**/
	static public function abs(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `absolute`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.absolute`](https://numpy.org/doc/1.16/reference/generated/numpy.absolute.html).
	**/
	static public function absolute(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `add`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.add`](https://numpy.org/doc/1.16/reference/generated/numpy.add.html).
	**/
	static public function add(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `all`.
		
		Unsupported arguments: `out`, `where`.
		
		See the NumPy documentation for [`numpy.all`](https://numpy.org/doc/1.16/reference/generated/numpy.all.html).
	**/
	static public function all(a:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `allclose`.
		
		See the NumPy documentation for [`numpy.allclose`](https://numpy.org/doc/1.16/reference/generated/numpy.allclose.html).
	**/
	static public function allclose(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `angle`.
		
		See the NumPy documentation for [`numpy.angle`](https://numpy.org/doc/1.16/reference/generated/numpy.angle.html).
	**/
	static public function angle(z:Dynamic, ?deg:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `any`.
		
		Unsupported arguments: `out`, `where`.
		
		See the NumPy documentation for [`numpy.any`](https://numpy.org/doc/1.16/reference/generated/numpy.any.html).
	**/
	static public function any(a:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `append`.
		
		See the NumPy documentation for [`numpy.append`](https://numpy.org/doc/1.16/reference/generated/numpy.append.html).
	**/
	static public function append(arr:Dynamic, values:Dynamic, ?axis:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `arccos`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.arccos`](https://numpy.org/doc/1.16/reference/generated/numpy.arccos.html).
	**/
	static public function arccos(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `arccosh`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.arccosh`](https://numpy.org/doc/1.16/reference/generated/numpy.arccosh.html).
	**/
	static public function arccosh(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `arcsin`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.arcsin`](https://numpy.org/doc/1.16/reference/generated/numpy.arcsin.html).
	**/
	static public function arcsin(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `arcsinh`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.arcsinh`](https://numpy.org/doc/1.16/reference/generated/numpy.arcsinh.html).
	**/
	static public function arcsinh(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `arctan`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.arctan`](https://numpy.org/doc/1.16/reference/generated/numpy.arctan.html).
	**/
	static public function arctan(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `arctan2`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.arctan2`](https://numpy.org/doc/1.16/reference/generated/numpy.arctan2.html).
	**/
	static public function arctan2(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `arctanh`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.arctanh`](https://numpy.org/doc/1.16/reference/generated/numpy.arctanh.html).
	**/
	static public function arctanh(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `argmax`.
		
		Unsupported arguments: `out`, `keepdims`.
		
		See the NumPy documentation for [`numpy.argmax`](https://numpy.org/doc/1.16/reference/generated/numpy.argmax.html).
	**/
	static public function argmax(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `argmin`.
		
		Unsupported arguments: `out`, `keepdims`.
		
		See the NumPy documentation for [`numpy.argmin`](https://numpy.org/doc/1.16/reference/generated/numpy.argmin.html).
	**/
	static public function argmin(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `argsort`.
		
		See the NumPy documentation for [`numpy.argsort`](https://numpy.org/doc/1.16/reference/generated/numpy.argsort.html).
	**/
	static public function argsort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `array_equal`.
		
		Unsupported arguments: `equal_nan`.
		
		See the NumPy documentation for [`numpy.array_equal`](https://numpy.org/doc/1.16/reference/generated/numpy.array_equal.html).
	**/
	static public function array_equal(a1:Dynamic, a2:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `average`.
		
		See the NumPy documentation for [`numpy.average`](https://numpy.org/doc/1.16/reference/generated/numpy.average.html).
	**/
	static public function average(a:Dynamic, ?axis:Dynamic, ?weights:Dynamic, ?returned:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `bitwise_and`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.bitwise_and`](https://numpy.org/doc/1.16/reference/generated/numpy.bitwise_and.html).
	**/
	static public function bitwise_and(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `bitwise_not`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.bitwise_not`](https://numpy.org/doc/1.16/reference/generated/numpy.invert.html).
	**/
	static public function bitwise_not(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `bitwise_or`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.bitwise_or`](https://numpy.org/doc/1.16/reference/generated/numpy.bitwise_or.html).
	**/
	static public function bitwise_or(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `bitwise_xor`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.bitwise_xor`](https://numpy.org/doc/1.16/reference/generated/numpy.bitwise_xor.html).
	**/
	static public function bitwise_xor(x1:Dynamic, x2:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `cbrt`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.cbrt`](https://numpy.org/doc/1.16/reference/generated/numpy.cbrt.html).
	**/
	static public function cbrt(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `ceil`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.ceil`](https://numpy.org/doc/1.16/reference/generated/numpy.ceil.html).
	**/
	static public function ceil(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `clip`.
		
		Unsupported arguments: `out`, `kwargs`.
		
		See the NumPy documentation for [`numpy.clip`](https://numpy.org/doc/1.16/reference/generated/numpy.clip.html).
	**/
	static public function clip(a:Dynamic, a_min:Dynamic, a_max:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `compress`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.compress`](https://numpy.org/doc/1.16/reference/generated/numpy.compress.html).
	**/
	static public function compress(condition:Dynamic, a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `concatenate`.
		
		See the NumPy documentation for [`numpy.concatenate`](https://numpy.org/doc/1.16/reference/generated/numpy.concatenate.html).
	**/
	static public function concatenate(arys:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `conj`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.conj`](https://numpy.org/doc/1.16/reference/generated/numpy.conj.html).
	**/
	static public function conj(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `conjugate`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.conjugate`](https://numpy.org/doc/1.16/reference/generated/numpy.conj.html).
	**/
	static public function conjugate(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `copy`.
		
		Unsupported arguments: `order`, `subok`.
		
		See the NumPy documentation for [`numpy.copy`](https://numpy.org/doc/1.16/reference/generated/numpy.copy.html).
	**/
	static public function copy(a:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `cos`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.cos`](https://numpy.org/doc/1.16/reference/generated/numpy.cos.html).
	**/
	static public function cos(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `cosh`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.cosh`](https://numpy.org/doc/1.16/reference/generated/numpy.cosh.html).
	**/
	static public function cosh(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `count_nonzero`.
		
		Unsupported arguments: `keepdims`.
		
		See the NumPy documentation for [`numpy.count_nonzero`](https://numpy.org/doc/1.16/reference/generated/numpy.count_nonzero.html).
	**/
	static public function count_nonzero(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `cross`.
		
		See the NumPy documentation for [`numpy.cross`](https://numpy.org/doc/1.16/reference/generated/numpy.cross.html).
	**/
	static public function cross(a:Dynamic, b:Dynamic, ?axisa:Dynamic, ?axisb:Dynamic, ?axisc:Dynamic, ?axis:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `deg2rad`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.deg2rad`](https://numpy.org/doc/1.16/reference/generated/numpy.deg2rad.html).
	**/
	static public function deg2rad(x:Dynamic):Dynamic;
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
	/**
		TensorFlow variant of NumPy's `diff`.
		
		Unsupported arguments: `prepend`, `append`.
		
		See the NumPy documentation for [`numpy.diff`](https://numpy.org/doc/1.16/reference/generated/numpy.diff.html).
	**/
	static public function diff(a:Dynamic, ?n:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `divide`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.divide`](https://numpy.org/doc/1.16/reference/generated/numpy.divide.html).
	**/
	static public function divide(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `divmod`.
		
		Unsupported arguments: `out1`, `out2`, `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.divmod`](https://numpy.org/doc/1.16/reference/generated/numpy.divmod.html).
	**/
	static public function divmod(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `dot`.
		
		See the NumPy documentation for [`numpy.dot`](https://numpy.org/doc/1.16/reference/generated/numpy.dot.html).
	**/
	static public function dot(a:Dynamic, b:Dynamic):Dynamic;
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
	static public var e : Dynamic;
	/**
		TensorFlow variant of NumPy's `einsum`.
		
		See the NumPy documentation for [`numpy.einsum`](https://numpy.org/doc/1.16/reference/generated/numpy.einsum.html).
	**/
	static public function einsum(subscripts:Dynamic, ?operands:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		TensorFlow variant of NumPy's `equal`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.equal`](https://numpy.org/doc/1.16/reference/generated/numpy.equal.html).
	**/
	static public function equal(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `exp`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.exp`](https://numpy.org/doc/1.16/reference/generated/numpy.exp.html).
	**/
	static public function exp(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `exp2`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.exp2`](https://numpy.org/doc/1.16/reference/generated/numpy.exp2.html).
	**/
	static public function exp2(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `expand_dims`.
		
		See the NumPy documentation for [`numpy.expand_dims`](https://numpy.org/doc/1.16/reference/generated/numpy.expand_dims.html).
	**/
	static public function expand_dims(a:Dynamic, axis:Dynamic):Dynamic;
	/**
		Enable NumPy behavior on Tensors.
		
		Enabling NumPy behavior has three effects:
		* It adds to `tf.Tensor` some common NumPy methods such as `T`,
		  `reshape` and `ravel`.
		* It changes dtype promotion in `tf.Tensor` operators to be
		  compatible with NumPy. For example,
		  `tf.ones([], tf.int32) + tf.ones([], tf.float32)` used to throw a
		  "dtype incompatible" error, but after this it will return a
		  float64 tensor (obeying NumPy's promotion rules).
		* It enhances `tf.Tensor`'s indexing capability to be on par with
		  [NumPy's](https://numpy.org/doc/stable/reference/arrays.indexing.html).
		
		Args:
		  prefer_float32: Controls whether dtype inference will use float32
		  for Python floats, or float64 (the default and the
		  NumPy-compatible behavior).
	**/
	static public function experimental_enable_numpy_behavior(?prefer_float32:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `expm1`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.expm1`](https://numpy.org/doc/1.16/reference/generated/numpy.expm1.html).
	**/
	static public function expm1(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `eye`.
		
		Unsupported arguments: `order`, `like`.
		
		See the NumPy documentation for [`numpy.eye`](https://numpy.org/doc/1.16/reference/generated/numpy.eye.html).
	**/
	static public function eye(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `fabs`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.fabs`](https://numpy.org/doc/1.16/reference/generated/numpy.fabs.html).
	**/
	static public function fabs(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `finfo`.
		
		Note that currently it just forwards to the numpy namesake, while
		  tensorflow and numpy dtypes may have different properties.
		
		See the NumPy documentation for [`numpy.finfo`](https://numpy.org/doc/1.16/reference/generated/numpy.finfo.html).
	**/
	static public function finfo(dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `fix`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.fix`](https://numpy.org/doc/1.16/reference/generated/numpy.fix.html).
	**/
	static public function fix(x:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `float_power`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.float_power`](https://numpy.org/doc/1.16/reference/generated/numpy.float_power.html).
	**/
	static public function float_power(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `floor`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.floor`](https://numpy.org/doc/1.16/reference/generated/numpy.floor.html).
	**/
	static public function floor(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `floor_divide`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.floor_divide`](https://numpy.org/doc/1.16/reference/generated/numpy.floor_divide.html).
	**/
	static public function floor_divide(x1:Dynamic, x2:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `gcd`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.gcd`](https://numpy.org/doc/1.16/reference/generated/numpy.gcd.html).
	**/
	static public function gcd(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `geomspace`.
		
		See the NumPy documentation for [`numpy.geomspace`](https://numpy.org/doc/1.16/reference/generated/numpy.geomspace.html).
	**/
	static public function geomspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `greater`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.greater`](https://numpy.org/doc/1.16/reference/generated/numpy.greater.html).
	**/
	static public function greater(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `greater_equal`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.greater_equal`](https://numpy.org/doc/1.16/reference/generated/numpy.greater_equal.html).
	**/
	static public function greater_equal(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `heaviside`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.heaviside`](https://numpy.org/doc/1.16/reference/generated/numpy.heaviside.html).
	**/
	static public function heaviside(x1:Dynamic, x2:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `hypot`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.hypot`](https://numpy.org/doc/1.16/reference/generated/numpy.hypot.html).
	**/
	static public function hypot(x1:Dynamic, x2:Dynamic):Dynamic;
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
	static public var inf : Dynamic;
	/**
		TensorFlow variant of NumPy's `inner`.
		
		See the NumPy documentation for [`numpy.inner`](https://numpy.org/doc/1.16/reference/generated/numpy.inner.html).
	**/
	static public function inner(a:Dynamic, b:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `isclose`.
		
		See the NumPy documentation for [`numpy.isclose`](https://numpy.org/doc/1.16/reference/generated/numpy.isclose.html).
	**/
	static public function isclose(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `iscomplex`.
		
		See the NumPy documentation for [`numpy.iscomplex`](https://numpy.org/doc/1.16/reference/generated/numpy.iscomplex.html).
	**/
	static public function iscomplex(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `iscomplexobj`.
		
		See the NumPy documentation for [`numpy.iscomplexobj`](https://numpy.org/doc/1.16/reference/generated/numpy.iscomplexobj.html).
	**/
	static public function iscomplexobj(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `isfinite`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.isfinite`](https://numpy.org/doc/1.16/reference/generated/numpy.isfinite.html).
	**/
	static public function isfinite(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `isinf`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.isinf`](https://numpy.org/doc/1.16/reference/generated/numpy.isinf.html).
	**/
	static public function isinf(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `isnan`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.isnan`](https://numpy.org/doc/1.16/reference/generated/numpy.isnan.html).
	**/
	static public function isnan(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `isneginf`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.isneginf`](https://numpy.org/doc/1.16/reference/generated/numpy.isneginf.html).
	**/
	static public function isneginf(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `isposinf`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.isposinf`](https://numpy.org/doc/1.16/reference/generated/numpy.isposinf.html).
	**/
	static public function isposinf(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `isreal`.
		
		See the NumPy documentation for [`numpy.isreal`](https://numpy.org/doc/1.16/reference/generated/numpy.isreal.html).
	**/
	static public function isreal(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `isrealobj`.
		
		See the NumPy documentation for [`numpy.isrealobj`](https://numpy.org/doc/1.16/reference/generated/numpy.isrealobj.html).
	**/
	static public function isrealobj(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `isscalar`.
		
		Unsupported arguments: `element`.
		
		See the NumPy documentation for [`numpy.isscalar`](https://numpy.org/doc/1.16/reference/generated/numpy.isscalar.html).
	**/
	static public function isscalar(num:Dynamic):Dynamic;
	/**
		Returns True if first argument is a typecode lower/equal in type hierarchy.
		
		This is like the builtin :func:`issubclass`, but for `dtype`\ s.
		
		Parameters
		----------
		arg1, arg2 : dtype_like
		    `dtype` or object coercible to one
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		:ref:`arrays.scalars` : Overview of the numpy type hierarchy.
		issubsctype, issubclass_
		
		Examples
		--------
		`issubdtype` can be used to check the type of arrays:
		
		>>> ints = np.array([1, 2, 3], dtype=np.int32)
		>>> np.issubdtype(ints.dtype, np.integer)
		True
		>>> np.issubdtype(ints.dtype, np.floating)
		False
		
		>>> floats = np.array([1, 2, 3], dtype=np.float32)
		>>> np.issubdtype(floats.dtype, np.integer)
		False
		>>> np.issubdtype(floats.dtype, np.floating)
		True
		
		Similar types of different sizes are not subdtypes of each other:
		
		>>> np.issubdtype(np.float64, np.float32)
		False
		>>> np.issubdtype(np.float32, np.float64)
		False
		
		but both are subtypes of `floating`:
		
		>>> np.issubdtype(np.float64, np.floating)
		True
		>>> np.issubdtype(np.float32, np.floating)
		True
		
		For convenience, dtype-like objects are allowed too:
		
		>>> np.issubdtype('S1', np.string_)
		True
		>>> np.issubdtype('i4', np.signedinteger)
		True
	**/
	static public function issubdtype(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		TensorFlow variant of NumPy's `ix_`.
		
		See the NumPy documentation for [`numpy.ix_`](https://numpy.org/doc/1.16/reference/generated/numpy.ix_.html).
	**/
	static public function ix_(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		TensorFlow variant of NumPy's `kron`.
		
		See the NumPy documentation for [`numpy.kron`](https://numpy.org/doc/1.16/reference/generated/numpy.kron.html).
	**/
	static public function kron(a:Dynamic, b:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `lcm`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.lcm`](https://numpy.org/doc/1.16/reference/generated/numpy.lcm.html).
	**/
	static public function lcm(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `less`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.less`](https://numpy.org/doc/1.16/reference/generated/numpy.less.html).
	**/
	static public function less(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `less_equal`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.less_equal`](https://numpy.org/doc/1.16/reference/generated/numpy.less_equal.html).
	**/
	static public function less_equal(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `linspace`.
		
		See the NumPy documentation for [`numpy.linspace`](https://numpy.org/doc/1.16/reference/generated/numpy.linspace.html).
	**/
	static public function linspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?retstep:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `log`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.log`](https://numpy.org/doc/1.16/reference/generated/numpy.log.html).
	**/
	static public function log(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `log10`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.log10`](https://numpy.org/doc/1.16/reference/generated/numpy.log10.html).
	**/
	static public function log10(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `log1p`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.log1p`](https://numpy.org/doc/1.16/reference/generated/numpy.log1p.html).
	**/
	static public function log1p(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `log2`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.log2`](https://numpy.org/doc/1.16/reference/generated/numpy.log2.html).
	**/
	static public function log2(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `logaddexp`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.logaddexp`](https://numpy.org/doc/1.16/reference/generated/numpy.logaddexp.html).
	**/
	static public function logaddexp(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `logaddexp2`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.logaddexp2`](https://numpy.org/doc/1.16/reference/generated/numpy.logaddexp2.html).
	**/
	static public function logaddexp2(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `logical_and`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.logical_and`](https://numpy.org/doc/1.16/reference/generated/numpy.logical_and.html).
	**/
	static public function logical_and(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `logical_not`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.logical_not`](https://numpy.org/doc/1.16/reference/generated/numpy.logical_not.html).
	**/
	static public function logical_not(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `logical_or`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.logical_or`](https://numpy.org/doc/1.16/reference/generated/numpy.logical_or.html).
	**/
	static public function logical_or(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `logical_xor`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.logical_xor`](https://numpy.org/doc/1.16/reference/generated/numpy.logical_xor.html).
	**/
	static public function logical_xor(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `logspace`.
		
		See the NumPy documentation for [`numpy.logspace`](https://numpy.org/doc/1.16/reference/generated/numpy.logspace.html).
	**/
	static public function logspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?base:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `matmul`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.matmul`](https://numpy.org/doc/1.16/reference/generated/numpy.matmul.html).
	**/
	static public function matmul(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `max`.
		
		Unsupported arguments: `out`, `initial`, `where`.
		
		See the NumPy documentation for [`numpy.max`](https://numpy.org/doc/1.16/reference/generated/numpy.amax.html).
	**/
	static public function max(a:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `maximum`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.maximum`](https://numpy.org/doc/1.16/reference/generated/numpy.maximum.html).
	**/
	static public function maximum(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `mean`.
		
		Unsupported arguments: `out`, `where`.
		
		See the NumPy documentation for [`numpy.mean`](https://numpy.org/doc/1.16/reference/generated/numpy.mean.html).
	**/
	static public function mean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `meshgrid`.
		
		Unsupported arguments: `copy`, `sparse`, `indexing`.
		
		This currently requires copy=True and sparse=False.
		
		See the NumPy documentation for [`numpy.meshgrid`](https://numpy.org/doc/1.16/reference/generated/numpy.meshgrid.html).
	**/
	static public function meshgrid(?xi:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		TensorFlow variant of NumPy's `min`.
		
		Unsupported arguments: `out`, `initial`, `where`.
		
		See the NumPy documentation for [`numpy.min`](https://numpy.org/doc/1.16/reference/generated/numpy.amin.html).
	**/
	static public function min(a:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `minimum`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.minimum`](https://numpy.org/doc/1.16/reference/generated/numpy.minimum.html).
	**/
	static public function minimum(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `mod`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.mod`](https://numpy.org/doc/1.16/reference/generated/numpy.mod.html).
	**/
	static public function mod(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `moveaxis`.
		
		Raises ValueError if source, destination not in (-ndim(a), ndim(a)).
		
		See the NumPy documentation for [`numpy.moveaxis`](https://numpy.org/doc/1.16/reference/generated/numpy.moveaxis.html).
	**/
	static public function moveaxis(a:Dynamic, source:Dynamic, destination:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `multiply`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.multiply`](https://numpy.org/doc/1.16/reference/generated/numpy.multiply.html).
	**/
	static public function multiply(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `nanmean`.
		
		Unsupported arguments: `out`, `where`.
		
		See the NumPy documentation for [`numpy.nanmean`](https://numpy.org/doc/1.16/reference/generated/numpy.nanmean.html).
	**/
	static public function nanmean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `nanprod`.
		
		Unsupported arguments: `out`, `initial`, `where`.
		
		See the NumPy documentation for [`numpy.nanprod`](https://numpy.org/doc/1.16/reference/generated/numpy.nanprod.html).
	**/
	static public function nanprod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `nansum`.
		
		Unsupported arguments: `out`, `initial`, `where`.
		
		See the NumPy documentation for [`numpy.nansum`](https://numpy.org/doc/1.16/reference/generated/numpy.nansum.html).
	**/
	static public function nansum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `ndim`.
	**/
	static public function ndim(a:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `negative`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.negative`](https://numpy.org/doc/1.16/reference/generated/numpy.negative.html).
	**/
	static public function negative(x:Dynamic):Dynamic;
	static public var newaxis : Dynamic;
	/**
		TensorFlow variant of NumPy's `nextafter`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.nextafter`](https://numpy.org/doc/1.16/reference/generated/numpy.nextafter.html).
	**/
	static public function nextafter(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `nonzero`.
		
		See the NumPy documentation for [`numpy.nonzero`](https://numpy.org/doc/1.16/reference/generated/numpy.nonzero.html).
	**/
	static public function nonzero(a:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `not_equal`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.not_equal`](https://numpy.org/doc/1.16/reference/generated/numpy.not_equal.html).
	**/
	static public function not_equal(x1:Dynamic, x2:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `outer`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.outer`](https://numpy.org/doc/1.16/reference/generated/numpy.outer.html).
	**/
	static public function outer(a:Dynamic, b:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `pad`.
		
		Only supports modes 'constant', 'reflect' and 'symmetric' currently.
		
		See the NumPy documentation for [`numpy.pad`](https://numpy.org/doc/1.16/reference/generated/numpy.pad.html).
	**/
	static public function pad(array:Dynamic, pad_width:Dynamic, mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var pi : Dynamic;
	/**
		TensorFlow variant of NumPy's `polyval`.
		
		See the NumPy documentation for [`numpy.polyval`](https://numpy.org/doc/1.16/reference/generated/numpy.polyval.html).
	**/
	static public function polyval(p:Dynamic, x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `positive`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.positive`](https://numpy.org/doc/1.16/reference/generated/numpy.positive.html).
	**/
	static public function positive(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `power`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.power`](https://numpy.org/doc/1.16/reference/generated/numpy.power.html).
	**/
	static public function power(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `prod`.
		
		Unsupported arguments: `out`, `initial`, `where`.
		
		See the NumPy documentation for [`numpy.prod`](https://numpy.org/doc/1.16/reference/generated/numpy.prod.html).
	**/
	static public function prod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `promote_types`.
		
		See the NumPy documentation for [`numpy.promote_types`](https://numpy.org/doc/1.16/reference/generated/numpy.promote_types.html).
	**/
	static public function promote_types(type1:Dynamic, type2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `ptp`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.ptp`](https://numpy.org/doc/1.16/reference/generated/numpy.ptp.html).
	**/
	static public function ptp(a:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `rad2deg`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.rad2deg`](https://numpy.org/doc/1.16/reference/generated/numpy.rad2deg.html).
	**/
	static public function rad2deg(x:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `reciprocal`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.reciprocal`](https://numpy.org/doc/1.16/reference/generated/numpy.reciprocal.html).
	**/
	static public function reciprocal(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `remainder`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.remainder`](https://numpy.org/doc/1.16/reference/generated/numpy.remainder.html).
	**/
	static public function remainder(x1:Dynamic, x2:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `result_type`.
		
		See the NumPy documentation for [`numpy.result_type`](https://numpy.org/doc/1.16/reference/generated/numpy.result_type.html).
	**/
	static public function result_type(?arrays_and_dtypes:python.VarArgs<Dynamic>):Dynamic;
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
		TensorFlow variant of NumPy's `round`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.round`](https://numpy.org/doc/1.16/reference/generated/numpy.around.html).
	**/
	static public function round(a:Dynamic, ?decimals:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `signbit`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.signbit`](https://numpy.org/doc/1.16/reference/generated/numpy.signbit.html).
	**/
	static public function signbit(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `sin`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.sin`](https://numpy.org/doc/1.16/reference/generated/numpy.sin.html).
	**/
	static public function sin(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `sinc`.
		
		See the NumPy documentation for [`numpy.sinc`](https://numpy.org/doc/1.16/reference/generated/numpy.sinc.html).
	**/
	static public function sinc(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `sinh`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.sinh`](https://numpy.org/doc/1.16/reference/generated/numpy.sinh.html).
	**/
	static public function sinh(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `size`.
		
		Unsupported arguments: `a`.
		
		See the NumPy documentation for [`numpy.size`](https://numpy.org/doc/1.16/reference/generated/numpy.size.html).
	**/
	static public function size(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `sort`.
		
		See the NumPy documentation for [`numpy.sort`](https://numpy.org/doc/1.16/reference/generated/numpy.sort.html).
	**/
	static public function sort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `split`.
		
		See the NumPy documentation for [`numpy.split`](https://numpy.org/doc/1.16/reference/generated/numpy.split.html).
	**/
	static public function split(ary:Dynamic, indices_or_sections:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `sqrt`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.sqrt`](https://numpy.org/doc/1.16/reference/generated/numpy.sqrt.html).
	**/
	static public function sqrt(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `square`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.square`](https://numpy.org/doc/1.16/reference/generated/numpy.square.html).
	**/
	static public function square(x:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `subtract`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.subtract`](https://numpy.org/doc/1.16/reference/generated/numpy.subtract.html).
	**/
	static public function subtract(x1:Dynamic, x2:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `tan`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.tan`](https://numpy.org/doc/1.16/reference/generated/numpy.tan.html).
	**/
	static public function tan(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `tanh`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.tanh`](https://numpy.org/doc/1.16/reference/generated/numpy.tanh.html).
	**/
	static public function tanh(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `tensordot`.
		
		See the NumPy documentation for [`numpy.tensordot`](https://numpy.org/doc/1.16/reference/generated/numpy.tensordot.html).
	**/
	static public function tensordot(a:Dynamic, b:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `tile`.
		
		See the NumPy documentation for [`numpy.tile`](https://numpy.org/doc/1.16/reference/generated/numpy.tile.html).
	**/
	static public function tile(a:Dynamic, reps:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `trace`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.trace`](https://numpy.org/doc/1.16/reference/generated/numpy.trace.html).
	**/
	static public function trace(a:Dynamic, ?offset:Dynamic, ?axis1:Dynamic, ?axis2:Dynamic, ?dtype:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `true_divide`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.true_divide`](https://numpy.org/doc/1.16/reference/generated/numpy.true_divide.html).
	**/
	static public function true_divide(x1:Dynamic, x2:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `vdot`.
		
		See the NumPy documentation for [`numpy.vdot`](https://numpy.org/doc/1.16/reference/generated/numpy.vdot.html).
	**/
	static public function vdot(a:Dynamic, b:Dynamic):Dynamic;
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
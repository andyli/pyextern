/* This file is generated, do not edit! */
package tensorflow.python.ops.numpy_ops.np_math_ops;
@:pythonImport("tensorflow.python.ops.numpy_ops.np_math_ops") extern class Np_math_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _argminmax(fn:Dynamic, a:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _bin_op(tf_fun:Dynamic, a:Dynamic, b:Dynamic, ?promote:Dynamic):Dynamic;
	static public function _bitwise_binary_op(tf_fn:Dynamic, x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Helper function for comparision.
	**/
	static public function _comparison(tf_fun:Dynamic, x1:Dynamic, x2:Dynamic, ?cast_bool_to_int:Dynamic):Dynamic;
	static public function _logical_binary_op(tf_fun:Dynamic, x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Helper to generate nan* functions.
	**/
	static public function _make_nan_reduction(np_fun_name:Dynamic, reduction:Dynamic, init_val:Dynamic):Dynamic;
	/**
		Computes the tf_fn(x) for each element in `x`.
		
		Args:
		  tf_fn: function that takes a single Tensor argument.
		  x: array_like. Could be an ndarray, a Tensor or any object that can be
		    converted to a Tensor using `ops.convert_to_tensor`.
		  promote_to_float: whether to cast the argument to a float dtype
		    (`np_dtypes.default_float_type`) if it is not already.
		
		Returns:
		  An ndarray with the same shape as `x`. The default output dtype is
		  determined by `np_dtypes.default_float_type`, unless x is an ndarray with a
		  floating point type, in which case the output type is same as x.dtype.
	**/
	static public function _scalar(tf_fn:Dynamic, x:Dynamic, ?promote_to_float:Dynamic):Dynamic;
	/**
		Returns the rank of the Tensor.
	**/
	static public function _tensor_ndim(self:Dynamic):Dynamic;
	/**
		Returns self, for unary operator `+`.
	**/
	static public function _tensor_pos(self:Dynamic):Dynamic;
	/**
		Returns the number of elements in this Tensor, if fully known.
	**/
	static public function _tensor_size(self:Dynamic):Dynamic;
	/**
		Returns a Tensor which is the transpose of this Tensor.
	**/
	static public function _tensor_t(self:Dynamic):Dynamic;
	static public function _tensor_tolist(self:Dynamic):Dynamic;
	static public var _tf_api_constants : Dynamic;
	static public var _tf_api_constants_v1 : Dynamic;
	static public var _tf_float_types : Dynamic;
	static public function _tf_gcd(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Wraps binary ops so they can be added as operator overloads on ndarray.
	**/
	static public function _wrap(f:Dynamic, ?reverse:Dynamic):Dynamic;
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
	static public var absolute_import : Dynamic;
	/**
		TensorFlow variant of NumPy's `add`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.add`](https://numpy.org/doc/1.16/reference/generated/numpy.add.html).
	**/
	static public function add(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `allclose`.
		
		See the NumPy documentation for [`numpy.allclose`](https://numpy.org/doc/1.16/reference/generated/numpy.allclose.html).
	**/
	static public function allclose(a:Dynamic, b:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `angle`.
		
		See the NumPy documentation for [`numpy.angle`](https://numpy.org/doc/1.16/reference/generated/numpy.angle.html).
	**/
	static public function angle(z:Dynamic, ?deg:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `append`.
		
		See the NumPy documentation for [`numpy.append`](https://numpy.org/doc/1.16/reference/generated/numpy.append.html).
	**/
	static public function append(arr:Dynamic, values:Dynamic, ?axis:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `array_equal`.
		
		Unsupported arguments: `equal_nan`.
		
		See the NumPy documentation for [`numpy.array_equal`](https://numpy.org/doc/1.16/reference/generated/numpy.array_equal.html).
	**/
	static public function array_equal(a1:Dynamic, a2:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `deg2rad`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.deg2rad`](https://numpy.org/doc/1.16/reference/generated/numpy.deg2rad.html).
	**/
	static public function deg2rad(x:Dynamic):Dynamic;
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
	static public var division : Dynamic;
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
	static public var e : Dynamic;
	/**
		TensorFlow variant of NumPy's `einsum`.
		
		See the NumPy documentation for [`numpy.einsum`](https://numpy.org/doc/1.16/reference/generated/numpy.einsum.html).
	**/
	static public function einsum(subscripts:Dynamic, ?operands:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adds additional NumPy methods on tf.Tensor class.
	**/
	static public function enable_numpy_methods_on_tensor():Dynamic;
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
		TensorFlow variant of NumPy's `expm1`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.expm1`](https://numpy.org/doc/1.16/reference/generated/numpy.expm1.html).
	**/
	static public function expm1(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `fabs`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.fabs`](https://numpy.org/doc/1.16/reference/generated/numpy.fabs.html).
	**/
	static public function fabs(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `fix`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.fix`](https://numpy.org/doc/1.16/reference/generated/numpy.fix.html).
	**/
	static public function fix(x:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `hypot`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.hypot`](https://numpy.org/doc/1.16/reference/generated/numpy.hypot.html).
	**/
	static public function hypot(x1:Dynamic, x2:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `maximum`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.maximum`](https://numpy.org/doc/1.16/reference/generated/numpy.maximum.html).
	**/
	static public function maximum(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `meshgrid`.
		
		Unsupported arguments: `copy`, `sparse`, `indexing`.
		
		This currently requires copy=True and sparse=False.
		
		See the NumPy documentation for [`numpy.meshgrid`](https://numpy.org/doc/1.16/reference/generated/numpy.meshgrid.html).
	**/
	static public function meshgrid(?xi:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		TensorFlow variant of NumPy's `negative`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.negative`](https://numpy.org/doc/1.16/reference/generated/numpy.negative.html).
	**/
	static public function negative(x:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `nextafter`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.nextafter`](https://numpy.org/doc/1.16/reference/generated/numpy.nextafter.html).
	**/
	static public function nextafter(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `not_equal`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.not_equal`](https://numpy.org/doc/1.16/reference/generated/numpy.not_equal.html).
	**/
	static public function not_equal(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `outer`.
		
		Unsupported arguments: `out`.
		
		See the NumPy documentation for [`numpy.outer`](https://numpy.org/doc/1.16/reference/generated/numpy.outer.html).
	**/
	static public function outer(a:Dynamic, b:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
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
		TensorFlow variant of NumPy's `sort`.
		
		See the NumPy documentation for [`numpy.sort`](https://numpy.org/doc/1.16/reference/generated/numpy.sort.html).
	**/
	static public function sort(a:Dynamic, ?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `subtract`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.subtract`](https://numpy.org/doc/1.16/reference/generated/numpy.subtract.html).
	**/
	static public function subtract(x1:Dynamic, x2:Dynamic):Dynamic;
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
		TensorFlow variant of NumPy's `true_divide`.
		
		Unsupported arguments: `out`, `where`, `casting`, `order`, `dtype`, `subok`, `signature`, `extobj`.
		
		See the NumPy documentation for [`numpy.true_divide`](https://numpy.org/doc/1.16/reference/generated/numpy.true_divide.html).
	**/
	static public function true_divide(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `vdot`.
		
		See the NumPy documentation for [`numpy.vdot`](https://numpy.org/doc/1.16/reference/generated/numpy.vdot.html).
	**/
	static public function vdot(a:Dynamic, b:Dynamic):Dynamic;
}
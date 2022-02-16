/* This file is generated, do not edit! */
package numpy.array_api;
@:pythonImport("numpy.array_api") extern class Array_api_Module {
	static public var __all__ : Dynamic;
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
		Array API compatible wrapper for :py:func:`np.abs <numpy.abs>`.
		
		See its docstring for more information.
	**/
	static public function abs(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.arccos <numpy.arccos>`.
		
		See its docstring for more information.
	**/
	static public function acos(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.arccosh <numpy.arccosh>`.
		
		See its docstring for more information.
	**/
	static public function acosh(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.add <numpy.add>`.
		
		See its docstring for more information.
	**/
	static public function add(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.all <numpy.all>`.
		
		See its docstring for more information.
	**/
	static public function all(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.any <numpy.any>`.
		
		See its docstring for more information.
	**/
	static public function any(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.arange <numpy.arange>`.
		
		See its docstring for more information.
	**/
	static public function arange(start:Dynamic, ?stop:Dynamic, ?step:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.argmax <numpy.argmax>`.
		
		See its docstring for more information.
	**/
	static public function argmax(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.argmin <numpy.argmin>`.
		
		See its docstring for more information.
	**/
	static public function argmin(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.argsort <numpy.argsort>`.
		
		See its docstring for more information.
	**/
	static public function argsort(x:Dynamic, ?axis:Dynamic, ?descending:Dynamic, ?stable:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.asarray <numpy.asarray>`.
		
		See its docstring for more information.
	**/
	static public function asarray(obj:Dynamic, ?dtype:Dynamic, ?device:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.arcsin <numpy.arcsin>`.
		
		See its docstring for more information.
	**/
	static public function asin(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.arcsinh <numpy.arcsinh>`.
		
		See its docstring for more information.
	**/
	static public function asinh(x:Dynamic):Dynamic;
	static public function astype(x:Dynamic, dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.arctan <numpy.arctan>`.
		
		See its docstring for more information.
	**/
	static public function atan(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.arctan2 <numpy.arctan2>`.
		
		See its docstring for more information.
	**/
	static public function atan2(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.arctanh <numpy.arctanh>`.
		
		See its docstring for more information.
	**/
	static public function atanh(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.bitwise_and <numpy.bitwise_and>`.
		
		See its docstring for more information.
	**/
	static public function bitwise_and(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.invert <numpy.invert>`.
		
		See its docstring for more information.
	**/
	static public function bitwise_invert(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.left_shift <numpy.left_shift>`.
		
		See its docstring for more information.
	**/
	static public function bitwise_left_shift(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.bitwise_or <numpy.bitwise_or>`.
		
		See its docstring for more information.
	**/
	static public function bitwise_or(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.right_shift <numpy.right_shift>`.
		
		See its docstring for more information.
	**/
	static public function bitwise_right_shift(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.bitwise_xor <numpy.bitwise_xor>`.
		
		See its docstring for more information.
	**/
	static public function bitwise_xor(x1:Dynamic, x2:Dynamic):Dynamic;
	static public var bool : Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.broadcast_arrays <numpy.broadcast_arrays>`.
		
		See its docstring for more information.
	**/
	static public function broadcast_arrays(?arrays:python.VarArgs<Dynamic>):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.broadcast_to <numpy.broadcast_to>`.
		
		See its docstring for more information.
	**/
	static public function broadcast_to(x:Dynamic, shape:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.can_cast <numpy.can_cast>`.
		
		See its docstring for more information.
	**/
	static public function can_cast(from_:Dynamic, to:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.ceil <numpy.ceil>`.
		
		See its docstring for more information.
	**/
	static public function ceil(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.concatenate <numpy.concatenate>`.
		
		See its docstring for more information.
	**/
	static public function concat(arrays:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.cos <numpy.cos>`.
		
		See its docstring for more information.
	**/
	static public function cos(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.cosh <numpy.cosh>`.
		
		See its docstring for more information.
	**/
	static public function cosh(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.divide <numpy.divide>`.
		
		See its docstring for more information.
	**/
	static public function divide(x1:Dynamic, x2:Dynamic):Dynamic;
	static public var e : Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.empty <numpy.empty>`.
		
		See its docstring for more information.
	**/
	static public function empty(shape:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.empty_like <numpy.empty_like>`.
		
		See its docstring for more information.
	**/
	static public function empty_like(x:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.equal <numpy.equal>`.
		
		See its docstring for more information.
	**/
	static public function equal(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.exp <numpy.exp>`.
		
		See its docstring for more information.
	**/
	static public function exp(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.expand_dims <numpy.expand_dims>`.
		
		See its docstring for more information.
	**/
	static public function expand_dims(x:Dynamic, axis:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.expm1 <numpy.expm1>`.
		
		See its docstring for more information.
	**/
	static public function expm1(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.eye <numpy.eye>`.
		
		See its docstring for more information.
	**/
	static public function eye(n_rows:Dynamic, ?n_cols:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.finfo <numpy.finfo>`.
		
		See its docstring for more information.
	**/
	static public function finfo(type:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.flip <numpy.flip>`.
		
		See its docstring for more information.
	**/
	static public function flip(x:Dynamic, ?axis:Dynamic):Dynamic;
	static public var float32 : Dynamic;
	static public var float64 : Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.floor <numpy.floor>`.
		
		See its docstring for more information.
	**/
	static public function floor(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.floor_divide <numpy.floor_divide>`.
		
		See its docstring for more information.
	**/
	static public function floor_divide(x1:Dynamic, x2:Dynamic):Dynamic;
	static public function from_dlpack(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.full <numpy.full>`.
		
		See its docstring for more information.
	**/
	static public function full(shape:Dynamic, fill_value:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.full_like <numpy.full_like>`.
		
		See its docstring for more information.
	**/
	static public function full_like(x:Dynamic, fill_value:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.greater <numpy.greater>`.
		
		See its docstring for more information.
	**/
	static public function greater(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.greater_equal <numpy.greater_equal>`.
		
		See its docstring for more information.
	**/
	static public function greater_equal(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.iinfo <numpy.iinfo>`.
		
		See its docstring for more information.
	**/
	static public function iinfo(type:Dynamic):Dynamic;
	static public var inf : Dynamic;
	static public var int16 : Dynamic;
	static public var int32 : Dynamic;
	static public var int64 : Dynamic;
	static public var int8 : Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.isfinite <numpy.isfinite>`.
		
		See its docstring for more information.
	**/
	static public function isfinite(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.isinf <numpy.isinf>`.
		
		See its docstring for more information.
	**/
	static public function isinf(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.isnan <numpy.isnan>`.
		
		See its docstring for more information.
	**/
	static public function isnan(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.less <numpy.less>`.
		
		See its docstring for more information.
	**/
	static public function less(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.less_equal <numpy.less_equal>`.
		
		See its docstring for more information.
	**/
	static public function less_equal(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.linspace <numpy.linspace>`.
		
		See its docstring for more information.
	**/
	static public function linspace(start:Dynamic, stop:Dynamic, num:Dynamic, ?dtype:Dynamic, ?device:Dynamic, ?endpoint:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.log <numpy.log>`.
		
		See its docstring for more information.
	**/
	static public function log(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.log10 <numpy.log10>`.
		
		See its docstring for more information.
	**/
	static public function log10(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.log1p <numpy.log1p>`.
		
		See its docstring for more information.
	**/
	static public function log1p(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.log2 <numpy.log2>`.
		
		See its docstring for more information.
	**/
	static public function log2(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.logaddexp <numpy.logaddexp>`.
		
		See its docstring for more information.
	**/
	static public function logaddexp(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.logical_and <numpy.logical_and>`.
		
		See its docstring for more information.
	**/
	static public function logical_and(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.logical_not <numpy.logical_not>`.
		
		See its docstring for more information.
	**/
	static public function logical_not(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.logical_or <numpy.logical_or>`.
		
		See its docstring for more information.
	**/
	static public function logical_or(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.logical_xor <numpy.logical_xor>`.
		
		See its docstring for more information.
	**/
	static public function logical_xor(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.matmul <numpy.matmul>`.
		
		See its docstring for more information.
	**/
	static public function matmul(x1:Dynamic, x2:Dynamic):Dynamic;
	static public function matrix_transpose(x:Dynamic):Dynamic;
	static public function max(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function mean(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.meshgrid <numpy.meshgrid>`.
		
		See its docstring for more information.
	**/
	static public function meshgrid(?arrays:python.VarArgs<Dynamic>, ?indexing:Dynamic):Dynamic;
	static public function min(x:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.multiply <numpy.multiply>`.
		
		See its docstring for more information.
	**/
	static public function multiply(x1:Dynamic, x2:Dynamic):Dynamic;
	static public var nan : Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.negative <numpy.negative>`.
		
		See its docstring for more information.
	**/
	static public function negative(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.nonzero <numpy.nonzero>`.
		
		See its docstring for more information.
	**/
	static public function nonzero(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.not_equal <numpy.not_equal>`.
		
		See its docstring for more information.
	**/
	static public function not_equal(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.ones <numpy.ones>`.
		
		See its docstring for more information.
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.ones_like <numpy.ones_like>`.
		
		See its docstring for more information.
	**/
	static public function ones_like(x:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.transpose <numpy.transpose>`.
		
		See its docstring for more information.
	**/
	static public function permute_dims(x:Dynamic, axes:Dynamic):Dynamic;
	static public var pi : Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.positive <numpy.positive>`.
		
		See its docstring for more information.
	**/
	static public function positive(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.power <numpy.power>`.
		
		See its docstring for more information.
	**/
	static public function pow(x1:Dynamic, x2:Dynamic):Dynamic;
	static public function prod(x:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.remainder <numpy.remainder>`.
		
		See its docstring for more information.
	**/
	static public function remainder(x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.reshape <numpy.reshape>`.
		
		See its docstring for more information.
	**/
	static public function reshape(x:Dynamic, shape:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.result_type <numpy.result_type>`.
		
		See its docstring for more information.
	**/
	static public function result_type(?arrays_and_dtypes:python.VarArgs<Dynamic>):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.roll <numpy.roll>`.
		
		See its docstring for more information.
	**/
	static public function roll(x:Dynamic, shift:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.round <numpy.round>`.
		
		See its docstring for more information.
	**/
	static public function round(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.sign <numpy.sign>`.
		
		See its docstring for more information.
	**/
	static public function sign(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.sin <numpy.sin>`.
		
		See its docstring for more information.
	**/
	static public function sin(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.sinh <numpy.sinh>`.
		
		See its docstring for more information.
	**/
	static public function sinh(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.sort <numpy.sort>`.
		
		See its docstring for more information.
	**/
	static public function sort(x:Dynamic, ?axis:Dynamic, ?descending:Dynamic, ?stable:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.sqrt <numpy.sqrt>`.
		
		See its docstring for more information.
	**/
	static public function sqrt(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.square <numpy.square>`.
		
		See its docstring for more information.
	**/
	static public function square(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.squeeze <numpy.squeeze>`.
		
		See its docstring for more information.
	**/
	static public function squeeze(x:Dynamic, axis:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.stack <numpy.stack>`.
		
		See its docstring for more information.
	**/
	static public function stack(arrays:Dynamic, ?axis:Dynamic):Dynamic;
	static public function std(x:Dynamic, ?axis:Dynamic, ?correction:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.subtract <numpy.subtract>`.
		
		See its docstring for more information.
	**/
	static public function subtract(x1:Dynamic, x2:Dynamic):Dynamic;
	static public function sum(x:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.tan <numpy.tan>`.
		
		See its docstring for more information.
	**/
	static public function tan(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.tanh <numpy.tanh>`.
		
		See its docstring for more information.
	**/
	static public function tanh(x:Dynamic):Dynamic;
	static public function tensordot(x1:Dynamic, x2:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.tril <numpy.tril>`.
		
		See its docstring for more information.
	**/
	static public function tril(x:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.triu <numpy.triu>`.
		
		See its docstring for more information.
	**/
	static public function triu(x:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.trunc <numpy.trunc>`.
		
		See its docstring for more information.
	**/
	static public function trunc(x:Dynamic):Dynamic;
	static public var uint16 : Dynamic;
	static public var uint32 : Dynamic;
	static public var uint64 : Dynamic;
	static public var uint8 : Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.unique <numpy.unique>`.
		
		See its docstring for more information.
	**/
	static public function unique_all(x:Dynamic):Dynamic;
	static public function unique_counts(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.unique <numpy.unique>`.
		
		See its docstring for more information.
	**/
	static public function unique_inverse(x:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.unique <numpy.unique>`.
		
		See its docstring for more information.
	**/
	static public function unique_values(x:Dynamic):Dynamic;
	@:native("var")
	static public function _var(x:Dynamic, ?axis:Dynamic, ?correction:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public function vecdot(x1:Dynamic, x2:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.where <numpy.where>`.
		
		See its docstring for more information.
	**/
	static public function where(condition:Dynamic, x1:Dynamic, x2:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.zeros <numpy.zeros>`.
		
		See its docstring for more information.
	**/
	static public function zeros(shape:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Array API compatible wrapper for :py:func:`np.zeros_like <numpy.zeros_like>`.
		
		See its docstring for more information.
	**/
	static public function zeros_like(x:Dynamic, ?dtype:Dynamic, ?device:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package pandas.computation;
@:pythonImport("pandas.computation.ops") extern class Ops {
	static public var PY3 : Dynamic;
	static public var _DEFAULT_GLOBALS : Dynamic;
	static public var _LOCAL_TAG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _arith_ops_dict : Dynamic;
	static public var _arith_ops_funcs : Dynamic;
	static public var _arith_ops_syms : Dynamic;
	static public var _binary_math_ops : Dynamic;
	static public var _binary_ops_dict : Dynamic;
	static public var _bool_op_map : Dynamic;
	static public var _bool_ops_dict : Dynamic;
	static public var _bool_ops_funcs : Dynamic;
	static public var _bool_ops_syms : Dynamic;
	/**
		Cast an expression inplace.
		
		Parameters
		----------
		terms : Op
		    The expression that should cast.
		dtype : str or numpy.dtype
		    The dtype to cast to.
	**/
	static public function _cast_inplace(terms:Dynamic, dtype:Dynamic):Dynamic;
	static public var _cmp_ops_dict : Dynamic;
	static public var _cmp_ops_funcs : Dynamic;
	static public var _cmp_ops_syms : Dynamic;
	/**
		if we have bytes, decode them to unicode 
	**/
	static public function _ensure_decoded(s:Dynamic):Dynamic;
	/**
		Compute the vectorized membership of ``x in y`` if possible, otherwise
		use Python.
	**/
	static public function _in(x:Dynamic, y:Dynamic):Dynamic;
	static public var _mathops : Dynamic;
	/**
		Compute the vectorized membership of ``x not in y`` if possible,
		otherwise use Python.
	**/
	static public function _not_in(x:Dynamic, y:Dynamic):Dynamic;
	static public var _reductions : Dynamic;
	/**
		wrapper around numpy.result_type which overcomes the NPY_MAXARGS (32)
		argument limit 
	**/
	static public function _result_type_many(arrays_and_dtypes:Dynamic):Dynamic;
	static public var _special_case_arith_ops_dict : Dynamic;
	static public var _special_case_arith_ops_funcs : Dynamic;
	static public var _special_case_arith_ops_syms : Dynamic;
	static public var _unary_math_ops : Dynamic;
	static public var _unary_ops_dict : Dynamic;
	static public var _unary_ops_funcs : Dynamic;
	static public var _unary_ops_syms : Dynamic;
	static public var d : Dynamic;
	static public function is_term(obj:Dynamic):Dynamic;
	static public function isnumeric(dtype:Dynamic):Dynamic;
	static public var string_types : Dynamic;
}
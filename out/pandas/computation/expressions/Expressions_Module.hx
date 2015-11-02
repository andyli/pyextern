/* This file is generated, do not edit! */
package pandas.computation.expressions;
@:pythonImport("pandas.computation.expressions") extern class Expressions_Module {
	static public var _ALLOWED_DTYPES : Dynamic;
	static public var _MIN_ELEMENTS : Dynamic;
	static public var _NUMEXPR_INSTALLED : Dynamic;
	static public var _TEST_MODE : Dynamic;
	static public var _TEST_RESULT : Dynamic;
	static public var _USE_NUMEXPR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _bool_arith_check(op_str:Dynamic, a:Dynamic, b:Dynamic, ?not_allowed:Dynamic, ?unsupported:Dynamic):Dynamic;
	/**
		return a boolean if we WILL be using numexpr 
	**/
	static public function _can_use_numexpr(op:Dynamic, op_str:Dynamic, a:Dynamic, b:Dynamic, dtype_check:Dynamic):Dynamic;
	/**
		standard evaluation 
	**/
	static public function _evaluate(op:Dynamic, op_str:Dynamic, a:Dynamic, b:Dynamic, ?raise_on_error:Dynamic, ?eval_kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _evaluate_numexpr(op:Dynamic, op_str:Dynamic, a:Dynamic, b:Dynamic, ?raise_on_error:Dynamic, ?truediv:Dynamic, ?reversed:Dynamic, ?eval_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		standard evaluation 
	**/
	static public function _evaluate_standard(op:Dynamic, op_str:Dynamic, a:Dynamic, b:Dynamic, ?raise_on_error:Dynamic, ?eval_kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _has_bool_dtype(x:Dynamic):Dynamic;
	static public function _store_test_result(used_numexpr:Dynamic):Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function _values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _where(cond:Dynamic, a:Dynamic, b:Dynamic, ?raise_on_error:Dynamic):Dynamic;
	static public function _where_numexpr(cond:Dynamic, a:Dynamic, b:Dynamic, ?raise_on_error:Dynamic):Dynamic;
	static public function _where_standard(cond:Dynamic, a:Dynamic, b:Dynamic, ?raise_on_error:Dynamic):Dynamic;
	/**
		evaluate and return the expression of the op on a and b
		
		Parameters
		----------
		
		op :    the actual operand
		op_str: the string version of the op
		a :     left operand
		b :     right operand
		raise_on_error : pass the error to the higher level if indicated
		                 (default is False), otherwise evaluate the op with and
		                 return the results
		use_numexpr : whether to try to use numexpr (default True)
	**/
	static public function evaluate(op:Dynamic, op_str:Dynamic, a:Dynamic, b:Dynamic, ?raise_on_error:Dynamic, ?use_numexpr:Dynamic, ?eval_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		get test result and reset test_results
	**/
	static public function get_test_result():Dynamic;
	static public function set_numexpr_threads(?n:Dynamic):Dynamic;
	/**
		Keeps track of whether numexpr  was used.  Stores an additional ``True``
		for every successful use of evaluate with numexpr since the last
		``get_test_result``
	**/
	static public function set_test_mode(?v:Dynamic):Dynamic;
	static public function set_use_numexpr(?v:Dynamic):Dynamic;
	/**
		evaluate the where condition cond on a and b
		
		Parameters
		----------
		
		cond : a boolean array
		a :    return if cond is True
		b :    return if cond is False
		raise_on_error : pass the error to the higher level if indicated
		                 (default is False), otherwise evaluate the op with and
		                 return the results
		use_numexpr : whether to try to use numexpr (default True)
	**/
	static public function where(cond:Dynamic, a:Dynamic, b:Dynamic, ?raise_on_error:Dynamic, ?use_numexpr:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package pandas.computation.pytables;
@:pythonImport("pandas.computation.pytables") extern class Pytables_Module {
	static public var PY3 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		convert strings to timedelta; coerce to Timedelta (if box), else np.timedelta64
	**/
	static public function _coerce_scalar_to_timedelta_type(r:Dynamic, ?unit:Dynamic, ?box:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		if we have bytes, decode them to unicode 
	**/
	static public function _ensure_decoded(s:Dynamic):Dynamic;
	/**
		Ensure that we are grabbing the correct scope.
	**/
	static public function _ensure_scope(level:Dynamic, ?global_dict:Dynamic, ?local_dict:Dynamic, ?resolvers:Dynamic, ?target:Dynamic, kwargs:Dynamic):Dynamic;
	static public var _op_classes : Dynamic;
	static public function is_term(obj:Dynamic):Dynamic;
	/**
		loose checking if s is a pytables-acceptable expression 
	**/
	static public function maybe_expression(s:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	static public function u(s:Dynamic):Dynamic;
}
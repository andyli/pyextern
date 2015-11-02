/* This file is generated, do not edit! */
package numpy.f2py.cb_rules;
@:pythonImport("numpy.f2py.cb_rules") extern class Cb_rules_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function applyrules(rules:Dynamic, d:Dynamic, ?_var:Dynamic):Dynamic;
	static public function buildcallback(rout:Dynamic, um:Dynamic):Dynamic;
	static public function buildcallbacks(m:Dynamic):Dynamic;
	static public var cb_arg_rules : Dynamic;
	static public var cb_map : Dynamic;
	static public var cb_rout_rules : Dynamic;
	static public var cb_routine_rules : Dynamic;
	static public function debugcapi(_var:Dynamic):Dynamic;
	static public function dictappend(rd:Dynamic, ar:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Write string to stream.
		Returns the number of characters written (which is always equal to
		the length of the string).
	**/
	static public function errmess(text:Dynamic):Dynamic;
	static public var f2py_version : Dynamic;
	static public function getargs(rout:Dynamic):Dynamic;
	static public function hasnote(_var:Dynamic):Dynamic;
	static public function isarray(_var:Dynamic):Dynamic;
	static public function iscomplex(_var:Dynamic):Dynamic;
	static public function iscomplexarray(_var:Dynamic):Dynamic;
	static public function iscomplexfunction(rout:Dynamic):Dynamic;
	static public function isfunction(rout:Dynamic):Dynamic;
	static public function isintent_c(_var:Dynamic):Dynamic;
	static public function isintent_hide(_var:Dynamic):Dynamic;
	static public function isintent_in(_var:Dynamic):Dynamic;
	static public function isintent_inout(_var:Dynamic):Dynamic;
	static public function isintent_nothide(_var:Dynamic):Dynamic;
	static public function isintent_out(_var:Dynamic):Dynamic;
	static public function isoptional(_var:Dynamic):Dynamic;
	static public function isrequired(_var:Dynamic):Dynamic;
	static public function isscalar(_var:Dynamic):Dynamic;
	static public function isstring(_var:Dynamic):Dynamic;
	static public function isstringfunction(rout:Dynamic):Dynamic;
	static public function issubroutine(rout:Dynamic):Dynamic;
	static public function l_and(?f:python.VarArgs<Dynamic>):Dynamic;
	static public function l_not(f:Dynamic):Dynamic;
	static public function l_or(?f:python.VarArgs<Dynamic>):Dynamic;
	static public function outmess(t:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function replace(str:Dynamic, d:Dynamic, ?defaultsep:Dynamic):Dynamic;
	static public function stripcomma(s:Dynamic):Dynamic;
}
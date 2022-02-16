/* This file is generated, do not edit! */
package numpy.f2py.func2subr;
@:pythonImport("numpy.f2py.func2subr") extern class Func2subr_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public function assubr(rout:Dynamic):Dynamic;
	static public function createfuncwrapper(rout:Dynamic, ?signature:Dynamic):Dynamic;
	static public function createsubrwrapper(rout:Dynamic, ?signature:Dynamic):Dynamic;
	static public var f2py_version : Dynamic;
	static public function getfortranname(rout:Dynamic):Dynamic;
	static public function isexternal(_var:Dynamic):Dynamic;
	static public function isfunction(rout:Dynamic):Dynamic;
	static public function isfunction_wrap(rout:Dynamic):Dynamic;
	static public function isintent_in(_var:Dynamic):Dynamic;
	static public function isintent_out(_var:Dynamic):Dynamic;
	static public function islogicalfunction(rout:Dynamic):Dynamic;
	static public function ismoduleroutine(rout:Dynamic):Dynamic;
	static public function isscalar(_var:Dynamic):Dynamic;
	static public function issubroutine(rout:Dynamic):Dynamic;
	static public function issubroutine_wrap(rout:Dynamic):Dynamic;
	static public function outmess(t:Dynamic):Dynamic;
	/**
		Pretty-print a Python object to a stream [default is sys.stdout].
	**/
	static public function show(object:Dynamic, ?stream:Dynamic, ?indent:Dynamic, ?width:Dynamic, ?depth:Dynamic, ?compact:Dynamic, ?sort_dicts:Dynamic):Dynamic;
	static public function var2fixfortran(vars:Dynamic, a:Dynamic, ?fa:Dynamic, ?f90mode:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package theano.sandbox.cuda.elemwise;
@:pythonImport("theano.sandbox.cuda.elemwise") extern class Elemwise_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var _logger_name : Dynamic;
	static public function _logical_scalar(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var complex_types : Dynamic;
	static public var division : Dynamic;
	static public function erfcx_gpu(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function erfinv_gpu(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_str_list_logical_scalar(node:Dynamic, ?value_str:Dynamic, ?data_str:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Don't accept complex, otherwise call upgrade_to_float().
	**/
	static public function upgrade_to_float_no_complex(?types:python.VarArgs<Dynamic>):Dynamic;
}
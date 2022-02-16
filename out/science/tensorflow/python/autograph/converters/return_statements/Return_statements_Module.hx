/* This file is generated, do not edit! */
package tensorflow.python.autograph.converters.return_statements;
@:pythonImport("tensorflow.python.autograph.converters.return_statements") extern class Return_statements_Module {
	static public var BODY_DEFINITELY_RETURNS : Dynamic;
	static public var ORELSE_DEFINITELY_RETURNS : Dynamic;
	static public var STMT_DEFINITELY_RETURNS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Ensure a function has only a single return, at the end.
	**/
	static public function transform(node:Dynamic, ctx:Dynamic, ?default_to_null_return:Dynamic):Dynamic;
}
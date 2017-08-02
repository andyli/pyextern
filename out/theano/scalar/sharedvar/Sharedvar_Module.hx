/* This file is generated, do not edit! */
package theano.scalar.sharedvar;
@:pythonImport("theano.scalar.sharedvar") extern class Sharedvar_Module {
	static public var __authors__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __contact__ : Dynamic;
	static public var __copyright__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __license__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var integer_types : Dynamic;
	static public var print_function : Dynamic;
	/**
		SharedVariable constructor for scalar values. Default: int64 or float64.
		
		Notes
		-----
		We implement this using 0-d tensors for now.
	**/
	static public function shared(value:Dynamic, ?name:Dynamic, ?strict:Dynamic, ?allow_downcast:Dynamic):Dynamic;
}
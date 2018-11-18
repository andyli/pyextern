/* This file is generated, do not edit! */
package theano.compile.mode;
@:pythonImport("theano.compile.mode") extern class Mode_Module {
	static public var FAST_COMPILE : Dynamic;
	static public var FAST_RUN : Dynamic;
	static public var OPT_FAST_COMPILE : Dynamic;
	static public var OPT_FAST_RUN : Dynamic;
	static public var OPT_FAST_RUN_STABLE : Dynamic;
	static public var OPT_MERGE : Dynamic;
	static public var OPT_NONE : Dynamic;
	static public var OPT_O2 : Dynamic;
	static public var OPT_O3 : Dynamic;
	static public var OPT_STABILIZE : Dynamic;
	static public var OPT_UNSAFE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
	static public var config : Dynamic;
	static public var division : Dynamic;
	static public var exclude : Dynamic;
	static public function get_default_mode():Dynamic;
	static public function get_mode(orig_string:Dynamic):Dynamic;
	static public var instantiated_default_mode : Dynamic;
	static public var local_useless : Dynamic;
	static public var optdb : Dynamic;
	static public var predefined_linkers : Dynamic;
	static public var predefined_modes : Dynamic;
	static public var predefined_optimizers : Dynamic;
	static public var print_function : Dynamic;
	/**
		Add a `Linker` which can be referred to by `name` in `Mode`.
	**/
	static public function register_linker(name:Dynamic, linker:Dynamic):Dynamic;
	/**
		Add a `Mode` which can be referred to by `name` in `function`.
	**/
	static public function register_mode(name:Dynamic, mode:Dynamic):Dynamic;
	/**
		Add a `Optimizer` which can be referred to by `name` in `Mode`.
	**/
	static public function register_optimizer(name:Dynamic, opt:Dynamic):Dynamic;
	static public var string_types : Dynamic;
}
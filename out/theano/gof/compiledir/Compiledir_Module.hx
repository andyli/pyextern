/* This file is generated, do not edit! */
package theano.gof.compiledir;
@:pythonImport("theano.gof.compiledir") extern class Compiledir_Module {
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
	/**
		Print list of files in the "theano.config.base_compiledir"
	**/
	static public function basecompiledir_ls():Dynamic;
	static public function basecompiledir_purge():Dynamic;
	/**
		Delete keys in old format from the compiledir.
		
		Old clean up include key in old format or with old version of the c_code:
		1) keys that have an ndarray in them.
		   Now we use a hash in the keys of the constant data.
		2) key that don't have the numpy ABI version in them
		3) They do not have a compile version string
		
		If there is no key left for a compiled module, we delete the module.
	**/
	static public function cleanup():Dynamic;
	static public function compiledir_purge():Dynamic;
	static public var config : Dynamic;
	static public var division : Dynamic;
	/**
		Recursively flatten tuple, list and set in a list.
	**/
	static public function flatten(a:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		print list of %d compiled individual ops in the "theano.config.compiledir"
	**/
	static public function print_compiledir_content():Dynamic;
	static public var print_function : Dynamic;
	static public function print_title(title:Dynamic, ?overline:Dynamic, ?underline:Dynamic):Dynamic;
	static public var string_types : Dynamic;
}
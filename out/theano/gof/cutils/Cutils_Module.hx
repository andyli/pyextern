/* This file is generated, do not edit! */
package theano.gof.cutils;
@:pythonImport("theano.gof.cutils") extern class Cutils_Module {
	static public var PY3 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Do just the compilation of cutils_ext.
	**/
	static public function compile_cutils():Dynamic;
	static public function compile_cutils_code():Dynamic;
	static public var config : Dynamic;
	static public var division : Dynamic;
	/**
		Obtain lock on compilation directory.
		
		Parameters
		----------
		kw
		    Additional arguments to be forwarded to the `lock` function when
		    acquiring the lock.
		
		Notes
		-----
		We can lock only on 1 directory at a time.
	**/
	static public function get_lock(?lock_dir:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		increments a numpy array inplace at the passed indexes.
	**/
	static public function inplace_increment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var location : Dynamic;
	static public var print_function : Dynamic;
	/**
		Release lock on compilation directory.
	**/
	static public function release_lock():Dynamic;
	/**
		Run a theano cthunk.
	**/
	static public function run_cthunk(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
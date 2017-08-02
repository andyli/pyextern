/* This file is generated, do not edit! */
package theano.gof.lazylinker_c;
@:pythonImport("theano.gof.lazylinker_c") extern class Lazylinker_c_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	static public var _logger : Dynamic;
	static public var _need_reload : Dynamic;
	static public var absolute_import : Dynamic;
	static public var args : Dynamic;
	static public var cfile : Dynamic;
	static public var code : Dynamic;
	static public var config : Dynamic;
	static public var dirname : Dynamic;
	static public var division : Dynamic;
	static public var force_compile : Dynamic;
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
		Get extension version.
	**/
	static public function get_version(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var init_file : Dynamic;
	static public var init_py : Dynamic;
	static public var init_pyc : Dynamic;
	static public var loc : Dynamic;
	static public var location : Dynamic;
	static public var print_function : Dynamic;
	/**
		Release lock on compilation directory.
	**/
	static public function release_lock():Dynamic;
	/**
		Reload the module and return it.
		
		The module must have been successfully imported before.
	**/
	static public function reload(module:Dynamic):Dynamic;
	static public function try_import():Dynamic;
	static public function try_reload():Dynamic;
	static public var version : Dynamic;
}
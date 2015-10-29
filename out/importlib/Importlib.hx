/* This file is generated, do not edit! */
package importlib;
@:pythonImport("importlib") extern class Importlib {
	static public var _RELOADING : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	/**
		Import a module.
		
		The 'globals' argument is used to infer where the import is occuring from
		to handle relative imports. The 'locals' argument is ignored. The
		'fromlist' argument specifies what should exist as attributes on the module
		being imported (e.g. ``from module import <fromlist>``).  The 'level'
		argument represents the package location to import from in a relative
		import (e.g. ``from ..pkg import mod`` would have a 'level' of 2).
	**/
	static public function __import__(name:Dynamic, ?globals:Dynamic, ?locals:Dynamic, ?fromlist:Dynamic, ?level:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert 4 bytes in little-endian to an integer.
	**/
	static public function _r_long(int_bytes:Dynamic):Dynamic;
	/**
		Convert a 32-bit integer to little-endian.
	**/
	static public function _w_long(x:Dynamic):Dynamic;
	/**
		Return the loader for the specified module.
		
		This is a backward-compatible wrapper around find_spec().
		
		This function is deprecated in favor of importlib.util.find_spec().
	**/
	static public function find_loader(name:Dynamic, ?path:Dynamic):Dynamic;
	/**
		Import a module.
		
		The 'package' argument is required when performing a relative import. It
		specifies the package to use as the anchor point from which to resolve the
		relative import to an absolute import.
	**/
	static public function import_module(name:Dynamic, ?_package:Dynamic):Dynamic;
	/**
		Call the invalidate_caches() method on all meta path finders stored in
		sys.meta_path (where implemented).
	**/
	static public function invalidate_caches():Dynamic;
	/**
		Reload the module and return it.
		
		The module must have been successfully imported before.
	**/
	static public function reload(module:Dynamic):Dynamic;
}
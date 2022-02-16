/* This file is generated, do not edit! */
package pandas.compat.pickle_compat;
@:pythonImport("pandas.compat.pickle_compat") extern class Pickle_compat_Module {
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _class_locations_map : Dynamic;
	static public var _sparse_msg : Dynamic;
	static public var annotations : Dynamic;
	/**
		Load a pickle, with a provided encoding,
		
		Parameters
		----------
		fh : a filelike object
		encoding : an optional encoding
		is_verbose : show exception output
	**/
	static public function load(fh:Dynamic, ?encoding:Dynamic, ?is_verbose:Dynamic):Dynamic;
	static public function load_newobj(self:Dynamic):Dynamic;
	static public function load_newobj_ex(self:Dynamic):Dynamic;
	static public function load_reduce(self:Dynamic):Dynamic;
	/**
		Analogous to pickle._loads.
	**/
	static public function loads(bytes_object:Dynamic, ?fix_imports:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Temporarily patch pickle to use our unpickler.
	**/
	static public function patch_pickle():Dynamic;
}
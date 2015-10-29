/* This file is generated, do not edit! */
package pandas.compat;
@:pythonImport("pandas.compat.pickle_compat") extern class Pickle_compat {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		load a pickle, with a provided encoding
		
		if compat is True:
		   fake the old class hierarchy
		   if it works, then return the new type objects
		
		Parameters
		----------
		fh: a filelike object
		encoding: an optional encoding
		compat: provide Series compatibility mode, boolean, default False
		is_verbose: show exception output
	**/
	static public function load(fh:Dynamic, ?encoding:Dynamic, ?compat:Dynamic, ?is_verbose:Dynamic):Dynamic;
	static public function load_newobj(self:Dynamic):Dynamic;
	static public function load_newobj_ex(self:Dynamic):Dynamic;
	static public function load_reduce(self:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	static public function u(s:Dynamic):Dynamic;
}
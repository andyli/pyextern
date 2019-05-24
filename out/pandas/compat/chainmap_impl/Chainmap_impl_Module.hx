/* This file is generated, do not edit! */
package pandas.compat.chainmap_impl;
@:pythonImport("pandas.compat.chainmap_impl") extern class Chainmap_impl_Module {
	static public var PY3 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		get_ident() -> integer
		
		Return a non-zero integer that uniquely identifies the current thread
		amongst other threads that exist simultaneously.
		This may be used to identify per-thread resources.
		Even though on some platforms threads identities may appear to be
		allocated consecutive numbers starting at 1, this behavior should not
		be relied upon, and the number should be seen purely as a magic cookie.
		A thread's identity may be reused for another thread after it exits.
	**/
	static public function get_ident(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Decorator to make a repr function return fillvalue for a recursive call
	**/
	static public function recursive_repr(?fillvalue:Dynamic):Dynamic;
}
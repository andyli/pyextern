/* This file is generated, do not edit! */
package theano.compat;
@:pythonImport("theano.compat") extern class Compat_Module {
	static public var PY3 : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Byte literal
	**/
	static public function b(s:Dynamic):Dynamic;
	/**
		Return -1 if x < y, 0 if x == y, 1 if x > y.
	**/
	static public function cmp(x:Dynamic, y:Dynamic):Dynamic;
	static public function decode(x:Dynamic):Dynamic;
	static public function decode_iter(itr:Dynamic):Dynamic;
	static public function decode_with(x:Dynamic, encoding:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function exc_message(e:Dynamic):Dynamic;
	static public function get_unbound_function(unbound:Dynamic):Dynamic;
	/**
		Unfortunately, Conda offers to make itself the default Python
		and those who use it that way will probably not activate envs
		correctly meaning e.g. mingw-w64 g++ may not be on their PATH.
		
		This function ensures that, if `newpath` is an absolute path,
		and it is not already in os.environ[var] it gets added to the
		front.
		
		The reason we check first is because Windows environment vars
		are limited to 8191 characters and it is easy to hit that.
		
		`var` will typically be 'PATH'. 
	**/
	static public function maybe_add_to_os_environ_pathlist(_var:Dynamic, newpath:Dynamic):Dynamic;
	/**
		next(iterator[, default])
		
		Return the next item from the iterator. If default is given and the iterator
		is exhausted, it is returned instead of raising StopIteration.
	**/
	static public function next(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		truediv(a, b) -- Same as a / b.
	**/
	static public function operator_div(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reload the module and return it.
		
		The module must have been successfully imported before.
	**/
	static public function reload(module:Dynamic):Dynamic;
}
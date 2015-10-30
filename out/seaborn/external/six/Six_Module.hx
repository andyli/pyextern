/* This file is generated, do not edit! */
package seaborn.external.six;
@:pythonImport("seaborn.external.six") extern class Six_Module {
	static public var MAXSIZE : Dynamic;
	static public var PY2 : Dynamic;
	static public var PY3 : Dynamic;
	static public var __author__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		Add documentation to a function.
	**/
	static public function _add_doc(func:Dynamic, doc:Dynamic):Dynamic;
	static public var _func_closure : Dynamic;
	static public var _func_code : Dynamic;
	static public var _func_defaults : Dynamic;
	static public var _func_globals : Dynamic;
	/**
		Import module, returning the module after the last dot.
	**/
	static public function _import_module(name:Dynamic):Dynamic;
	static public var _iteritems : Dynamic;
	static public var _iterkeys : Dynamic;
	static public var _iterlists : Dynamic;
	static public var _itervalues : Dynamic;
	static public var _meth_func : Dynamic;
	static public var _meth_self : Dynamic;
	static public var _moved_attributes : Dynamic;
	static public var _urllib_error_moved_attributes : Dynamic;
	static public var _urllib_parse_moved_attributes : Dynamic;
	static public var _urllib_request_moved_attributes : Dynamic;
	static public var _urllib_response_moved_attributes : Dynamic;
	static public var _urllib_robotparser_moved_attributes : Dynamic;
	/**
		Class decorator for creating a class with a metaclass.
	**/
	static public function add_metaclass(metaclass:Dynamic):Dynamic;
	/**
		Add an item to six.moves.
	**/
	static public function add_move(move:Dynamic):Dynamic;
	/**
		next(iterator[, default])
		
		Return the next item from the iterator. If default is given and the iterator
		is exhausted, it is returned instead of raising StopIteration.
	**/
	static public function advance_iterator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Byte literal
	**/
	static public function b(s:Dynamic):Dynamic;
	static public function byte2int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return whether the object is callable (i.e., some kind of function).
		
		Note that classes are callable, as are instances of classes with a
		__call__() method.
	**/
	static public function callable(obj:Dynamic):Dynamic;
	static public var class_types : Dynamic;
	/**
		Execute the given source in the context of globals and locals.
		
		The source may be a string representing one or more Python statements
		or a code object as returned by compile().
		The globals must be a dictionary and locals can be any mapping,
		defaulting to the current globals and locals.
		If only globals is given, locals defaults to it.
	**/
	static public function exec_(source:Dynamic, ?globals:Dynamic, ?locals:Dynamic):Dynamic;
	static public function get_function_closure(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_function_code(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_function_defaults(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_function_globals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_method_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_method_self(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get the function out of a possibly unbound function
	**/
	static public function get_unbound_function(unbound:Dynamic):Dynamic;
	/**
		getitem(a, b) -- Same as a[b].
	**/
	static public function indexbytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function int2byte(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var integer_types : Dynamic;
	/**
		iter(iterable) -> iterator
		iter(callable, sentinel) -> iterator
		
		Get an iterator from an object.  In the first form, the argument must
		supply its own iterator, or be a sequence.
		In the second form, the callable is called until it returns the sentinel.
	**/
	static public function iterbytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, kw:Dynamic):Dynamic;
	/**
		Return an iterator over the keys of a dictionary.
	**/
	static public function iterkeys(d:Dynamic, kw:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, [values]) pairs of a dictionary.
	**/
	static public function iterlists(d:Dynamic, kw:Dynamic):Dynamic;
	/**
		Return an iterator over the values of a dictionary.
	**/
	static public function itervalues(d:Dynamic, kw:Dynamic):Dynamic;
	/**
		next(iterator[, default])
		
		Return the next item from the iterator. If default is given and the iterator
		is exhausted, it is returned instead of raising StopIteration.
	**/
	static public function next(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		print(value, ..., sep=' ', end='\n', file=sys.stdout, flush=False)
		
		Prints the values to a stream, or to sys.stdout by default.
		Optional keyword arguments:
		file:  a file-like object (stream); defaults to the current sys.stdout.
		sep:   string inserted between values, default a space.
		end:   string appended after the last value, default a newline.
		flush: whether to forcibly flush the stream.
	**/
	static public function print_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Remove item from six.moves.
	**/
	static public function remove_move(name:Dynamic):Dynamic;
	/**
		Reraise an exception.
	**/
	static public function reraise(tp:Dynamic, value:Dynamic, ?tb:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Text literal
	**/
	static public function u(s:Dynamic):Dynamic;
	/**
		Return a Unicode string of one character with ordinal i; 0 <= i <= 0x10ffff.
	**/
	static public function unichr(i:Dynamic):Dynamic;
	/**
		Create a base class with a metaclass.
	**/
	static public function with_metaclass(meta:Dynamic, bases:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package scipy._lib;
@:pythonImport("scipy._lib.six") extern class Six {
	static public var MAXSIZE : Dynamic;
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
	static public var _func_code : Dynamic;
	static public var _func_defaults : Dynamic;
	/**
		Import module, returning the module after the last dot.
	**/
	static public function _import_module(name:Dynamic):Dynamic;
	static public var _iteritems : Dynamic;
	static public var _iterkeys : Dynamic;
	static public var _itervalues : Dynamic;
	static public var _meth_func : Dynamic;
	static public var _meth_self : Dynamic;
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
	static public function get_function_code(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_function_defaults(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_method_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_method_self(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get the function out of a possibly unbound function
	**/
	static public function get_unbound_function(unbound:Dynamic):Dynamic;
	static public function int2byte(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var integer_types : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic):Dynamic;
	/**
		Return an iterator over the keys of a dictionary.
	**/
	static public function iterkeys(d:Dynamic):Dynamic;
	/**
		Return an iterator over the values of a dictionary.
	**/
	static public function itervalues(d:Dynamic):Dynamic;
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
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Create a base class with a metaclass.
	**/
	static public function with_metaclass(meta:Dynamic, ?base:Dynamic):Dynamic;
}
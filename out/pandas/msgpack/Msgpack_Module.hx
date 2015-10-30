/* This file is generated, do not edit! */
package pandas.msgpack;
@:pythonImport("pandas.msgpack") extern class Msgpack_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Pack object `o` and write it to `stream`
		
		See :class:`Packer` for options.
	**/
	static public function dump(o:Dynamic, stream:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Pack object `o` and return packed bytes
		
		See :class:`Packer` for options.
	**/
	static public function dumps(o:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		unpack(stream, object_hook=None, list_hook=None, bool use_list=1, encoding=None, unicode_errors='strict', object_pairs_hook=None)
		
		Unpack an object from `stream`.
		
		Raises `ValueError` when `stream` has extra bytes.
		
		See :class:`Unpacker` for options.
	**/
	static public function load(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unpackb(packed, object_hook=None, list_hook=None, bool use_list=1, encoding=None, unicode_errors='strict', object_pairs_hook=None, ext_hook=ExtType, Py_ssize_t max_str_len=2147483647, Py_ssize_t max_bin_len=2147483647, Py_ssize_t max_array_len=2147483647, Py_ssize_t max_map_len=2147483647, Py_ssize_t max_ext_len=2147483647)
		
		Unpack packed_bytes to object. Returns an unpacked object.
		
		Raises `ValueError` when `packed` contains extra bytes.
		
		See :class:`Unpacker` for options.
	**/
	static public function loads(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessable by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic):Dynamic;
	/**
		Pack object `o` and write it to `stream`
		
		See :class:`Packer` for options.
	**/
	static public function pack(o:Dynamic, stream:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Pack object `o` and return packed bytes
		
		See :class:`Packer` for options.
	**/
	static public function packb(o:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		unpack(stream, object_hook=None, list_hook=None, bool use_list=1, encoding=None, unicode_errors='strict', object_pairs_hook=None)
		
		Unpack an object from `stream`.
		
		Raises `ValueError` when `stream` has extra bytes.
		
		See :class:`Unpacker` for options.
	**/
	static public function unpack(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unpackb(packed, object_hook=None, list_hook=None, bool use_list=1, encoding=None, unicode_errors='strict', object_pairs_hook=None, ext_hook=ExtType, Py_ssize_t max_str_len=2147483647, Py_ssize_t max_bin_len=2147483647, Py_ssize_t max_array_len=2147483647, Py_ssize_t max_map_len=2147483647, Py_ssize_t max_ext_len=2147483647)
		
		Unpack packed_bytes to object. Returns an unpacked object.
		
		Raises `ValueError` when `packed` contains extra bytes.
		
		See :class:`Unpacker` for options.
	**/
	static public function unpackb(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var version : Dynamic;
}
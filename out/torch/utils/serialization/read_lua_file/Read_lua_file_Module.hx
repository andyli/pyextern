/* This file is generated, do not edit! */
package torch.utils.serialization.read_lua_file;
@:pythonImport("torch.utils.serialization.read_lua_file") extern class Read_lua_file_Module {
	static public function BatchNorm_reader(reader:Dynamic, version:Dynamic, obj:Dynamic):Dynamic;
	static public function GradientReversal_reader(reader:Dynamic, version:Dynamic):Dynamic;
	static public var HAS_CUDA : Dynamic;
	static public var LEGACY_TYPE_RECUR_FUNCTION : Dynamic;
	static public function SpatialContrastiveNormalization_reader(reader:Dynamic, version:Dynamic):Dynamic;
	static public function SpatialDivisiveNormalization_reader(reader:Dynamic, version:Dynamic):Dynamic;
	static public var TYPE_BOOLEAN : Dynamic;
	static public var TYPE_FUNCTION : Dynamic;
	static public var TYPE_NIL : Dynamic;
	static public var TYPE_NUMBER : Dynamic;
	static public var TYPE_RECUR_FUNCTION : Dynamic;
	static public var TYPE_STRING : Dynamic;
	static public var TYPE_TABLE : Dynamic;
	static public var TYPE_TORCH : Dynamic;
	static public function Transpose_reader(reader:Dynamic, version:Dynamic):Dynamic;
	static public function VolumetricAveragePooling_reader(reader:Dynamic, version:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _import_dotted_name(name:Dynamic):Dynamic;
	static public function _load_backend(obj:Dynamic):Dynamic;
	static public function attr_map(module_name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function custom_reader(cls:Dynamic):Dynamic;
	static public function decrement(module_name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function decrement_positive(module_name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ensure_attr(module_name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ensure_type(module_name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_python_class(typename:Dynamic):Dynamic;
	/**
		Loads the given t7 file using default settings; kwargs are forwarded
		to `T7Reader`.
	**/
	static public function load_lua(filename:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function make_none_attr(module_name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function make_storage_reader(typename:Dynamic):Dynamic;
	static public function make_tensor_reader(typename:Dynamic):Dynamic;
	static public var name : Dynamic;
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
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	static public function nn_reader(cls:Dynamic):Dynamic;
	static public var prefix : Dynamic;
	static public var reader_registry : Dynamic;
	static public function register_torch_class(obj_kind:Dynamic, reader_factory:Dynamic):Dynamic;
	static public function registry_addon(fn:Dynamic):Dynamic;
	static public function storage_to_size(module_name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tds_Hash_reader(reader:Dynamic, version:Dynamic):Dynamic;
	static public function tds_Vec_reader(reader:Dynamic, version:Dynamic):Dynamic;
	static public var type2backend : Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}
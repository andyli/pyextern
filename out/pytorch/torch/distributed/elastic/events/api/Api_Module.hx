/* This file is generated, do not edit! */
package torch.distributed.elastic.events.api;
@:pythonImport("torch.distributed.elastic.events.api") extern class Api_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function EventMetadataValue(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return the fields of a dataclass instance as a new dictionary mapping
		field names to field values.
		
		Example usage:
		
		  @dataclass
		  class C:
		      x: int
		      y: int
		
		  c = C(1, 2)
		  assert asdict(c) == {'x': 1, 'y': 2}
		
		If given, 'dict_factory' will be used instead of built-in dict.
		The function applies recursively to field values that are
		dataclass instances. This will also look into built-in containers:
		tuples, lists, and dicts.
	**/
	static public function asdict(obj:Dynamic, ?dict_factory:Dynamic):Dynamic;
	/**
		Returns the same class as was passed in, with dunder methods
		added based on the fields defined in the class.
		
		Examines PEP 526 __annotations__ to determine fields.
		
		If init is true, an __init__() method is added to the class. If
		repr is true, a __repr__() method is added. If order is true, rich
		comparison dunder methods are added. If unsafe_hash is true, a
		__hash__() method function is added. If frozen is true, fields may
		not be assigned to after instance creation.
	**/
	static public function dataclass(?cls:Dynamic, ?init:Dynamic, ?repr:Dynamic, ?eq:Dynamic, ?order:Dynamic, ?unsafe_hash:Dynamic, ?frozen:Dynamic):Dynamic;
	/**
		Return an object to identify dataclass fields.
		
		default is the default value of the field.  default_factory is a
		0-argument function called to initialize a field's value.  If init
		is True, the field will be a parameter to the class's __init__()
		function.  If repr is True, the field will be included in the
		object's repr().  If hash is True, the field will be included in
		the object's hash().  If compare is True, the field will be used
		in comparison functions.  metadata, if specified, must be a
		mapping which is stored but not otherwise examined by dataclass.
		
		It is an error to specify both default and default_factory.
	**/
	static public function field(?_default:Dynamic, ?default_factory:Dynamic, ?init:Dynamic, ?repr:Dynamic, ?hash:Dynamic, ?compare:Dynamic, ?metadata:Dynamic):Dynamic;
}
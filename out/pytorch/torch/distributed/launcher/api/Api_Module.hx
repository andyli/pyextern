/* This file is generated, do not edit! */
package torch.distributed.launcher.api;
@:pythonImport("torch.distributed.launcher.api") extern class Api_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _construct_event(config:Dynamic):Dynamic;
	static public function _get_addr_and_port(rdzv_parameters:Dynamic):Dynamic;
	/**
		Retrive entrypoint name with the rule:
		1. If entrypoint is a function, use ``entrypont.__qualname__``.
		2. If entrypoint is a string, check its value:
		    2.1 if entrypoint equals to ``sys.executable`` (like "python"), use the first element from ``args``
		        which does not start with hifen letter (for example, "-u" will be skipped).
		    2.2 otherwise, use ``entrypoint`` value.
		3. Otherwise, return empty string.
	**/
	static public function _get_entrypoint_name(entrypoint:Dynamic, args:Dynamic):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
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
	/**
		Util function to set up a simple logger that writes
		into stderr. The loglevel is fetched from the LOGLEVEL
		env. variable or WARNING as default. The function will use the
		module name of the caller if no name is provided.
		
		Args:
		    name: Name of the logger. If no name provided, the name will
		          be derived from the call stack.
	**/
	static public function get_logger(?name:Dynamic):Dynamic;
	static public function launch_agent(config:Dynamic, entrypoint:Dynamic, args:Dynamic):Dynamic;
	static public var logger : Dynamic;
	/**
		Extracts the hostname and the port number from a rendezvous endpoint.
		
		Args:
		    endpoint:
		        A string in format <hostname>[:<port>].
		    default_port:
		        The port number to use if the endpoint does not include one.
		
		Returns:
		    A tuple of hostname and port number.
	**/
	static public function parse_rendezvous_endpoint(endpoint:Dynamic, default_port:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package tensorflow.python.autograph.impl.conversion;
@:pythonImport("tensorflow.python.autograph.impl.conversion") extern class Conversion_Module {
	static public var _ALLOWLIST_CACHE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Tests whether the function or method is an instance of a known type.
	**/
	static public function _is_known_loaded_type(f:Dynamic, module_name:Dynamic, entity_name:Dynamic):Dynamic;
	static public function _is_of_known_loaded_module(f:Dynamic, module_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function cache_allowlisted(entity:Dynamic, options:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Checks whether an entity is allowed for use in graph mode.
		
		Examples of allowed entities include all members of the tensorflow
		package.
		
		Args:
		  o: A Python entity.
		  check_call_override: Reserved for internal use. When set to `False`, it
		    disables the rule according to which classes are allowed if their
		    __call__ method is allowed.
		  allow_namedtuple_subclass: Reserved for internal use. When `True`,
		    namedtuple subclasses are not allowed.
		
		Returns:
		  Boolean
	**/
	static public function is_allowlisted(o:Dynamic, ?check_call_override:Dynamic, ?allow_namedtuple_subclass:Dynamic):Dynamic;
	static public function is_in_allowlist_cache(entity:Dynamic, options:Dynamic):Dynamic;
	/**
		Checks whether an entity is supported by AutoGraph at all.
	**/
	static public function is_unsupported(o:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}
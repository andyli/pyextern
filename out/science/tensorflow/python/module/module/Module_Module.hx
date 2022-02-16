/* This file is generated, do not edit! */
package tensorflow.python.module.module;
@:pythonImport("tensorflow.python.module.module") extern class Module_Module {
	static public var _CAMEL_TO_SNAKE_R : Dynamic;
	static public var _VALID_IDENTIFIER : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Implementation of `flatten`.
		
		Args:
		  module: Current module to process.
		  recursive: Whether to recurse into child modules or not.
		  predicate: (Optional) If set then only values matching predicate are
		    yielded. A value of `None` (the default) means no items will be
		    filtered.
		  attribute_traversal_key: (Optional) Method to rekey object attributes
		    before they are sorted. Contract is the same as `key` argument to
		    builtin `sorted` and only applies to object properties.
		  attributes_to_ignore: object attributes to ignored.
		  with_path: (Optional) Whether to include the path to the object as well
		    as the object itself. If `with_path` is `True` then leaves will not be
		    de-duplicated (e.g. if the same leaf instance is reachable via multiple
		    modules then it will be yielded multiple times with different paths).
		  expand_composites: If true, then composite tensors are expanded into their
		    component tensors.
		  module_path: The path to the current module as a tuple.
		  seen: A set containing all leaf IDs seen so far.
		  recursion_stack: A list containing all module IDs associated with the
		    current call stack.
		
		Yields:
		  Matched leaves with the optional corresponding paths of the current module
		  and optionally all its submodules.
	**/
	static public function _flatten_module(module:Dynamic, recursive:Dynamic, predicate:Dynamic, attribute_traversal_key:Dynamic, attributes_to_ignore:Dynamic, with_path:Dynamic, expand_composites:Dynamic, ?module_path:Dynamic, ?seen:Dynamic, ?recursion_stack:Dynamic):Dynamic;
	static public function _is_module(obj:Dynamic):Dynamic;
	static public function _is_non_trainable_variable(obj:Dynamic):Dynamic;
	static public function _is_trainable_variable(obj:Dynamic):Dynamic;
	static public function _is_variable(obj:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function camel_to_snake(value:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function valid_identifier(name:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.common_transformers.anf;
@:pythonImport("tensorflow.python.autograph.pyct.common_transformers.anf") extern class Anf_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Converts the given node to A-normal form (ANF).
		
		The general idea of A-normal form: https://en.wikipedia.org/wiki/A-normal_form
		
		The specific converters used here are based on Python AST semantics as
		documented at https://greentreesnakes.readthedocs.io/en/latest/.
		
		Args:
		  node: The node to transform.
		  entity_info: transformer.EntityInfo.  TODO(mdan): What information does this
		    argument provide?
		  gensym_source: An optional object with the same interface as `DummyGensym`
		    for generating unique names.
	**/
	static public function transform(node:Dynamic, entity_info:Dynamic, ?gensym_source:Dynamic):Dynamic;
}
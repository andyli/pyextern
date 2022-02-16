/* This file is generated, do not edit! */
package tensorflow.python.framework.composite_tensor;
@:pythonImport("tensorflow.python.framework.composite_tensor") extern class Composite_tensor_Module {
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
		Recursively replaces CompositeTensors with their components.
		
		Args:
		  structure: A `nest`-compatible structure, possibly containing composite
		    tensors.
		
		Returns:
		  A copy of `structure`, where each composite tensor has been replaced by
		  its components.  The result will contain no composite tensors.
		  Note that `nest.flatten(replace_composites_with_components(structure))`
		  returns the same value as `nest.flatten(structure)`.
	**/
	static public function replace_composites_with_components(structure:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
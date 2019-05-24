/* This file is generated, do not edit! */
package tensorflow.python.data.util.structure;
@:pythonImport("tensorflow.python.data.util.structure") extern class Structure_Module {
	static public var _STRUCTURE_CONVERSION_FUNCTION_REGISTRY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns a `Structure` that represents the given legacy structure.
		
		This method provides a way to convert from the existing `Dataset` and
		`Iterator` structure-related properties to a `Structure` object. A "legacy"
		structure is represented by the `tf.data.Dataset.output_types`,
		`tf.data.Dataset.output_shapes`, and `tf.data.Dataset.output_classes`
		properties.
		
		TODO(b/110122868): Remove this function once `Structure` is used throughout
		`tf.data`.
		
		Args:
		  output_types: A nested structure of `tf.DType` objects corresponding to
		    each component of a structured value.
		  output_shapes: A nested structure of `tf.TensorShape` objects
		    corresponding to each component a structured value.
		  output_classes: A nested structure of Python `type` objects corresponding
		    to each component of a structured value.
		
		Returns:
		  A `Structure`.
		
		Raises:
		  TypeError: If a structure cannot be built from the arguments, because one of
		    the component classes in `output_classes` is not supported.
	**/
	static public function convert_legacy_structure(output_types:Dynamic, output_shapes:Dynamic, output_classes:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
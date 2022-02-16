/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.compression_ops;
@:pythonImport("tensorflow.python.data.experimental.ops.compression_ops") extern class Compression_ops_Module {
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
		Compress a dataset element.
		
		Args:
		  element: A nested structure of types supported by Tensorflow.
		
		Returns:
		  A variant tensor representing the compressed element. This variant can be
		  passed to `uncompress` to get back the original element.
	**/
	static public function compress(element:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Uncompress a compressed dataset element.
		
		Args:
		  element: A scalar variant tensor to uncompress. The element should have been
		    created by calling `compress`.
		  output_spec: A nested structure of `tf.TypeSpec` representing the type(s) of
		    the uncompressed element.
		
		Returns:
		  The uncompressed element.
	**/
	static public function uncompress(element:Dynamic, output_spec:Dynamic):Dynamic;
}
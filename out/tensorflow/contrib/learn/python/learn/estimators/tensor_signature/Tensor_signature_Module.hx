/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.tensor_signature;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.tensor_signature") extern class Tensor_signature_Module {
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
		Creates example parser from given signatures.
		
		Args:
		  signatures: Dict of `TensorSignature` objects or single `TensorSignature`.
		  examples_batch: string `Tensor` of serialized `Example` proto.
		  single_feature_name: string, single feature name.
		
		Returns:
		  features: `Tensor` or `dict` of `Tensor` objects.
	**/
	static public function create_example_parser_from_signatures(signatures:Dynamic, examples_batch:Dynamic, ?single_feature_name:Dynamic):Dynamic;
	/**
		Creates placeholders from given signatures.
		
		Args:
		  signatures: Dict of `TensorSignature` objects or single `TensorSignature`,
		    or `None`.
		
		Returns:
		  Dict of `tf.placeholder` objects or single `tf.placeholder`, or `None`.
	**/
	static public function create_placeholders_from_signatures(signatures:Dynamic):Dynamic;
	/**
		Creates TensorSignature objects for given tensors.
		
		Args:
		  tensors: Dict of `Tensor` objects or single `Tensor`.
		
		Returns:
		  Dict of `TensorSignature` objects or single `TensorSignature`.
	**/
	static public function create_signatures(tensors:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Check that tensors are compatible with signatures.
		
		Args:
		  tensors: Dict of `Tensor` objects or single `Tensor` object.
		  signatures: Dict of `TensorSignature` objects or
		              single `TensorSignature` object.
		
		Returns:
		  True if all tensors are compatible, False otherwise.
	**/
	static public function tensors_compatible(tensors:Dynamic, signatures:Dynamic):Dynamic;
}
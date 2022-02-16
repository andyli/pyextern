/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_composite_tensor_ops;
@:pythonImport("tensorflow.python.ops.gen_composite_tensor_ops") extern class Gen_composite_tensor_ops_Module {
	/**
		Encodes an `ExtensionType` value into a `variant` scalar Tensor.
		
		Returns a scalar variant tensor containing a single `CompositeTensorVariant`
		with the specified Tensor components and TypeSpec.
		
		Args:
		  components: A list of `Tensor` objects.
		    The component tensors for the extension type value.
		  metadata: A `string`.
		    String serialization for the TypeSpec.  (Note: the encoding for the TypeSpec
		    may change in future versions of TensorFlow.)
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function CompositeTensorVariantFromComponents(components:Dynamic, metadata:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decodes a `variant` scalar Tensor into an `ExtensionType` value.
		
		Returns the Tensor components encoded in a `CompositeTensorVariant`.
		
		Raises an error if `type_spec_proto` doesn't match the TypeSpec
		in `encoded`.
		
		Args:
		  encoded: A `Tensor` of type `variant`.
		    A scalar `variant` Tensor containing an encoded ExtensionType value.
		  metadata: A `string`.
		    String serialization for the TypeSpec.  Must be compatible with the
		    `TypeSpec` contained in `encoded`.  (Note: the encoding for the TypeSpec
		    may change in future versions of TensorFlow.)
		  Tcomponents: A list of `tf.DTypes`. Expected dtypes for components.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tcomponents`.
	**/
	static public function CompositeTensorVariantToComponents(encoded:Dynamic, metadata:Dynamic, Tcomponents:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Encodes an `ExtensionType` value into a `variant` scalar Tensor.
		
		Returns a scalar variant tensor containing a single `CompositeTensorVariant`
		with the specified Tensor components and TypeSpec.
		
		Args:
		  components: A list of `Tensor` objects.
		    The component tensors for the extension type value.
		  metadata: A `string`.
		    String serialization for the TypeSpec.  (Note: the encoding for the TypeSpec
		    may change in future versions of TensorFlow.)
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function composite_tensor_variant_from_components(components:Dynamic, metadata:Dynamic, ?name:Dynamic):Dynamic;
	static public function composite_tensor_variant_from_components_eager_fallback(components:Dynamic, metadata:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Decodes a `variant` scalar Tensor into an `ExtensionType` value.
		
		Returns the Tensor components encoded in a `CompositeTensorVariant`.
		
		Raises an error if `type_spec_proto` doesn't match the TypeSpec
		in `encoded`.
		
		Args:
		  encoded: A `Tensor` of type `variant`.
		    A scalar `variant` Tensor containing an encoded ExtensionType value.
		  metadata: A `string`.
		    String serialization for the TypeSpec.  Must be compatible with the
		    `TypeSpec` contained in `encoded`.  (Note: the encoding for the TypeSpec
		    may change in future versions of TensorFlow.)
		  Tcomponents: A list of `tf.DTypes`. Expected dtypes for components.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tcomponents`.
	**/
	static public function composite_tensor_variant_to_components(encoded:Dynamic, metadata:Dynamic, Tcomponents:Dynamic, ?name:Dynamic):Dynamic;
	static public function composite_tensor_variant_to_components_eager_fallback(encoded:Dynamic, metadata:Dynamic, Tcomponents:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
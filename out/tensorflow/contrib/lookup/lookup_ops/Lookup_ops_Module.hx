/* This file is generated, do not edit! */
package tensorflow.contrib.lookup.lookup_ops;
@:pythonImport("tensorflow.contrib.lookup.lookup_ops") extern class Lookup_ops_Module {
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
	/**
		Maps `tensor` of indices into string values based on `mapping`.
		
		This operation converts `int64` indices into string values. The mapping is
		initialized from a string `mapping` tensor where each element is a value and
		the corresponding index within the tensor is the key.
		
		Any input which does not have a corresponding index in 'mapping'
		(an out-of-vocabulary entry) is assigned the `default_value`
		
		The underlying table must be initialized by calling
		`tf.initialize_all_tables.run()` once.
		
		For example:
		
		```python
		mapping_string = t.constant(["emerson", "lake", "palmer")
		indices = tf.constant([1, 5], tf.int64)
		values = tf.contrib.lookup.index_to_string(
		    indices, mapping=mapping_string, default_value="UNKNOWN")
		...
		tf.initialize_all_tables().run()
		
		values.eval() ==> ["lake", "UNKNOWN"]
		```
		
		Args:
		  tensor: A `int64` `Tensor` with the indices to map to strings.
		  mapping: A 1-D string `Tensor` that specifies the strings to map from
		    indices.
		  default_value: The string value to use for out-of-vocabulary indices.
		  name: A name for this op (optional).
		
		Returns:
		  The strings values associated to the indices. The resultant dense
		  feature value tensor has the same shape as the corresponding `indices`.
	**/
	static public function index_to_string(tensor:Dynamic, mapping:Dynamic, ?default_value:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Maps `tensor` of strings into `int64` indices based on `mapping`.
		
		This operation converts `tensor` of strings into `int64` indices.
		The mapping is initialized from a string `mapping` tensor where each element
		is a key and corresponding index within the tensor is the value.
		
		Any entry in the input which does not have a corresponding entry in 'mapping'
		(an out-of-vocabulary entry) is assigned the `default_value`
		
		Elements in `mapping` cannot be duplicated, otherwise the initialization
		will throw a FailedPreconditionError.
		
		The underlying table must be initialized by calling
		`tf.initialize_all_tables.run()` once.
		
		For example:
		
		```python
		mapping_strings = t.constant(["emerson", "lake", "palmer")
		feats = tf.constant(["emerson", "lake", "and", "palmer"])
		ids = tf.contrib.lookup.string_to_index(
		    feats, mapping=mapping_strings, default_value=-1)
		...
		tf.initialize_all_tables().run()
		
		ids.eval()  ==> [0, 1, -1, 2]
		```
		
		Args:
		  tensor: A 1-D input `Tensor` with the strings to map to indices.
		  mapping: A 1-D string `Tensor` that specifies the mapping of strings to
		    indices.
		  default_value: The `int64` value to use for out-of-vocabulary strings.
		    Defaults to -1.
		  name: A name for this op (optional).
		
		Returns:
		  The mapped indices. It has the same shape and tensor type (dense or sparse)
		  as `tensor`.
	**/
	static public function string_to_index(tensor:Dynamic, mapping:Dynamic, ?default_value:Dynamic, ?name:Dynamic):Dynamic;
}
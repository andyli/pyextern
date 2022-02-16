/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.cardinality;
@:pythonImport("tensorflow.python.data.experimental.ops.cardinality") extern class Cardinality_Module {
	static public var INFINITE : Dynamic;
	static public var UNKNOWN : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _tf_api_constants : Dynamic;
	static public var _tf_api_constants_v1 : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Asserts the cardinality of the input dataset.
		
		NOTE: The following assumes that "examples.tfrecord" contains 42 records.
		
		>>> dataset = tf.data.TFRecordDataset("examples.tfrecord")
		>>> cardinality = tf.data.experimental.cardinality(dataset)
		>>> print((cardinality == tf.data.experimental.UNKNOWN_CARDINALITY).numpy())
		True
		>>> dataset = dataset.apply(tf.data.experimental.assert_cardinality(42))
		>>> print(tf.data.experimental.cardinality(dataset).numpy())
		42
		
		Args:
		  expected_cardinality: The expected cardinality of the input dataset.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  FailedPreconditionError: The assertion is checked at runtime (when iterating
		    the dataset) and an error is raised if the actual and expected cardinality
		    differ.
	**/
	static public function assert_cardinality(expected_cardinality:Dynamic):Dynamic;
	/**
		Returns the cardinality of `dataset`, if known.
		
		The operation returns the cardinality of `dataset`. The operation may return
		`tf.data.experimental.INFINITE_CARDINALITY` if `dataset` contains an infinite
		number of elements or `tf.data.experimental.UNKNOWN_CARDINALITY` if the
		analysis fails to determine the number of elements in `dataset` (e.g. when the
		dataset source is a file).
		
		>>> dataset = tf.data.Dataset.range(42)
		>>> print(tf.data.experimental.cardinality(dataset).numpy())
		42
		>>> dataset = dataset.repeat()
		>>> cardinality = tf.data.experimental.cardinality(dataset)
		>>> print((cardinality == tf.data.experimental.INFINITE_CARDINALITY).numpy())
		True
		>>> dataset = dataset.filter(lambda x: True)
		>>> cardinality = tf.data.experimental.cardinality(dataset)
		>>> print((cardinality == tf.data.experimental.UNKNOWN_CARDINALITY).numpy())
		True
		
		Args:
		  dataset: A `tf.data.Dataset` for which to determine cardinality.
		
		Returns:
		  A scalar `tf.int64` `Tensor` representing the cardinality of `dataset`. If
		  the cardinality is infinite or unknown, the operation returns the named
		  constant `INFINITE_CARDINALITY` and `UNKNOWN_CARDINALITY` respectively.
	**/
	static public function cardinality(dataset:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
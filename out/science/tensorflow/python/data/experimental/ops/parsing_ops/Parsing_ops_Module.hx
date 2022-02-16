/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.parsing_ops;
@:pythonImport("tensorflow.python.data.experimental.ops.parsing_ops") extern class Parsing_ops_Module {
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
		A transformation that parses `Example` protos into a `dict` of tensors.
		
		Parses a number of serialized `Example` protos given in `serialized`. We refer
		to `serialized` as a batch with `batch_size` many entries of individual
		`Example` protos.
		
		This op parses serialized examples into a dictionary mapping keys to `Tensor`,
		`SparseTensor`, and `RaggedTensor` objects. `features` is a dict from keys to
		`VarLenFeature`, `RaggedFeature`, `SparseFeature`, and `FixedLenFeature`
		objects. Each `VarLenFeature` and `SparseFeature` is mapped to a
		`SparseTensor`; each `RaggedFeature` is mapped to a `RaggedTensor`; and each
		`FixedLenFeature` is mapped to a `Tensor`. See `tf.io.parse_example` for more
		details about feature dictionaries.
		
		Args:
		 features: A `dict` mapping feature keys to `FixedLenFeature`,
		   `VarLenFeature`, `RaggedFeature`, and `SparseFeature` values.
		 num_parallel_calls: (Optional.) A `tf.int32` scalar `tf.Tensor`,
		    representing the number of parsing processes to call in parallel.
		 deterministic: (Optional.) A boolean controlling whether determinism
		    should be traded for performance by allowing elements to be produced out
		    of order if some parsing calls complete faster than others. If
		    `deterministic` is `None`, the
		    `tf.data.Options.deterministic` dataset option (`True` by default) is used
		    to decide whether to produce elements deterministically.
		
		Returns:
		  A dataset transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: if features argument is None.
	**/
	static public function parse_example_dataset(features:Dynamic, ?num_parallel_calls:Dynamic, ?deterministic:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
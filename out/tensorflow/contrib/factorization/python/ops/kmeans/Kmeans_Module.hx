/* This file is generated, do not edit! */
package tensorflow.contrib.factorization.python.ops.kmeans;
@:pythonImport("tensorflow.contrib.factorization.python.ops.kmeans") extern class Kmeans_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function to convert the input points into a usable format.
		
		Args:
		  features: The input features.
		  feature_columns: An optionable iterable containing all the feature columns
		    used by the model. All items in the set should be feature column instances
		    that can be passed to `tf.feature_column.input_layer`. If this is None,
		    all features will be used.
		
		Returns:
		  If `features` is a dict of `k` features (optionally filtered by
		  `feature_columns`), each of which is a vector of `n` scalars, the return
		  value is a Tensor of shape `(n, k)` representing `n` input points, where the
		  items in the `k` dimension are sorted lexicographically by `features` key.
		  If `features` is not a dict, it is returned unmodified.
	**/
	static public function _parse_features_if_necessary(features:Dynamic, feature_columns:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}
/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.dataframe.estimator_utils;
@:pythonImport("tensorflow.contrib.learn.python.learn.dataframe.estimator_utils") extern class Estimator_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Create an alternate universe assuming that the base series are defined.
		
		The resulting graph will be used with an `input_fn` that provides exactly
		those features.
		
		Args:
		  dataframe: the underlying `DataFrame`
		  base_input_keys_with_defaults: a `dict` from the names of columns to
		    considered base features to their default values.
		  feature_keys: the names of columns to be used as features (including base
		    features and derived features).
		
		Returns:
		  A `dict` mapping names to rebuilt `Series`.
	**/
	static public function _build_alternate_universe(dataframe:Dynamic, base_input_keys_with_defaults:Dynamic, feature_keys:Dynamic):Dynamic;
	static public function _infer_feature_specs(dataframe:Dynamic, keys_with_defaults:Dynamic):Dynamic;
	static public function _to_feature_spec(tensor:Dynamic, ?default_value:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Build a list of FeatureColumns and an input_fn for use with Estimator.
		
		Args:
		  dataframe: the underlying dataframe
		  base_input_keys_with_defaults: a dict from the names of columns to be
		    considered base features to their default values.  These columns will be
		    fed via input_fn.
		  feature_keys: the names of columns from which to generate FeatureColumns.
		    These may include base features and/or derived features.
		  label_keys: the names of columns to be used as labels.  None is
		    acceptable for unsupervised learning.
		  **kwargs: Additional keyword arguments, unused here.
		
		Returns:
		  A tuple of two elements:
		  * A list of `FeatureColumn`s to be used when constructing an Estimator
		  * An input_fn, i.e. a function that returns a pair of dicts
		    (features, labels), each mapping string names to Tensors.
		    the feature dict provides mappings for all the base columns required
		    by the FeatureColumns.
		
		Raises:
		  ValueError: when the feature and label key sets are non-disjoint, or the
		    base_input and label sets are non-disjoint.
	**/
	static public function to_feature_columns_and_input_fn(dataframe:Dynamic, base_input_keys_with_defaults:Dynamic, feature_keys:Dynamic, ?label_keys:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
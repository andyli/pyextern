/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.kmeans;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.kmeans") extern class Kmeans_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Model function for KMeansClustering estimator.
	**/
	static public function _kmeans_clustering_model_fn(features:Dynamic, labels:Dynamic, mode:Dynamic, params:Dynamic, config:Dynamic):Dynamic;
	/**
		Helper function to parse features.
	**/
	static public function _parse_tensor_or_dict(features:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Produces the content of `output_tensor` only after `dependencies`.
		
		In some cases, a user may want the output of an operation to be
		consumed externally only after some other dependencies have run
		first. This function ensures returns `output_tensor`, but only after all
		operations in `dependencies` have run. Note that this means that there is
		no guarantee that `output_tensor` will be evaluated after any `dependencies`
		have run.
		
		See also @{tf.tuple$tuple} and @{tf.group$group}.
		
		Args:
		  dependencies: Iterable of operations to run before this op finishes.
		  output_tensor: A `Tensor` or `IndexedSlices` that will be returned.
		  name: (Optional) A name for this operation.
		
		Returns:
		  Same as `output_tensor`.
		
		Raises:
		  TypeError: if `output_tensor` is not a `Tensor` or `IndexedSlices`.
	**/
	static public function with_dependencies(dependencies:Dynamic, output_tensor:Dynamic, ?name:Dynamic):Dynamic;
}
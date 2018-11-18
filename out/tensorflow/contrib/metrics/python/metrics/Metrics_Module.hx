/* This file is generated, do not edit! */
package tensorflow.contrib.metrics.python.metrics;
@:pythonImport("tensorflow.contrib.metrics.python.metrics") extern class Metrics_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Computes the percentage of times that predictions matches labels.
		
		Args:
		  predictions: the predicted values, a `Tensor` whose dtype and shape
		               matches 'labels'.
		  labels: the ground truth values, a `Tensor` of any shape and
		          bool, integer, or string dtype.
		  weights: None or `Tensor` of float values to reweight the accuracy.
		  name: A name for the operation (optional).
		
		Returns:
		  Accuracy `Tensor`.
		
		Raises:
		  ValueError: if dtypes don't match or
		              if dtype is not bool, integer, or string.
	**/
	static public function accuracy(predictions:Dynamic, labels:Dynamic, ?weights:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Computes the approximately best F1-score across different thresholds.
		
		The f1_score function applies a range of thresholds to the predictions to
		convert them from [0, 1] to bool. Precision and recall are computed by
		comparing them to the labels. The F1-Score is then defined as
		2 * precision * recall / (precision + recall). The best one across the
		thresholds is returned.
		
		Disclaimer: In practice it may be desirable to choose the best threshold on
		the validation set and evaluate the F1 score with this threshold on a
		separate test set. Or it may be desirable to use a fixed threshold (e.g. 0.5).
		
		This function internally creates four local variables, `true_positives`,
		`true_negatives`, `false_positives` and `false_negatives` that are used to
		compute the pairs of recall and precision values for a linearly spaced set of
		thresholds from which the best f1-score is derived.
		
		This value is ultimately returned as `f1-score`, an idempotent operation that
		computes the F1-score (computed using the aforementioned variables). The
		`num_thresholds` variable controls the degree of discretization with larger
		numbers of thresholds more closely approximating the true best F1-score.
		
		For estimation of the metric over a stream of data, the function creates an
		`update_op` operation that updates these variables and returns the F1-score.
		
		Example usage with a custom estimator:
		def model_fn(features, labels, mode):
		  predictions = make_predictions(features)
		  loss = make_loss(predictions, labels)
		  train_op = tf.contrib.training.create_train_op(
		        total_loss=loss,
		        optimizer='Adam')
		  eval_metric_ops = {'f1': f1_score(labels, predictions)}
		  return tf.estimator.EstimatorSpec(
		      mode=mode,
		      predictions=predictions,
		      loss=loss,
		      train_op=train_op,
		      eval_metric_ops=eval_metric_ops,
		      export_outputs=export_outputs)
		estimator = tf.estimator.Estimator(model_fn=model_fn)
		
		If `weights` is `None`, weights default to 1. Use weights of 0 to mask values.
		
		Args:
		  labels: A `Tensor` whose shape matches `predictions`. Will be cast to
		    `bool`.
		  predictions: A floating point `Tensor` of arbitrary shape and whose values
		    are in the range `[0, 1]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `labels` dimension).
		  num_thresholds: The number of thresholds to use when discretizing the roc
		    curve.
		  metrics_collections: An optional list of collections that `f1_score` should
		    be added to.
		  updates_collections: An optional list of collections that `update_op` should
		    be added to.
		  name: An optional variable_scope name.
		
		Returns:
		  f1_score: A scalar `Tensor` representing the current best f1-score across
		    different thresholds.
		  update_op: An operation that increments the `true_positives`,
		    `true_negatives`, `false_positives` and `false_negatives` variables
		    appropriately and whose value matches the `f1_score`.
		
		Raises:
		  ValueError: If `predictions` and `labels` have mismatched shapes, or if
		    `weights` is not `None` and its shape doesn't match `predictions`, or if
		    either `metrics_collections` or `updates_collections` are not a list or
		    tuple.
	**/
	static public function f1_score(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?num_thresholds:Dynamic, ?metrics_collections:Dynamic, ?updates_collections:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}
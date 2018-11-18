/* This file is generated, do not edit! */
package tensorflow.python.ops.confusion_matrix;
@:pythonImport("tensorflow.python.ops.confusion_matrix") extern class Confusion_matrix_Module {
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
		Computes the confusion matrix from predictions and labels.
		
		The matrix columns represent the prediction labels and the rows represent the
		real labels. The confusion matrix is always a 2-D array of shape `[n, n]`,
		where `n` is the number of valid labels for a given classification task. Both
		prediction and labels must be 1-D arrays of the same shape in order for this
		function to work.
		
		If `num_classes` is `None`, then `num_classes` will be set to one plus the
		maximum value in either predictions or labels. Class labels are expected to
		start at 0. For example, if `num_classes` is 3, then the possible labels
		would be `[0, 1, 2]`.
		
		If `weights` is not `None`, then each prediction contributes its
		corresponding weight to the total value of the confusion matrix cell.
		
		For example:
		
		```python
		  tf.confusion_matrix([1, 2, 4], [2, 2, 4]) ==>
		      [[0 0 0 0 0]
		       [0 0 1 0 0]
		       [0 0 1 0 0]
		       [0 0 0 0 0]
		       [0 0 0 0 1]]
		```
		
		Note that the possible labels are assumed to be `[0, 1, 2, 3, 4]`,
		resulting in a 5x5 confusion matrix.
		
		Args:
		  labels: 1-D `Tensor` of real labels for the classification task.
		  predictions: 1-D `Tensor` of predictions for a given classification.
		  num_classes: The possible number of labels the classification task can
		               have. If this value is not provided, it will be calculated
		               using both predictions and labels array.
		  dtype: Data type of the confusion matrix.
		  name: Scope name.
		  weights: An optional `Tensor` whose shape matches `predictions`.
		
		Returns:
		  A `Tensor` of type `dtype` with shape `[n, n]` representing the confusion
		  matrix, where `n` is the number of possible labels in the classification
		  task.
		
		Raises:
		  ValueError: If both predictions and labels are not 1-D vectors and have
		    mismatched shapes, or if `weights` is not `None` and its shape doesn't
		    match `predictions`.
	**/
	static public function confusion_matrix(labels:Dynamic, predictions:Dynamic, ?num_classes:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?weights:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Squeeze last dim if ranks differ from expected by exactly 1.
		
		In the common case where we expect shapes to match, `expected_rank_diff`
		defaults to 0, and we squeeze the last dimension of the larger rank if they
		differ by 1.
		
		But, for example, if `labels` contains class IDs and `predictions` contains 1
		probability per class, we expect `predictions` to have 1 more dimension than
		`labels`, so `expected_rank_diff` would be 1. In this case, we'd squeeze
		`labels` if `rank(predictions) - rank(labels) == 0`, and
		`predictions` if `rank(predictions) - rank(labels) == 2`.
		
		This will use static shape if available. Otherwise, it will add graph
		operations, which could result in a performance hit.
		
		Args:
		  labels: Label values, a `Tensor` whose dimensions match `predictions`.
		  predictions: Predicted values, a `Tensor` of arbitrary dimensions.
		  expected_rank_diff: Expected result of `rank(predictions) - rank(labels)`.
		  name: Name of the op.
		
		Returns:
		  Tuple of `labels` and `predictions`, possibly with last dim squeezed.
	**/
	static public function remove_squeezable_dimensions(labels:Dynamic, predictions:Dynamic, ?expected_rank_diff:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
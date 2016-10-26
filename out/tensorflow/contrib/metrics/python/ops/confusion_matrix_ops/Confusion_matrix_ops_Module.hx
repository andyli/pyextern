/* This file is generated, do not edit! */
package tensorflow.contrib.metrics.python.ops.confusion_matrix_ops;
@:pythonImport("tensorflow.contrib.metrics.python.ops.confusion_matrix_ops") extern class Confusion_matrix_ops_Module {
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
		
		Calculate the Confusion Matrix for a pair of prediction and
		label 1-D int arrays.
		
		Considering a prediction array such as: `[1, 2, 3]`
		And a label array such as: `[2, 2, 3]`
		
		The confusion matrix returned would be the following one:
		    [[0, 0, 0]
		     [0, 1, 0]
		     [0, 1, 0]
		     [0, 0, 1]]
		
		Where the matrix rows represent the prediction labels and the columns
		represents the real labels. The confusion matrix is always a 2-D array
		of shape [n, n], where n is the number of valid labels for a given
		classification task. Both prediction and labels must be 1-D arrays of
		the same shape in order for this function to work.
		
		Args:
		  predictions: A 1-D array represeting the predictions for a given
		               classification.
		  labels: A 1-D represeting the real labels for the classification task.
		  num_classes: The possible number of labels the classification task can
		               have. If this value is not provided, it will be calculated
		               using both predictions and labels array.
		  dtype: Data type of the confusion matrix.
		  name: Scope name.
		
		Returns:
		  A l X l matrix represeting the confusion matrix, where l in the number of
		  possible labels in the classification task.
		
		Raises:
		  ValueError: If both predictions and labels are not 1-D vectors and do not
		              have the same size.
	**/
	static public function confusion_matrix(predictions:Dynamic, labels:Dynamic, ?num_classes:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}
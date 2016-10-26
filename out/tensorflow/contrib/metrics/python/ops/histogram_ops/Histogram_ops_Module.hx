/* This file is generated, do not edit! */
package tensorflow.contrib.metrics.python.ops.histogram_ops;
@:pythonImport("tensorflow.contrib.metrics.python.ops.histogram_ops") extern class Histogram_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert histograms to auc.
		
		Args:
		  hist_true_acc:  `Tensor` holding accumulated histogram of scores for records
		    that were `True`.
		  hist_false_acc:  `Tensor` holding accumulated histogram of scores for
		    records that were `False`.
		  nbins:  Integer number of bins in the histograms.
		
		Returns:
		  Scalar `Tensor` estimating AUC.
	**/
	static public function _auc_convert_hist_to_auc(hist_true_acc:Dynamic, hist_false_acc:Dynamic, nbins:Dynamic):Dynamic;
	/**
		Accumulate histograms in new variables.
	**/
	static public function _auc_hist_accumulate(hist_true:Dynamic, hist_false:Dynamic, nbins:Dynamic, collections:Dynamic):Dynamic;
	/**
		Check the rank of labels/scores, return tensor versions.
	**/
	static public function _check_labels_and_scores(boolean_labels:Dynamic, scores:Dynamic, check_shape:Dynamic):Dynamic;
	/**
		Create histogram tensors from one batch of labels/scores.
	**/
	static public function _make_auc_histograms(boolean_labels:Dynamic, scores:Dynamic, score_range:Dynamic, nbins:Dynamic):Dynamic;
	/**
		Cumsum of a 1D tensor with defined shape by padding and convolving.
	**/
	static public function _strict_1d_cumsum(tensor:Dynamic, len_tensor:Dynamic):Dynamic;
	/**
		Return x * h for rank 1 tensors x and h.
	**/
	static public function _strict_conv1d(x:Dynamic, h:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		AUC computed by maintaining histograms.
		
		Rather than computing AUC directly, this Op maintains Variables containing
		histograms of the scores associated with `True` and `False` labels.  By
		comparing these the AUC is generated, with some discretization error.
		See: "Efficient AUC Learning Curve Calculation" by Bouckaert.
		
		This AUC Op updates in `O(batch_size + nbins)` time and works well even with
		large class imbalance.  The accuracy is limited by discretization error due
		to finite number of bins.  If scores are concentrated in a fewer bins,
		accuracy is lower.  If this is a concern, we recommend trying different
		numbers of bins and comparing results.
		
		Args:
		  boolean_labels:  1-D boolean `Tensor`.  Entry is `True` if the corresponding
		    record is in class.
		  scores:  1-D numeric `Tensor`, same shape as boolean_labels.
		  score_range:  `Tensor` of shape `[2]`, same dtype as `scores`.  The min/max
		    values of score that we expect.  Scores outside range will be clipped.
		  nbins:  Integer number of bins to use.  Accuracy strictly increases as the
		    number of bins increases.
		  collections: List of graph collections keys. Internal histogram Variables
		    are added to these collections. Defaults to `[GraphKeys.LOCAL_VARIABLES]`.
		  check_shape:  Boolean.  If `True`, do a runtime shape check on the scores
		    and labels.
		  name:  A name for this Op.  Defaults to "auc_using_histogram".
		
		Returns:
		  auc:  `float32` scalar `Tensor`.  Fetching this converts internal histograms
		    to auc value.
		  update_op:  `Op`, when run, updates internal histograms.
	**/
	static public function auc_using_histogram(boolean_labels:Dynamic, scores:Dynamic, score_range:Dynamic, ?nbins:Dynamic, ?collections:Dynamic, ?check_shape:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}
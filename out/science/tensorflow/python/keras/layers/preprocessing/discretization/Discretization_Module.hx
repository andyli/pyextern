/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.preprocessing.discretization;
@:pythonImport("tensorflow.python.keras.layers.preprocessing.discretization") extern class Discretization_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compress a summary with numpy.
	**/
	static public function _compress_summary_numpy(summary:Dynamic, epsilon:Dynamic):Dynamic;
	/**
		Compress a summary to within `epsilon` accuracy.
		
		The compression step is needed to keep the summary sizes small after merging,
		and also used to return the final target boundaries. It finds the new bins
		based on interpolating cumulative weight percentages from the large summary.
		Taking the difference of the cumulative weights from the previous bin's
		cumulative weight will give the new weight for that bin.
		
		Args:
		    summary: 2-D `np.ndarray` summary to be compressed.
		    epsilon: A `'float32'` that determines the approxmiate desired precision.
		
		Returns:
		    A 2-D `np.ndarray` that is a compressed summary. First column is the
		    interpolated partition values, the second is the weights (counts).
	**/
	static public function compress(summary:Dynamic, epsilon:Dynamic):Dynamic;
	static public function get_bin_boundaries(summary:Dynamic, num_bins:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Weighted merge sort of summaries.
		
		Given two summaries of distinct data, this function merges (and compresses)
		them to stay within `epsilon` error tolerance.
		
		Args:
		    prev_summary: 2-D `np.ndarray` summary to be merged with `next_summary`.
		    next_summary: 2-D `np.ndarray` summary to be merged with `prev_summary`.
		    epsilon: A float that determines the approxmiate desired precision.
		
		Returns:
		    A 2-D `np.ndarray` that is a merged summary. First column is the
		    interpolated partition values, the second is the weights (counts).
	**/
	static public function merge_summaries(prev_summary:Dynamic, next_summary:Dynamic, epsilon:Dynamic):Dynamic;
	/**
		Reduce a 1D sequence of values to a summary.
		
		This algorithm is based on numpy.quantiles but modified to allow for
		intermediate steps between multiple data sets. It first finds the target
		number of bins as the reciprocal of epsilon and then takes the individual
		values spaced at appropriate intervals to arrive at that target.
		The final step is to return the corresponding counts between those values
		If the target num_bins is larger than the size of values, the whole array is
		returned (with weights of 1).
		
		Args:
		    values: 1-D `np.ndarray` to be summarized.
		    epsilon: A `'float32'` that determines the approxmiate desired precision.
		
		Returns:
		    A 2-D `np.ndarray` that is a summary of the inputs. First column is the
		    interpolated partition values, the second is the weights (counts).
	**/
	static public function summarize(values:Dynamic, epsilon:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.state_space_models.filtering_postprocessor;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.state_space_models.filtering_postprocessor") extern class Filtering_postprocessor_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Interpolate between two model states linearly.
	**/
	static public function _interpolate_state_linear(first_state:Dynamic, second_state:Dynamic, first_responsibility:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		A Cauchy anomaly distribution, centered at a Gaussian prediction.
		
		Performs an entropy-matching approximation of the scale parameters of
		independent Cauchy distributions given the covariance matrix of a multivariate
		Gaussian in outputs["covariance"], and centers the Cauchy distributions at
		outputs["mean"]. This requires that the model that we are creating an
		alternative/anomaly distribution for produces a mean and covariance.
		
		Args:
		  current_times: A [batch size] Tensor of times, unused.
		  current_values: A [batch size x num features] Tensor of values to evaluate
		      the anomaly distribution at.
		  outputs: A dictionary of Tensors with keys "mean" and "covariance"
		      describing the Gaussian to construct an anomaly distribution from. The
		      value corresponding to "mean" has shape [batch size x num features], and
		      the value corresponding to "covariance" has shape [batch size x num
		      features x num features].
		Returns:
		  A [batch size] Tensor of log likelihoods; the anomaly log PDF evaluated at
		  `current_values`.
	**/
	static public function cauchy_alternative_to_gaussian(current_times:Dynamic, current_values:Dynamic, outputs:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}
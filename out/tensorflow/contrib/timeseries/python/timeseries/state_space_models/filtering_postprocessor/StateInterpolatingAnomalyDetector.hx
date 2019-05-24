/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.state_space_models.filtering_postprocessor;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.state_space_models.filtering_postprocessor", "StateInterpolatingAnomalyDetector") extern class StateInterpolatingAnomalyDetector {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Configure the anomaly detector.
		
		Args:
		  anomaly_log_likelihood: A function taking `current_times`,
		      `current_values`, and `outputs` (same as the corresponding arguments
		      to process_filtering_step) and returning a [batch size] Tensor of log
		      likelihoods under an anomaly distribution.
		  anomaly_prior_probability: A scalar value, between 0 and 1, indicating the
		      prior probability of a particular example being an anomaly.
		  responsibility_scaling: A positive scalar controlling how fast
		      interpolation transitions between not-anomaly and anomaly; lower
		      values (closer to 0) create a smoother/slower transition.
	**/
	@:native("__init__")
	public function ___init__(?anomaly_log_likelihood:Dynamic, ?anomaly_prior_probability:Dynamic, ?responsibility_scaling:Dynamic):Dynamic;
	/**
		Configure the anomaly detector.
		
		Args:
		  anomaly_log_likelihood: A function taking `current_times`,
		      `current_values`, and `outputs` (same as the corresponding arguments
		      to process_filtering_step) and returning a [batch size] Tensor of log
		      likelihoods under an anomaly distribution.
		  anomaly_prior_probability: A scalar value, between 0 and 1, indicating the
		      prior probability of a particular example being an anomaly.
		  responsibility_scaling: A positive scalar controlling how fast
		      interpolation transitions between not-anomaly and anomaly; lower
		      values (closer to 0) create a smoother/slower transition.
	**/
	public function new(?anomaly_log_likelihood:Dynamic, ?anomaly_prior_probability:Dynamic, ?responsibility_scaling:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	static public var output_names : Dynamic;
	/**
		Fall back on `predicted_state` for anomalies.
		
		Args:
		  current_times: A [batch size] integer Tensor of times.
		  current_values: A [batch size x num features] Tensor of values filtering
		      is being performed on.
		  predicted_state: A (possibly nested) list of Tensors indicating model
		      state which does not take `current_times` and `current_values` into
		      account.
		  filtered_state: Same structure as predicted_state, but updated to take
		      `current_times` and `current_values` into account.
		  outputs: A dictionary of outputs produced by model filtering. Must
		      include `log_likelihood`, a [batch size] Tensor indicating the log
		      likelihood of the observations under the model's predictions.
		Returns:
		  A tuple of (new_state, updated_outputs);
		    new_state: Updated state with the same structure as `filtered_state` and
		        `predicted_state`; predicted_state for anomalies and filtered_state
		        otherwise (per batch element).
		    updated_outputs: The `outputs` dictionary, updated with a new "loss"
		        (the interpolated negative log likelihoods under the model and
		        anomaly distributions) and "anomaly_score" (the log odds ratio of
		        each part of the batch being an anomaly).
	**/
	public function process_filtering_step(current_times:Dynamic, current_values:Dynamic, predicted_state:Dynamic, filtered_state:Dynamic, outputs:Dynamic):Dynamic;
}
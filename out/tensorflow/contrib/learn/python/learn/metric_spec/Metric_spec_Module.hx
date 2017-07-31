/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.metric_spec;
@:pythonImport("tensorflow.contrib.learn.python.learn.metric_spec") extern class Metric_spec_Module {
	static public var _CANONICAL_LABELS_ARG : Dynamic;
	static public var _CANONICAL_PREDICTIONS_ARG : Dynamic;
	static public var _CANONICAL_WEIGHTS_ARG : Dynamic;
	static public var _LABELS_ARGS : Dynamic;
	static public var _PREDICTIONS_ARGS : Dynamic;
	static public var _WEIGHTS_ARGS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adapt `metric_fn` to take only named args.
		
		This returns a function that takes only named args `labels`, `predictions`,
		and `weights`, and invokes `metric_fn` according to the following rules:
		- If `metric_fn` args include exactly one of `_LABELS_ARGS`, that arg is
		  passed (usually by name, but positionally if both it and `predictions` need
		  to be passed positionally). Otherwise, `labels` are omitted.
		- If `metric_fn` args include exactly one of `_PREDICTIONS_ARGS`, that arg is
		  passed by name. Otherwise, `predictions` are passed positionally as the
		  first non-label argument.
		- If exactly one of `_WEIGHTS_ARGS` is provided, that arg is passed by
		  name.
		
		Args:
		  metric_fn: Metric function to be wrapped.
		  metric_fn_name: `metric_fn` name, only used for logging.
		  is_labels_required: Whether `labels` is a required arg.
		  is_weights_required: Whether `weights` is a required arg.
		
		Returns:
		  Function accepting only named args `labels, `predictions`, and `weights`,
		  and passing those to `metric_fn`.
		
		Raises:
		  ValueError: if one of the following is true:
		  - `metric_fn` has more than one arg of `_LABELS_ARGS`, `_PREDICTIONS_ARGS`,
		    or `_WEIGHTS_ARGS`
		  - `is_labels_required` is true, and `metric_fn` has no arg from
		    `_LABELS_ARGS`.
		  - `is_weights_required` is true, and `metric_fn` has no arg from
		    `_WEIGHTS_ARGS`.
	**/
	static public function _adapt_metric_fn(metric_fn:Dynamic, metric_fn_name:Dynamic, is_labels_required:Dynamic, is_weights_required:Dynamic):Dynamic;
	/**
		Get argument names for function-like object.
		
		Args:
		  fn: Function, or function-like object (e.g., result of `functools.partial`).
		
		Returns:
		  `tuple` of string argument names.
	**/
	static public function _args(fn:Dynamic):Dynamic;
	static public function _assert_named_args(sentinel:Dynamic):Dynamic;
	static public function _fn_name(fn:Dynamic):Dynamic;
	/**
		Find single argument in `args` from `candidate_args`.
		
		Args:
		  fn_name: Function name, only used for error string.
		  fn_args: String argument names to `fn_name` function.
		  candidate_args: Candidate argument names to find in `args`.
		  canonical_arg: Canonical argument name in `candidate_args`. This is only
		    used to log a warning if a non-canonical match is found.
		  is_required: Whether function is required to have an arg in
		    `candidate_args`.
		
		Returns:
		  String argument name if found, or `None` if not found.
		
		Raises:
		  ValueError: if 2 candidates are found, or 0 are found and `is_required` is
		    set.
	**/
	static public function _matching_arg(fn_name:Dynamic, fn_args:Dynamic, candidate_args:Dynamic, canonical_arg:Dynamic, ?is_required:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}
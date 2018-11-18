/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.monitors;
@:pythonImport("tensorflow.contrib.learn.python.learn.monitors") extern class Monitors_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Retrieves Graph element.
	**/
	static public function _as_graph_element(obj:Dynamic):Dynamic;
	static public function _extract_output(outputs:Dynamic, request:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns a default set of typically-used monitors. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.train.MonitoredTrainingSession.
		
		Args:
		  loss_op: `Tensor`, the loss tensor. This will be printed using `PrintTensor`
		      at the default interval.
		  summary_op: See `SummarySaver`.
		  save_summary_steps: See `SummarySaver`.
		  output_dir:  See `SummarySaver`.
		  summary_writer:  See `SummarySaver`.
		Returns:
		  `list` of monitors.
	**/
	static public function get_default_monitors(?loss_op:Dynamic, ?summary_op:Dynamic, ?save_summary_steps:Dynamic, ?output_dir:Dynamic, ?summary_writer:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Wraps monitors with a hook.
		
		`Monitor` is deprecated in favor of `SessionRunHook`. If you're using a
		monitor, you can wrap it with a hook using function. It is recommended to
		implement hook version of your monitor.
		
		Args:
		  monitors_or_hooks: A `list` may contain both monitors and hooks.
		  estimator: An `Estimator` that monitor will be used with.
		
		Returns:
		  Returns a list of hooks. If there is any monitor in the given list, it is
		  replaced by a hook.
	**/
	static public function replace_monitors_with_hooks(monitors_or_hooks:Dynamic, estimator:Dynamic):Dynamic;
}
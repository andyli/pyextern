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
	static public function _extract_output(outputs:Dynamic, request:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns a default set of typically-used monitors.
		
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
}
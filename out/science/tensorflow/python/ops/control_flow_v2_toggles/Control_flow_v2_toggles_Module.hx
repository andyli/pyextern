/* This file is generated, do not edit! */
package tensorflow.python.ops.control_flow_v2_toggles;
@:pythonImport("tensorflow.python.ops.control_flow_v2_toggles") extern class Control_flow_v2_toggles_Module {
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
		Returns `True` if v2 control flow is enabled.
		
		Note: v2 control flow is always enabled inside of tf.function.
	**/
	static public function control_flow_v2_enabled():Dynamic;
	/**
		Opts out of control flow v2.
		
		Note: v2 control flow is always enabled inside of tf.function. Calling this
		function has no effect in that case.
		
		If your code needs tf.disable_control_flow_v2() to be called to work
		properly please file a bug.
	**/
	static public function disable_control_flow_v2():Dynamic;
	static public var division : Dynamic;
	/**
		Use control flow v2.
		
		control flow v2 (cfv2) is an improved version of control flow in TensorFlow
		with support for higher order derivatives. Enabling cfv2 will change the
		graph/function representation of control flow, e.g., `tf.while_loop` and
		`tf.cond` will generate functional `While` and `If` ops instead of low-level
		`Switch`, `Merge` etc. ops. Note: Importing and running graphs exported
		with old control flow will still be supported.
		
		Calling tf.enable_control_flow_v2() lets you opt-in to this TensorFlow 2.0
		feature.
		
		Note: v2 control flow is always enabled inside of tf.function. Calling this
		function is not required.
	**/
	static public function enable_control_flow_v2():Dynamic;
	/**
		Whether to output all intermediates from functional control flow ops.
		
		The "default" behavior to is to output all intermediates when using v2 control
		flow inside Keras models in graph mode (possibly inside Estimators). This is
		needed to support taking gradients of v2 control flow. In graph mode, Keras
		can sometimes freeze the forward graph before the gradient computation which
		does not work for v2 control flow since it requires updating the forward ops
		to output the needed intermediates. We work around this by proactively
		outputting the needed intermediates when building the forward pass itself.
		Ideally any such extra tensors should be pruned out at runtime. However, if
		for any reason this doesn't work for you or if you have an inference-only
		model you can turn this behavior off using
		`tf.compat.v1.experimental.output_all_intermediates(False)`.
		
		If with the default behavior you are still seeing errors of the form
		"Connecting to invalid output X of source node Y which has Z outputs" try
		setting `tf.compat.v1.experimental.output_all_intermediates(True)` and
		please file an issue at https://github.com/tensorflow/tensorflow/issues.
		
		Args:
		  state: True, False or None. None restores the default behavior.
	**/
	static public function output_all_intermediates(state:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
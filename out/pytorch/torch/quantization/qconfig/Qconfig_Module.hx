/* This file is generated, do not edit! */
package torch.quantization.qconfig;
@:pythonImport("torch.quantization.qconfig") extern class Qconfig_Module {
	static public function QConfigAny(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		This is a helper function for use in quantization prepare that updates a qconfig so that
		the constructors stored in the qconfig will create observers on the same device that
		'module' is on. This is intended to be used when the qconfigs are propagated to each
		module in order to avoid potential device alignment issues.
		
		Args:
		    qconfig: QConfig or QConfigDynamic with obs constructors stored in activation and weight
		    module: module which the qconfig is related to
		
		Return:
		    qconfig: configured so that obs constructors set to construct on the same device as module
	**/
	static public function add_module_to_qconfig_obs_ctr(qconfig:Dynamic, module:Dynamic):Dynamic;
	static public function assert_valid_qconfig(qconfig:Dynamic, mod:Dynamic):Dynamic;
	static public var default_activation_only_qconfig : Dynamic;
	static public var default_debug_qconfig : Dynamic;
	static public var default_dynamic_qconfig : Dynamic;
	static public var default_per_channel_qconfig : Dynamic;
	static public var default_qat_qconfig : Dynamic;
	static public var default_qat_qconfig_v2 : Dynamic;
	static public var default_qconfig : Dynamic;
	static public var default_weight_only_qconfig : Dynamic;
	static public var float16_dynamic_qconfig : Dynamic;
	static public var float16_static_qconfig : Dynamic;
	static public var float_qparams_weight_only_qconfig : Dynamic;
	static public function get_default_qat_qconfig(?backend:Dynamic, ?version:Dynamic):Dynamic;
	static public function get_default_qconfig(?backend:Dynamic):Dynamic;
	static public var per_channel_dynamic_qconfig : Dynamic;
	static public function qconfig_equals(q1:Dynamic, q2:Dynamic):Dynamic;
}
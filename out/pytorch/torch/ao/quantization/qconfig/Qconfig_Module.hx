/* This file is generated, do not edit! */
package torch.ao.quantization.qconfig;
@:pythonImport("torch.ao.quantization.qconfig") extern class Qconfig_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function QConfigAny(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	static public function default_dynamic_quant_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_float_qparams_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fused_act_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fused_per_channel_wt_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_fused_wt_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public var default_per_channel_qconfig : Dynamic;
	static public function default_per_channel_weight_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_per_channel_weight_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public var default_qat_qconfig : Dynamic;
	static public var default_qat_qconfig_v2 : Dynamic;
	static public var default_qconfig : Dynamic;
	static public function default_weight_fake_quant(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public function default_weight_observer(?args:python.VarArgs<Dynamic>, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public var default_weight_only_qconfig : Dynamic;
	static public var float16_dynamic_qconfig : Dynamic;
	static public var float16_static_qconfig : Dynamic;
	static public var float_qparams_weight_only_qconfig : Dynamic;
	static public function get_default_qat_qconfig(?backend:Dynamic, ?version:Dynamic):Dynamic;
	static public function get_default_qconfig(?backend:Dynamic):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
	static public var per_channel_dynamic_qconfig : Dynamic;
	static public function qconfig_equals(q1:Dynamic, q2:Dynamic):Dynamic;
}
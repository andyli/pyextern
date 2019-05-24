/* This file is generated, do not edit! */
package matplotlib.scale;
@:pythonImport("matplotlib.scale") extern class Scale_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function for generating docstrings related to scales.
	**/
	static public function _get_scale_docs():Dynamic;
	static public var _scale_mapping : Dynamic;
	/**
		[*Deprecated*] Helper function for generating docstrings related to scales.
		
		Notes
		-----
		.. deprecated:: 3.1
		   get_scale_docs() is considered private API since 3.1 and will be removed from the public API in 3.3.
	**/
	static public function get_scale_docs():Dynamic;
	static public function get_scale_names():Dynamic;
	static public var rcParams : Dynamic;
	/**
		Register a new kind of scale.
		
		*scale_class* must be a subclass of :class:`ScaleBase`.
	**/
	static public function register_scale(scale_class:Dynamic):Dynamic;
	/**
		Return a scale class by name.
		
		Parameters
		----------
		scale : {function, functionlog, linear, log, logit, symlog}
		axis : Axis
	**/
	static public function scale_factory(scale:Dynamic, axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
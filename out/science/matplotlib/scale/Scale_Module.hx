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
		Return the names of the available scales.
	**/
	static public function get_scale_names():Dynamic;
	/**
		Register a new kind of scale.
		
		Parameters
		----------
		scale_class : subclass of `ScaleBase`
		    The scale to register.
	**/
	static public function register_scale(scale_class:Dynamic):Dynamic;
	/**
		Return a scale class by name.
		
		Parameters
		----------
		scale : {'function', 'functionlog', 'linear', 'log', 'logit', 'symlog'}
		axis : `matplotlib.axis.Axis`
	**/
	static public function scale_factory(scale:Dynamic, axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
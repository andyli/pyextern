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
	static public function _clip_non_positives(a:Dynamic):Dynamic;
	/**
		Return a Numpy masked array where all non-positive values are
		masked.  If there are no non-positive values, the original array
		is returned.
	**/
	static public function _mask_non_positives(a:Dynamic):Dynamic;
	static public var _scale_mapping : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Remove excess indentation from docstring *s*.
		
		Discards any leading blank lines, then removes up to n whitespace
		characters from each line, where n is the number of leading
		whitespace characters in the first line. It differs from
		textwrap.dedent in its deletion of leading blank lines and its use
		of the first non-blank line to determine the indentation.
		
		It is also faster in most cases.
	**/
	static public function dedent(s:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Helper function for generating docstrings related to scales.
	**/
	static public function get_scale_docs():Dynamic;
	static public function get_scale_names():Dynamic;
	static public var print_function : Dynamic;
	/**
		Register a new kind of scale.
		
		*scale_class* must be a subclass of :class:`ScaleBase`.
	**/
	static public function register_scale(scale_class:Dynamic):Dynamic;
	/**
		Return a scale class by name.
		
		ACCEPTS: [ linear | log | symlog ]
	**/
	static public function scale_factory(scale:Dynamic, axis:Dynamic, kwargs:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}
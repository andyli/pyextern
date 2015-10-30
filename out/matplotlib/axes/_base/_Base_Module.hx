/* This file is generated, do not edit! */
package matplotlib.axes._base;
@:pythonImport("matplotlib.axes._base") extern class _Base_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Process a MATLAB style color/line style format string.  Return a
		(*linestyle*, *color*) tuple as a result of the processing.  Default
		values are ('-', 'b').  Example format strings include:
		
		* 'ko': black circles
		* '.b': blue dots
		* 'r--': red dashed lines
		
		.. seealso::
		
		    :func:`~matplotlib.Line2D.lineStyles` and
		    :func:`~matplotlib.pyplot.colors`
		        for all possible styles and color format string.
	**/
	static public function _process_plot_format(fmt:Dynamic):Dynamic;
	static public function _string_to_bool(s:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for Artist.draw method. Provides routines
		that run before and after the draw call. The before and after functions
		are useful for changing artist-dependant renderer attributes or making
		other setup function calls, such as starting and flushing a mixed-mode
		renderer.
	**/
	static public function allow_rasterization(draw:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns true if *obj* is iterable and contains strings
	**/
	static public function is_sequence_of_strings(obj:Dynamic):Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		return true if *obj* is iterable
	**/
	static public function iterable(obj:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	static public var unicode_literals : Dynamic;
}
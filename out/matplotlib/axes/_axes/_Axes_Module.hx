/* This file is generated, do not edit! */
package matplotlib.axes._axes;
@:pythonImport("matplotlib.axes._axes") extern class _Axes_Module {
	static public var STEP_LOOKUP_MAP : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _plot_args_replacer(args:Dynamic, data:Dynamic):Dynamic;
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
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var unicode_literals : Dynamic;
	/**
		A decorator to add a 'data' kwarg to any a function.  The signature
		of the input function must include the ax argument at the first position ::
		
		   def foo(ax, *args, **kwargs)
		
		so this is suitable for use with Axes methods.
		
		Parameters
		----------
		replace_names : list of strings, optional, default: None
		    The list of parameter names which arguments should be replaced by
		    `data[name]`. If None, all arguments are replaced if they are
		    included in `data`.
		replace_all_args : bool, default: False
		    If True, all arguments in *args get replaced, even if they are not
		    in replace_names.
		label_namer : string, optional, default: None
		    The name of the parameter which argument should be used as label, if
		    label is not set. If None, the label keyword argument is not set.
		positional_parameter_names : list of strings or callable, optional
		    The full list of positional parameter names (excluding an explicit
		    `ax`/'self' argument at the first place and including all possible
		    positional parameter in `*args`), in the right order. Can also include
		    all other keyword parameter. Only needed if the wrapped function does
		    contain `*args` and (replace_names is not None or replace_all_args is
		    False). If it is a callable, it will be called with the actual
		    tuple of *args and the data and should return a list like
		    above.
		    NOTE: callables should only be used when the names and order of *args
		    can only be determined at runtime. Please use list of names
		    when the order and names of *args is clear before runtime!
	**/
	static public function unpack_labeled_data(?replace_names:Dynamic, ?replace_all_args:Dynamic, ?label_namer:Dynamic, ?positional_parameter_names:Dynamic):Dynamic;
}
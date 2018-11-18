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
	/**
		Return whether *data* can be item-accessed with *name*.
		
		This supports data with a dict-like interface (`in` checks item
		availability) and with numpy.arrays.
	**/
	static public function _has_item(data:Dynamic, name:Dynamic):Dynamic;
	static public var _log : Dynamic;
	/**
		Helper function to locate inset axes, used in
		`.Axes.inset_axes`.
		
		A locator gets used in `Axes.set_aspect` to override the default
		locations...  It is a function that takes an axes object and
		a renderer and tells `set_aspect` where it is to be placed.
		
		Here *rect* is a rectangle [l, b, w, h] that specifies the
		location for the axes in the transform given by *trans* on the
		*parent*.
	**/
	static public function _make_inset_locator(bounds:Dynamic, trans:Dynamic, parent:Dynamic):Dynamic;
	static public function _plot_args_replacer(args:Dynamic, data:Dynamic):Dynamic;
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
		
		.. note:: decorator also converts MappingView input data to list.
	**/
	static public function _preprocess_data(?replace_names:Dynamic, ?replace_all_args:Dynamic, ?label_namer:Dynamic, ?positional_parameter_names:Dynamic):Dynamic;
	/**
		Process a MATLAB style color/line style format string.  Return a
		(*linestyle*, *color*) tuple as a result of the processing.  Default
		values are ('-', 'b').  Example format strings include:
		
		* 'ko': black circles
		* '.b': blue dots
		* 'r--': red dashed lines
		* 'C2--': the third color in the color cycle, dashed lines
		
		.. seealso::
		
		    :func:`~matplotlib.Line2D.lineStyles` and
		    :attr:`~matplotlib.colors.cnames`
		        for all possible styles and color format string.
	**/
	static public function _process_plot_format(fmt:Dynamic):Dynamic;
	/**
		return true if *obj* is iterable
	**/
	static public function iterable(obj:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	static public function safe_first_element(obj:Dynamic):Dynamic;
	/**
		Used to display deprecation in a standard way.
		
		Parameters
		----------
		since : str
		    The release at which this API became deprecated.
		
		message : str, optional
		    Override the default deprecation message.  The format
		    specifier `%(name)s` may be used for the name of the function,
		    and `%(alternative)s` may be used in the deprecation message
		    to insert the name of an alternative to the deprecated
		    function.  `%(obj_type)s` may be used to insert a friendly name
		    for the type of object being deprecated.
		
		name : str, optional
		    The name of the deprecated object.
		
		alternative : str, optional
		    An alternative API that the user may use in place of the deprecated
		    API.  The deprecation warning will tell the user about this alternative
		    if provided.
		
		pending : bool, optional
		    If True, uses a PendingDeprecationWarning instead of a
		    DeprecationWarning.  Cannot be used together with *removal*.
		
		removal : str, optional
		    The expected removal version.  With the default (an empty string), a
		    removal version is automatically computed from *since*.  Set to other
		    Falsy values to not schedule a removal date.  Cannot be used together
		    with *pending*.
		
		obj_type : str, optional
		    The object type being deprecated.
		
		addendum : str, optional
		    Additional text appended directly to the final message.
		
		Examples
		--------
		
		    Basic example::
		
		        # To warn of the deprecation of "matplotlib.name_of_module"
		        warn_deprecated('1.4.0', name='matplotlib.name_of_module',
		                        obj_type='module')
	**/
	static public function warn_deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic, ?addendum:Dynamic, ?removal:Dynamic):Dynamic;
}
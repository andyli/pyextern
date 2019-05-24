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
		Converts a sequence of less than 1 dimension, to an array of 1
		dimension; leaves everything else untouched.
	**/
	static public function _check_1d(x:Dynamic):Dynamic;
	static public var _log : Dynamic;
	/**
		Convert a MATLAB style color/line style format string to a (*linestyle*,
		*marker*, *color*) tuple.
		
		Example format strings include:
		
		* 'ko': black circles
		* '.b': blue dots
		* 'r--': red dashed lines
		* 'C2--': the third color in the color cycle, dashed lines
		
		See Also
		--------
		matplotlib.Line2D.lineStyles, matplotlib.colors.cnames
		    All possible styles and color format strings.
	**/
	static public function _process_plot_format(fmt:Dynamic):Dynamic;
	/**
		Creates a `~cycler.Cycler` object much like :func:`cycler.cycler`,
		but includes input validation.
		
		Call signatures::
		
		  cycler(cycler)
		  cycler(label=values[, label2=values2[, ...]])
		  cycler(label, values)
		
		Form 1 copies a given `~cycler.Cycler` object.
		
		Form 2 creates a `~cycler.Cycler` which cycles over one or more
		properties simultaneously. If multiple properties are given, their
		value lists must have the same length.
		
		Form 3 creates a `~cycler.Cycler` for a single property. This form
		exists for compatibility with the original cycler. Its use is
		discouraged in favor of the kwarg form, i.e. ``cycler(label=values)``.
		
		Parameters
		----------
		cycler : Cycler
		    Copy constructor for Cycler.
		
		label : str
		    The property key. Must be a valid `.Artist` property.
		    For example, 'color' or 'linestyle'. Aliases are allowed,
		    such as 'c' for 'color' and 'lw' for 'linewidth'.
		
		values : iterable
		    Finite-length iterable of the property values. These values
		    are validated and will raise a ValueError if invalid.
		
		Returns
		-------
		cycler : Cycler
		    A new :class:`~cycler.Cycler` for the given properties.
		
		Examples
		--------
		Creating a cycler for a single property:
		
		>>> c = cycler(color=['red', 'green', 'blue'])
		
		Creating a cycler for simultaneously cycling over multiple properties
		(e.g. red circle, green plus, blue cross):
		
		>>> c = cycler(color=['red', 'green', 'blue'],
		...            marker=['o', '+', 'x'])
	**/
	static public function cycler(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function get_label(y:Dynamic, default_name:Dynamic):Dynamic;
	/**
		A helper function to get the index of an input to plot
		against if x values are not explicitly given.
		
		Tries to get `y.index` (works if this is a pd.Series), if that
		fails, return np.arange(y.shape[0]).
		
		This will be extended in the future to deal with more types of
		labeled data.
		
		Parameters
		----------
		y : scalar or array-like
		    The proposed y-value
		
		Returns
		-------
		x, y : ndarray
		   The x and y values to plot.
	**/
	static public function index_of(y:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	static public function validate_axisbelow(s:Dynamic):Dynamic;
}
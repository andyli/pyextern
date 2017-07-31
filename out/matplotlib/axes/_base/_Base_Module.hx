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
	static public var _hold_msg : Dynamic;
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
	/**
		Creates a :class:`cycler.Cycler` object much like :func:`cycler.cycler`,
		but includes input validation.
		
		cycler(arg)
		cycler(label, itr)
		cycler(label1=itr1[, label2=itr2[, ...]])
		
		Form 1 simply copies a given `Cycler` object.
		
		Form 2 creates a `Cycler` from a label and an iterable.
		
		Form 3 composes a `Cycler` as an inner product of the
		pairs of keyword arguments. In other words, all of the
		iterables are cycled simultaneously, as if through zip().
		
		Parameters
		----------
		arg : Cycler
		    Copy constructor for Cycler.
		
		label : name
		    The property key. Must be a valid `Artist` property.
		    For example, 'color' or 'linestyle'. Aliases are allowed,
		    such as 'c' for 'color' and 'lw' for 'linewidth'.
		
		itr : iterable
		    Finite-length iterable of the property values. These values
		    are validated and will raise a ValueError if invalid.
		
		Returns
		-------
		cycler : Cycler
		    New :class:`cycler.Cycler` for the given properties
	**/
	static public function cycler(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
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
	static public function validate_axisbelow(s:Dynamic):Dynamic;
}
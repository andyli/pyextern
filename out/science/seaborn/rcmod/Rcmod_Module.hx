/* This file is generated, do not edit! */
package seaborn.rcmod;
@:pythonImport("seaborn.rcmod") extern class Rcmod_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _context_keys : Dynamic;
	static public var _style_keys : Dynamic;
	/**
		Get the parameters that control the general style of the plots.
		
		The style parameters control properties like the color of the background and
		whether a grid is enabled by default. This is accomplished using the
		:ref:`matplotlib rcParams system <matplotlib:matplotlib-rcparams>`.
		
		The options are illustrated in the
		:doc:`aesthetics tutorial <../tutorial/aesthetics>`.
		
		This function can also be used as a context manager to temporarily
		alter the global defaults. See :func:`set_theme` or :func:`set_style`
		to modify the global defaults for all plots.
		
		Parameters
		----------
		style : None, dict, or one of {darkgrid, whitegrid, dark, white, ticks}
		    A dictionary of parameters or the name of a preconfigured style.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    style dictionaries. This only updates parameters that are
		    considered part of the style definition.
		
		Examples
		--------
		
		.. include:: ../docstrings/axes_style.rst
	**/
	static public function axes_style(?style:Dynamic, ?rc:Dynamic):Dynamic;
	/**
		Create a new `Cycler` object from a single positional argument,
		a pair of positional arguments, or the combination of keyword arguments.
		
		cycler(arg)
		cycler(label1=itr1[, label2=iter2[, ...]])
		cycler(label, itr)
		
		Form 1 simply copies a given `Cycler` object.
		
		Form 2 composes a `Cycler` as an inner product of the
		pairs of keyword arguments. In other words, all of the
		iterables are cycled simultaneously, as if through zip().
		
		Form 3 creates a `Cycler` from a label and an iterable.
		This is useful for when the label cannot be a keyword argument
		(e.g., an integer or a name that has a space in it).
		
		Parameters
		----------
		arg : Cycler
		    Copy constructor for Cycler (does a shallow copy of iterables).
		label : name
		    The property key. In the 2-arg form of the function,
		    the label can be any hashable object. In the keyword argument
		    form of the function, it must be a valid python identifier.
		itr : iterable
		    Finite length iterable of the property values.
		    Can be a single-property `Cycler` that would
		    be like a key change, but as a shallow copy.
		
		Returns
		-------
		cycler : Cycler
		    New `Cycler` for the given property
	**/
	static public function cycler(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Get the parameters that control the scaling of plot elements.
		
		This affects things like the size of the labels, lines, and other elements
		of the plot, but not the overall style. This is accomplished using the
		:ref:`matplotlib rcParams system <matplotlib:matplotlib-rcparams>`.
		
		The base context is "notebook", and the other contexts are "paper", "talk",
		and "poster", which are version of the notebook parameters scaled by different
		values. Font elements can also be scaled independently of (but relative to)
		the other values.
		
		This function can also be used as a context manager to temporarily
		alter the global defaults. See :func:`set_theme` or :func:`set_context`
		to modify the global defaults for all plots.
		
		Parameters
		----------
		context : None, dict, or one of {paper, notebook, talk, poster}
		    A dictionary of parameters or the name of a preconfigured set.
		font_scale : float, optional
		    Separate scaling factor to independently scale the size of the
		    font elements.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    context dictionaries. This only updates parameters that are
		    considered part of the context definition.
		
		Examples
		--------
		
		.. include:: ../docstrings/plotting_context.rst
	**/
	static public function plotting_context(?context:Dynamic, ?font_scale:Dynamic, ?rc:Dynamic):Dynamic;
	/**
		Restore all RC params to default settings.
	**/
	static public function reset_defaults():Dynamic;
	/**
		Restore all RC params to original settings (respects custom rc).
	**/
	static public function reset_orig():Dynamic;
	/**
		Alias for :func:`set_theme`, which is the preferred interface.
		
		This function may be removed in the future.
	**/
	static public function set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the parameters that control the scaling of plot elements.
		
		This affects things like the size of the labels, lines, and other elements
		of the plot, but not the overall style. This is accomplished using the
		:ref:`matplotlib rcParams system <matplotlib:matplotlib-rcparams>`.
		
		The base context is "notebook", and the other contexts are "paper", "talk",
		and "poster", which are version of the notebook parameters scaled by different
		values. Font elements can also be scaled independently of (but relative to)
		the other values.
		
		See :func:`plotting_context` to get the parameter values.
		
		Parameters
		----------
		context : dict, or one of {paper, notebook, talk, poster}
		    A dictionary of parameters or the name of a preconfigured set.
		font_scale : float, optional
		    Separate scaling factor to independently scale the size of the
		    font elements.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    context dictionaries. This only updates parameters that are
		    considered part of the context definition.
		
		Examples
		--------
		
		.. include:: ../docstrings/set_context.rst
	**/
	static public function set_context(?context:Dynamic, ?font_scale:Dynamic, ?rc:Dynamic):Dynamic;
	/**
		Set the matplotlib color cycle using a seaborn palette.
		
		Parameters
		----------
		palette : seaborn color paltte | matplotlib colormap | hls | husl
		    Palette definition. Should be something that :func:`color_palette`
		    can process.
		n_colors : int
		    Number of colors in the cycle. The default number of colors will depend
		    on the format of ``palette``, see the :func:`color_palette`
		    documentation for more information.
		desat : float
		    Proportion to desaturate each color by.
		color_codes : bool
		    If ``True`` and ``palette`` is a seaborn palette, remap the shorthand
		    color codes (e.g. "b", "g", "r", etc.) to the colors from this palette.
		
		Examples
		--------
		>>> set_palette("Reds")
		
		>>> set_palette("Set1", 8, .75)
		
		See Also
		--------
		color_palette : build a color palette or set the color cycle temporarily
		                in a ``with`` statement.
		set_context : set parameters to scale plot elements
		set_style : set the default parameters for figure style
	**/
	static public function set_palette(palette:Dynamic, ?n_colors:Dynamic, ?desat:Dynamic, ?color_codes:Dynamic):Dynamic;
	/**
		Set the parameters that control the general style of the plots.
		
		The style parameters control properties like the color of the background and
		whether a grid is enabled by default. This is accomplished using the
		:ref:`matplotlib rcParams system <matplotlib:matplotlib-rcparams>`.
		
		The options are illustrated in the
		:doc:`aesthetics tutorial <../tutorial/aesthetics>`.
		
		See :func:`axes_style` to get the parameter values.
		
		Parameters
		----------
		style : dict, or one of {darkgrid, whitegrid, dark, white, ticks}
		    A dictionary of parameters or the name of a preconfigured style.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    style dictionaries. This only updates parameters that are
		    considered part of the style definition.
		
		Examples
		--------
		
		.. include:: ../docstrings/set_style.rst
	**/
	static public function set_style(?style:Dynamic, ?rc:Dynamic):Dynamic;
	/**
		Set aspects of the visual theme for all matplotlib and seaborn plots.
		
		This function changes the global defaults for all plots using the
		:ref:`matplotlib rcParams system <matplotlib:matplotlib-rcparams>`.
		The themeing is decomposed into several distinct sets of parameter values.
		
		The options are illustrated in the :doc:`aesthetics <../tutorial/aesthetics>`
		and :doc:`color palette <../tutorial/color_palettes>` tutorials.
		
		Parameters
		----------
		context : string or dict
		    Scaling parameters, see :func:`plotting_context`.
		style : string or dict
		    Axes style parameters, see :func:`axes_style`.
		palette : string or sequence
		    Color palette, see :func:`color_palette`.
		font : string
		    Font family, see matplotlib font manager.
		font_scale : float, optional
		    Separate scaling factor to independently scale the size of the
		    font elements.
		color_codes : bool
		    If ``True`` and ``palette`` is a seaborn palette, remap the shorthand
		    color codes (e.g. "b", "g", "r", etc.) to the colors from this palette.
		rc : dict or None
		    Dictionary of rc parameter mappings to override the above.
		
		Examples
		--------
		
		.. include:: ../docstrings/set_theme.rst
	**/
	static public function set_theme(?context:Dynamic, ?style:Dynamic, ?palette:Dynamic, ?font:Dynamic, ?font_scale:Dynamic, ?color_codes:Dynamic, ?rc:Dynamic):Dynamic;
}
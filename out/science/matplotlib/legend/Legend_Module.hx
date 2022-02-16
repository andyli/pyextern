/* This file is generated, do not edit! */
package matplotlib.legend;
@:pythonImport("matplotlib.legend") extern class Legend_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return a generator of artists that can be used as handles in
		a legend.
	**/
	static public function _get_legend_handles(axs:Dynamic, ?legend_handler_map:Dynamic):Dynamic;
	/**
		Return handles and labels for legend, internal method.
	**/
	static public function _get_legend_handles_labels(axs:Dynamic, ?legend_handler_map:Dynamic):Dynamic;
	/**
		Get the handles and labels from the calls to either ``figure.legend``
		or ``axes.legend``.
		
		The parser is a bit involved because we support::
		
		    legend()
		    legend(labels)
		    legend(handles, labels)
		    legend(labels=labels)
		    legend(handles=handles)
		    legend(handles=handles, labels=labels)
		
		The behavior for a mixture of positional and keyword handles and labels
		is undefined and issues a warning.
		
		Parameters
		----------
		axs : list of `.Axes`
		    If handles are not given explicitly, the artists in these Axes are
		    used as handles.
		*args : tuple
		    Positional parameters passed to ``legend()``.
		handles
		    The value of the keyword argument ``legend(handles=...)``, or *None*
		    if that keyword argument was not used.
		labels
		    The value of the keyword argument ``legend(labels=...)``, or *None*
		    if that keyword argument was not used.
		**kwargs
		    All other keyword arguments passed to ``legend()``.
		
		Returns
		-------
		handles : list of `.Artist`
		    The legend handles.
		labels : list of str
		    The legend labels.
		extra_args : tuple
		    *args* with positional handles and labels removed.
		kwargs : dict
		    *kwargs* with keywords handles and labels removed.
	**/
	static public function _parse_legend_args(axs:Dynamic, ?args:python.VarArgs<Dynamic>, ?handles:Dynamic, ?labels:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decorator for Artist.draw method. Provides routines
		that run before and after the draw call. The before and after functions
		are useful for changing artist-dependent renderer attributes or making
		other setup function calls, such as starting and flushing a mixed-mode
		renderer.
	**/
	static public function allow_rasterization(draw:Dynamic):Dynamic;
}
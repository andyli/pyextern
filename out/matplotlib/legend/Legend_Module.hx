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
	static public var _legend_kw_doc : Dynamic;
	/**
		Get the handles and labels from the calls to either ``figure.legend``
		or ``axes.legend``.
		
		``axs`` is a list of axes (to get legend artists from)
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
	/**
		[*Deprecated*] Returns true if *obj* can be hashed
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function is_hashable(obj:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
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
		
		obj_type : str, optional
		    The object type being deprecated.
		
		addendum : str, optional
		    Additional text appended directly to the final message.
		
		removal : str, optional
		    The expected removal version.  With the default (an empty string), a
		    removal version is automatically computed from *since*.  Set to other
		    Falsy values to not schedule a removal date.  Cannot be used together
		    with *pending*.
		
		Examples
		--------
		
		    Basic example::
		
		        # To warn of the deprecation of "matplotlib.name_of_module"
		        warn_deprecated('1.4.0', name='matplotlib.name_of_module',
		                        obj_type='module')
	**/
	static public function warn_deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic, ?addendum:Dynamic, ?removal:Dynamic):Dynamic;
}
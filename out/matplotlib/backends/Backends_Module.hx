/* This file is generated, do not edit! */
package matplotlib.backends;
@:pythonImport("matplotlib.backends") extern class Backends_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return the interactive framework whose event loop is currently running, if
		any, or "headless" if no event loop can be started, or None.
		
		Returns
		-------
		Optional[str]
		    One of the following values: "qt5", "qt4", "gtk3", "wx", "tk",
		    "macosx", "headless", ``None``.
	**/
	static public function _get_running_interactive_framework():Dynamic;
	static public var _log : Dynamic;
	static public var backend : Dynamic;
	/**
		[*Deprecated*] Return new_figure_manager, draw_if_interactive and show for pyplot.
		
		This provides the backend-specific functions that are used by pyplot to
		abstract away the difference between backends.
		
		Parameters
		----------
		name : str, optional
		    The name of the backend to use.  If `None`, falls back to
		    ``matplotlib.get_backend()`` (which return :rc:`backend`).
		
		Returns
		-------
		backend_mod : module
		    The module which contains the backend of choice
		
		new_figure_manager : function
		    Create a new figure manager (roughly maps to GUI window)
		
		draw_if_interactive : function
		    Redraw the current figure if pyplot is interactive
		
		show : function
		    Show (and possibly block) any unshown figures.
		
		Notes
		-----
		.. deprecated:: 3.0
		   
	**/
	static public function pylab_setup(?name:Dynamic):Dynamic;
}
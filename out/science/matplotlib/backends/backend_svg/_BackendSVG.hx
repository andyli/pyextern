/* This file is generated, do not edit! */
package matplotlib.backends.backend_svg;
@:pythonImport("matplotlib.backends.backend_svg", "_BackendSVG") extern class _BackendSVG {
	/**
		The canvas the figure renders into.
		
		Attributes
		----------
		figure : `matplotlib.figure.Figure`
		    A high-level figure instance.
	**/
	static public function FigureCanvas(?figure:Dynamic):Dynamic;
	/**
		A backend-independent abstraction of a figure container and controller.
		
		The figure manager is used by pyplot to interact with the window in a
		backend-independent way. It's an adapter for the real (GUI) framework that
		represents the visual figure on screen.
		
		GUI backends define from this class to translate common operations such
		as *show* or *resize* to the GUI-specific code. Non-GUI backends do not
		support these operations an can just use the base class.
		
		This following basic operations are accessible:
		
		**Window operations**
		
		- `~.FigureManagerBase.show`
		- `~.FigureManagerBase.destroy`
		- `~.FigureManagerBase.full_screen_toggle`
		- `~.FigureManagerBase.resize`
		- `~.FigureManagerBase.get_window_title`
		- `~.FigureManagerBase.set_window_title`
		
		**Key and mouse button press handling**
		
		The figure manager sets up default key and mouse button press handling by
		hooking up the `.key_press_handler` to the matplotlib event system. This
		ensures the same shortcuts and mouse actions across backends.
		
		**Other operations**
		
		Subclasses will have additional attributes and functions to access
		additional functionality. This is of course backend-specific. For example,
		most GUI backends have ``window`` and ``toolbar`` attributes that give
		access to the native GUI widgets of the respective framework.
		
		Attributes
		----------
		canvas : `FigureCanvasBase`
		    The backend-specific canvas instance.
		
		num : int or str
		    The figure number.
		
		key_press_handler_id : int
		    The default key handler cid, when using the toolmanager.
		    To disable the default key press handling use::
		
		        figure.canvas.mpl_disconnect(
		            figure.canvas.manager.key_press_handler_id)
		
		button_press_handler_id : int
		    The default mouse button handler cid, when using the toolmanager.
		    To disable the default button press handling use::
		
		        figure.canvas.mpl_disconnect(
		            figure.canvas.manager.button_press_handler_id)
	**/
	static public function FigureManager(canvas:Dynamic, num:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var backend_version : Dynamic;
	static public function draw_if_interactive():Dynamic;
	static public function export(cls:Dynamic):Dynamic;
	static public var mainloop : Dynamic;
	/**
		Create a new figure manager instance.
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	/**
		Show all figures.
		
		`show` blocks by calling `mainloop` if *block* is ``True``, or if it
		is ``None`` and we are neither in IPython's ``%pylab`` mode, nor in
		`interactive` mode.
	**/
	static public function show(?block:Dynamic):Dynamic;
}
/* This file is generated, do not edit! */
package matplotlib.backends.backend_qt;
@:pythonImport("matplotlib.backends.backend_qt") extern class Backend_qt_Module {
	static public var QT_API : Dynamic;
	static public var SPECIAL_KEYS : Dynamic;
	static public var _MODIFIER_KEYS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		Decorator for ``__init__`` to allow ``super().__init__`` on PySide2.
	**/
	static public function _allow_super_init(___init__:Dynamic):Dynamic;
	/**
		Only one qApp can exist at a time, so check before creating one.
	**/
	static public function _create_qApp():Dynamic;
	/**
		Return obj.devicePixelRatioF() with graceful fallback for older Qt.
		
		This can be replaced by the direct call when we require Qt>=5.6.
	**/
	static public function _devicePixelRatioF(obj:Dynamic):Dynamic;
	static public function _enum(name:Dynamic):Dynamic;
	static public function _isdeleted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		This manager allows to terminate a plot by sending a SIGINT. It is
		necessary because the running Qt backend prevents Python interpreter to
		run and process signals (i.e., to raise KeyboardInterrupt exception). To
		solve this one needs to somehow wake up the interpreter and make it close
		the plot window. We do this by using the signal.set_wakeup_fd() function
		which organizes a write of the signal number into a socketpair connected
		to the QSocketNotifier (since it is part of the Qt backend, it can react
		to that write event). Afterwards, the Qt handler empties the socketpair
		by a recv() command to re-arm it (we need this if a signal different from
		SIGINT was caught by set_wakeup_fd() and we shall continue waiting). If
		the SIGINT was caught indeed, after exiting the on_signal() function the
		interpreter reacts to the SIGINT according to the handle() function which
		had been set up by a signal.signal() call: it causes the qt_object to
		exit by calling its quit() method. Finally, we call the old SIGINT
		handler with the same arguments that were given to our custom handle()
		handler.
		
		We do this only if the old handler for SIGINT was not None, which means
		that a non-python handler was installed, i.e. in Julia, and not SIG_IGN
		which means we should ignore the interrupts.
	**/
	static public function _maybe_allow_interrupt(qapp:Dynamic):Dynamic;
	/**
		Call obj.setDevicePixelRatio(val) with graceful fallback for older Qt.
		
		This can be replaced by the direct call when we require Qt>=5.6.
	**/
	static public function _setDevicePixelRatio(obj:Dynamic, val:Dynamic):Dynamic;
	static public var backend_version : Dynamic;
	static public var cursord : Dynamic;
	static public function draw_if_interactive():Dynamic;
	/**
		Create a new figure manager instance.
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	static public var qApp : Dynamic;
	/**
		Show all figures.
		
		`show` blocks by calling `mainloop` if *block* is ``True``, or if it
		is ``None`` and we are neither in IPython's ``%pylab`` mode, nor in
		`interactive` mode.
	**/
	static public function show(?block:Dynamic):Dynamic;
}
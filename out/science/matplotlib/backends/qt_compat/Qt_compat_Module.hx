/* This file is generated, do not edit! */
package matplotlib.backends.qt_compat;
@:pythonImport("matplotlib.backends.qt_compat") extern class Qt_compat_Module {
	static public var QT_API : Dynamic;
	static public var QT_API_ENV : Dynamic;
	static public var QT_API_PYQT : Dynamic;
	static public var QT_API_PYQT5 : Dynamic;
	static public var QT_API_PYQT6 : Dynamic;
	static public var QT_API_PYQTv2 : Dynamic;
	static public var QT_API_PYSIDE : Dynamic;
	static public var QT_API_PYSIDE2 : Dynamic;
	static public var QT_API_PYSIDE6 : Dynamic;
	static public var _ETS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __getattr__(name:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var _candidates : Dynamic;
	/**
		Return obj.devicePixelRatioF() with graceful fallback for older Qt.
		
		This can be replaced by the direct call when we require Qt>=5.6.
	**/
	static public function _devicePixelRatioF(obj:Dynamic):Dynamic;
	static public function _enum(name:Dynamic):Dynamic;
	static public function _exec(obj:Dynamic):Dynamic;
	/**
		getSaveFileName(parent: QWidget = None, caption: str = '', directory: str = '', filter: str = '', initialFilter: str = '', options: Union[QFileDialog.Options, QFileDialog.Option] = 0) -> Tuple[str, str]
	**/
	static public function _getSaveFileName(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function _setup():Dynamic;
	static public function _setup_pyqt5plus():Dynamic;
	/**
		Parse the given version string and return either a :class:`Version` object
		or a :class:`LegacyVersion` object depending on if the given version is
		a valid PEP 440 version or a legacy version.
	**/
	static public function parse_version(version:Dynamic):Dynamic;
}
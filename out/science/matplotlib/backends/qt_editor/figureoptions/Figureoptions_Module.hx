/* This file is generated, do not edit! */
package matplotlib.backends.qt_editor.figureoptions;
@:pythonImport("matplotlib.backends.qt_editor.figureoptions") extern class Figureoptions_Module {
	static public var DRAWSTYLES : Dynamic;
	static public var LINESTYLES : Dynamic;
	static public var MARKERS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Edit matplotlib figure options
	**/
	static public function figure_edit(axes:Dynamic, ?parent:Dynamic):Dynamic;
	/**
		Convert Matplotlib dates to `~datetime.datetime` objects.
		
		Parameters
		----------
		x : float or sequence of floats
		    Number of days (fraction part represents hours, minutes, seconds)
		    since the epoch.  See `.get_epoch` for the
		    epoch, which can be changed by :rc:`date.epoch` or `.set_epoch`.
		tz : str, default: :rc:`timezone`
		    Timezone of *x*.
		
		Returns
		-------
		`~datetime.datetime` or sequence of `~datetime.datetime`
		    Dates are returned in timezone *tz*.
		
		    If *x* is a sequence, a sequence of `~datetime.datetime` objects will
		    be returned.
		
		Notes
		-----
		The addition of one here is a historical artifact. Also, note that the
		Gregorian calendar is assumed; this is not universal practice.
		For details, see the module docstring.
	**/
	static public function num2date(x:Dynamic, ?tz:Dynamic):Dynamic;
}
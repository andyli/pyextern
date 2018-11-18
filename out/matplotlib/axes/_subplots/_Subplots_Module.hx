/* This file is generated, do not edit! */
package matplotlib.axes._subplots;
@:pythonImport("matplotlib.axes._subplots") extern class _Subplots_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		This stub class exists to return the appropriate subplot class when called
		with an axes class. This is purely to allow pickling of Axes and Subplots.
	**/
	static public function _picklable_subplot_class_constructor(axes_class:Dynamic):Dynamic;
	static public var _subplot_classes : Dynamic;
	/**
		This makes a new class that inherits from `.SubplotBase` and the
		given axes_class (which is assumed to be a subclass of `.axes.Axes`).
		This is perhaps a little bit roundabout to make a new class on
		the fly like this, but it means that a new Subplot class does
		not have to be created for every type of Axes.
	**/
	static public function subplot_class_factory(?axes_class:Dynamic):Dynamic;
}
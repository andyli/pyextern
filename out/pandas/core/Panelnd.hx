/* This file is generated, do not edit! */
package pandas.core;
@:pythonImport("pandas.core.panelnd") extern class Panelnd {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		manufacture a n-d class:
		
		Parameters
		----------
		klass_name : the klass name
		orders : the names of the axes in order (highest to lowest)
		slices : a dictionary that defines how the axes map to the slice axis
		slicer : the class representing a slice of this panel
		aliases : a dictionary defining aliases for various axes
		    default = { major : major_axis, minor : minor_axis }
		stat_axis : the default statistic axis default = 2
		info_axis : the info axis
		
		Returns
		-------
		a class object representing this panel
	**/
	static public function create_nd_panel_factory(klass_name:Dynamic, orders:Dynamic, slices:Dynamic, slicer:Dynamic, ?aliases:Dynamic, ?stat_axis:Dynamic, ?info_axis:Dynamic, ?ns:Dynamic):Dynamic;
}
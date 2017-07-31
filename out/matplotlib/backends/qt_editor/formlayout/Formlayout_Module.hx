/* This file is generated, do not edit! */
package matplotlib.backends.qt_editor.formlayout;
@:pythonImport("matplotlib.backends.qt_editor.formlayout") extern class Formlayout_Module {
	static public var BLACKLIST : Dynamic;
	static public var DEBUG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __license__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Create form dialog and return result
		(if Cancel button is pressed, return None)
		
		data: datalist, datagroup
		title: string
		comment: string
		icon: QIcon instance
		parent: parent QWidget
		apply: apply callback (function)
		
		datalist: list/tuple of (field_name, field_value)
		datagroup: list/tuple of (datalist *or* datagroup, title, comment)
		
		-> one field for each member of a datalist
		-> one tab for each member of a top-level datagroup
		-> one page (of a multipage widget, each page can be selected with a combo
		   box) for each member of a datagroup inside a datagroup
		
		Supported types for field_value:
		  - int, float, str, unicode, bool
		  - colors: in Qt-compatible text form, i.e. in hex format or name (red,...)
		            (automatically detected from a string)
		  - list/tuple:
		      * the first element will be the selected index (or value)
		      * the other elements can be couples (key, value) or only values
	**/
	static public function fedit(data:Dynamic, ?title:Dynamic, ?comment:Dynamic, ?icon:Dynamic, ?parent:Dynamic, ?apply:Dynamic):Dynamic;
	/**
		Check if font is installed
	**/
	static public function font_is_installed(font:Dynamic):Dynamic;
	static public function is_edit_valid(edit:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function qfont_to_tuple(font:Dynamic):Dynamic;
	/**
		Create a QColor from a matplotlib color
	**/
	static public function to_qcolor(color:Dynamic):Dynamic;
	/**
		Create a QFont from tuple:
		    (family [string], size [int], italic [bool], bold [bool])
	**/
	static public function tuple_to_qfont(tup:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}
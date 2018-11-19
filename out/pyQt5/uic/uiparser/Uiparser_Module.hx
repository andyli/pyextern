/* This file is generated, do not edit! */
package pyQt5.uic.uiparser;
@:pythonImport("PyQt5.uic.uiparser") extern class Uiparser_Module {
	/**
		Log 'msg % args' with severity 'DEBUG'.
		
		To pass exception information, use the keyword argument exc_info with
		a true value, e.g.
		
		logger.debug("Houston, we have a %s", "thorny problem", exc_info=1)
	**/
	static public function DEBUG(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var QtCore : Dynamic;
	static public var QtWidgets : Dynamic;
	static public function SubElement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return either (), (0, alignment), (row, column, rowspan, colspan) or
		(row, column, rowspan, colspan, alignment) depending on the type of layout
		and its configuration.  The result will be suitable to use as arguments to
		the layout.
	**/
	static public function _layout_position(elem:Dynamic):Dynamic;
	/**
		Convert a C++ alignment to the corresponding flags. 
	**/
	static public function _parse_alignment(alignment:Dynamic):Dynamic;
	static public var logger : Dynamic;
	/**
		Parse XML document into element tree.
		
		*source* is a filename or file object containing XML data,
		*parser* is an optional parser instance defaulting to XMLParser.
		
		Return an ElementTree instance.
	**/
	static public function parse(source:Dynamic, ?parser:Dynamic):Dynamic;
}
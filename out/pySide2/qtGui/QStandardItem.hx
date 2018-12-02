/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QStandardItem") extern class QStandardItem {
	public function ItemType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Type : Dynamic;
	static public var UserType : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var __hash__ : Dynamic;
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
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Return value<<self.
	**/
	public function __rlshift__(value:Dynamic):Dynamic;
	/**
		Return value>>self.
	**/
	public function __rrshift__(value:Dynamic):Dynamic;
	/**
		Return self>>value.
	**/
	public function __rshift__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function accessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function accessibleText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function appendColumn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function appendRow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function appendRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function background(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function checkState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function child(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function column(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function columnCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function data(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function emitDataChanged(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function flags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function font(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function foreground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function hasChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function icon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertColumn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertRow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insertRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isAutoTristate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isCheckable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isDragEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isDropEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEditable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isSelectable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isTristate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isUserTristate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function model(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function parent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function read(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeColumn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeColumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeRow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function removeRows(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function row(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function rowCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAccessibleDescription(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAccessibleText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setAutoTristate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setBackground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCheckState(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setCheckable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setColumnCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setData(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDragEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setDropEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setEditable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setEnabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFlags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setFont(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setForeground(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setIcon(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setRowCount(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSelectable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setSizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setStatusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setText(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTextAlignment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setToolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setTristate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setUserTristate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setWhatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sizeHint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sortChildren(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function statusTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function takeChild(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function takeColumn(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function takeRow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function text(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function textAlignment(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toolTip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function whatsThis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function write(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QItemSelection") extern class QItemSelection {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Implement self+=value.
	**/
	public function __iadd__(value:Dynamic):Dynamic;
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
		Return len(self).
	**/
	public function __len__():Dynamic;
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
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
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
	/**
		append(self, QItemSelectionRange)
	**/
	public function append(QItemSelectionRange:Dynamic):Void;
	/**
		clear(self)
	**/
	public function clear():Void;
	/**
		contains(self, QModelIndex) -> bool
	**/
	public function contains(QModelIndex:Dynamic):Bool;
	/**
		count(self, QItemSelectionRange) -> int
		count(self) -> int
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Int;
	/**
		first(self) -> QItemSelectionRange
	**/
	public function first():Dynamic;
	/**
		indexOf(self, QItemSelectionRange, from_: int = 0) -> int
	**/
	public function indexOf(QItemSelectionRange:Dynamic, ?from:Dynamic):Int;
	/**
		indexes(self) -> List[QModelIndex]
	**/
	public function indexes():Dynamic;
	/**
		insert(self, int, QItemSelectionRange)
	**/
	public function insert(int:Int, QItemSelectionRange:Dynamic):Void;
	/**
		isEmpty(self) -> bool
	**/
	public function isEmpty():Bool;
	/**
		last(self) -> QItemSelectionRange
	**/
	public function last():Dynamic;
	/**
		lastIndexOf(self, QItemSelectionRange, from_: int = -1) -> int
	**/
	public function lastIndexOf(QItemSelectionRange:Dynamic, ?from:Dynamic):Int;
	/**
		merge(self, QItemSelection, Union[QItemSelectionModel.SelectionFlags, QItemSelectionModel.SelectionFlag])
	**/
	public function merge(QItemSelection:Dynamic, Union:Dynamic):Void;
	/**
		move(self, int, int)
	**/
	public function move(int:Int, int:Int):Void;
	/**
		prepend(self, QItemSelectionRange)
	**/
	public function prepend(QItemSelectionRange:Dynamic):Void;
	/**
		removeAll(self, QItemSelectionRange) -> int
	**/
	public function removeAll(QItemSelectionRange:Dynamic):Int;
	/**
		removeAt(self, int)
	**/
	public function removeAt(int:Int):Void;
	/**
		replace(self, int, QItemSelectionRange)
	**/
	public function replace(int:Int, QItemSelectionRange:Dynamic):Void;
	/**
		select(self, QModelIndex, QModelIndex)
	**/
	public function select(QModelIndex:Dynamic, QModelIndex:Dynamic):Void;
	/**
		split(QItemSelectionRange, QItemSelectionRange, QItemSelection)
	**/
	static public function split(QItemSelectionRange:Dynamic, QItemSelectionRange:Dynamic, QItemSelection:Dynamic):Void;
	/**
		swap(self, int, int)
	**/
	public function swap(int:Int, int:Int):Void;
	/**
		takeAt(self, int) -> QItemSelectionRange
	**/
	public function takeAt(int:Int):Dynamic;
	/**
		takeFirst(self) -> QItemSelectionRange
	**/
	public function takeFirst():Dynamic;
	/**
		takeLast(self) -> QItemSelectionRange
	**/
	public function takeLast():Dynamic;
}
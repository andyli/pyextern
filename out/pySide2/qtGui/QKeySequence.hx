/* This file is generated, do not edit! */
package pySide2.qtGui;
@:pythonImport("PySide2.QtGui", "QKeySequence") extern class QKeySequence {
	static public var AddTab : Dynamic;
	static public var Back : Dynamic;
	static public var Backspace : Dynamic;
	static public var Bold : Dynamic;
	static public var Cancel : Dynamic;
	static public var Close : Dynamic;
	static public var Copy : Dynamic;
	static public var Cut : Dynamic;
	static public var Delete : Dynamic;
	static public var DeleteCompleteLine : Dynamic;
	static public var DeleteEndOfLine : Dynamic;
	static public var DeleteEndOfWord : Dynamic;
	static public var DeleteStartOfWord : Dynamic;
	static public var Deselect : Dynamic;
	static public var ExactMatch : Dynamic;
	static public var Find : Dynamic;
	static public var FindNext : Dynamic;
	static public var FindPrevious : Dynamic;
	static public var Forward : Dynamic;
	static public var FullScreen : Dynamic;
	static public var HelpContents : Dynamic;
	static public var InsertLineSeparator : Dynamic;
	static public var InsertParagraphSeparator : Dynamic;
	static public var Italic : Dynamic;
	static public var MoveToEndOfBlock : Dynamic;
	static public var MoveToEndOfDocument : Dynamic;
	static public var MoveToEndOfLine : Dynamic;
	static public var MoveToNextChar : Dynamic;
	static public var MoveToNextLine : Dynamic;
	static public var MoveToNextPage : Dynamic;
	static public var MoveToNextWord : Dynamic;
	static public var MoveToPreviousChar : Dynamic;
	static public var MoveToPreviousLine : Dynamic;
	static public var MoveToPreviousPage : Dynamic;
	static public var MoveToPreviousWord : Dynamic;
	static public var MoveToStartOfBlock : Dynamic;
	static public var MoveToStartOfDocument : Dynamic;
	static public var MoveToStartOfLine : Dynamic;
	static public var NativeText : Dynamic;
	static public var New : Dynamic;
	static public var NextChild : Dynamic;
	static public var NoMatch : Dynamic;
	static public var Open : Dynamic;
	static public var PartialMatch : Dynamic;
	static public var Paste : Dynamic;
	static public var PortableText : Dynamic;
	static public var Preferences : Dynamic;
	static public var PreviousChild : Dynamic;
	static public var Print : Dynamic;
	static public var Quit : Dynamic;
	static public var Redo : Dynamic;
	static public var Refresh : Dynamic;
	static public var Replace : Dynamic;
	static public var Save : Dynamic;
	static public var SaveAs : Dynamic;
	static public var SelectAll : Dynamic;
	static public var SelectEndOfBlock : Dynamic;
	static public var SelectEndOfDocument : Dynamic;
	static public var SelectEndOfLine : Dynamic;
	static public var SelectNextChar : Dynamic;
	static public var SelectNextLine : Dynamic;
	static public var SelectNextPage : Dynamic;
	static public var SelectNextWord : Dynamic;
	static public var SelectPreviousChar : Dynamic;
	static public var SelectPreviousLine : Dynamic;
	static public var SelectPreviousPage : Dynamic;
	static public var SelectPreviousWord : Dynamic;
	static public var SelectStartOfBlock : Dynamic;
	static public var SelectStartOfDocument : Dynamic;
	static public var SelectStartOfLine : Dynamic;
	public function SequenceFormat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function SequenceMatch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function StandardKey(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Underline : Dynamic;
	static public var Undo : Dynamic;
	static public var UnknownKey : Dynamic;
	static public var WhatsThis : Dynamic;
	static public var ZoomIn : Dynamic;
	static public var ZoomOut : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
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
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function fromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEmpty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function keyBindings(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function listFromString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function listToString(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function matches(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function mnemonic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function swap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function toString(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
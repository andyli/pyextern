/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.preprocessing.text;
@:pythonImport("tensorflow.contrib.learn.python.learn.preprocessing.text", "VocabularyProcessor") extern class VocabularyProcessor {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initializes a VocabularyProcessor instance.
		
		Args:
		  max_document_length: Maximum length of documents.
		    if documents are longer, they will be trimmed, if shorter - padded.
		  min_frequency: Minimum frequency of words in the vocabulary.
		  vocabulary: CategoricalVocabulary object.
		
		Attributes:
		  vocabulary_: CategoricalVocabulary object.
	**/
	@:native("__init__")
	public function ___init__(max_document_length:Dynamic, ?min_frequency:Dynamic, ?vocabulary:Dynamic, ?tokenizer_fn:Dynamic):Dynamic;
	/**
		Initializes a VocabularyProcessor instance.
		
		Args:
		  max_document_length: Maximum length of documents.
		    if documents are longer, they will be trimmed, if shorter - padded.
		  min_frequency: Minimum frequency of words in the vocabulary.
		  vocabulary: CategoricalVocabulary object.
		
		Attributes:
		  vocabulary_: CategoricalVocabulary object.
	**/
	public function new(max_document_length:Dynamic, ?min_frequency:Dynamic, ?vocabulary:Dynamic, ?tokenizer_fn:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Learn a vocabulary dictionary of all tokens in the raw documents.
		
		Args:
		  raw_documents: An iterable which yield either str or unicode.
		  unused_y: to match fit format signature of estimators.
		
		Returns:
		  self
	**/
	public function fit(raw_documents:Dynamic, ?unused_y:Dynamic):Dynamic;
	/**
		Learn the vocabulary dictionary and return indexies of words.
		
		Args:
		  raw_documents: An iterable which yield either str or unicode.
		  unused_y: to match fit_transform signature of estimators.
		
		Returns:
		  x: iterable, [n_samples, max_document_length]. Word-id matrix.
	**/
	public function fit_transform(raw_documents:Dynamic, ?unused_y:Dynamic):Dynamic;
	/**
		Restores vocabulary processor from given file.
		
		Args:
		  filename: Path to file to load from.
		
		Returns:
		  VocabularyProcessor object.
	**/
	static public function restore(filename:Dynamic):Dynamic;
	/**
		Reverses output of vocabulary mapping to words.
		
		Args:
		  documents: iterable, list of class ids.
		
		Yields:
		  Iterator over mapped in words documents.
	**/
	public function reverse(documents:Dynamic):Dynamic;
	/**
		Saves vocabulary processor into given file.
		
		Args:
		  filename: Path to output file.
	**/
	public function save(filename:Dynamic):Dynamic;
	/**
		Transform documents to word-id matrix.
		
		Convert words to ids with vocabulary fitted with fit or the one
		provided in the constructor.
		
		Args:
		  raw_documents: An iterable which yield either str or unicode.
		
		Yields:
		  x: iterable, [n_samples, max_document_length]. Word-id matrix.
	**/
	public function transform(raw_documents:Dynamic):Dynamic;
}
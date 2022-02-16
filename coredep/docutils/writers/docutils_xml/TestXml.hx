/* This file is generated, do not edit! */
package docutils.writers.docutils_xml;
@:pythonImport("docutils.writers.docutils_xml", "TestXml") extern class TestXml {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
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
		Receive notification of character data.
		
		The Parser will call this method to report each chunk of
		character data. SAX parsers may return all contiguous
		character data in a single chunk, or they may split it into
		several chunks; however, all of the characters in any single
		event must come from the same external entity so that the
		Locator provides useful information.
	**/
	public function characters(content:Dynamic):Dynamic;
	/**
		Receive notification of the end of a document.
		
		The SAX parser will invoke this method only once, and it will
		be the last method invoked during the parse. The parser shall
		not invoke this method until it has either abandoned parsing
		(because of an unrecoverable error) or reached the end of
		input.
	**/
	public function endDocument():Dynamic;
	/**
		Signals the end of an element in non-namespace mode.
		
		The name parameter contains the name of the element type, just
		as with the startElement event.
	**/
	public function endElement(name:Dynamic):Dynamic;
	/**
		Signals the end of an element in namespace mode.
		
		The name parameter contains the name of the element type, just
		as with the startElementNS event.
	**/
	public function endElementNS(name:Dynamic, qname:Dynamic):Dynamic;
	/**
		End the scope of a prefix-URI mapping.
		
		See startPrefixMapping for details. This event will always
		occur after the corresponding endElement event, but the order
		of endPrefixMapping events is not otherwise guaranteed.
	**/
	public function endPrefixMapping(prefix:Dynamic):Dynamic;
	/**
		Receive notification of ignorable whitespace in element content.
		
		Validating Parsers must use this method to report each chunk
		of ignorable whitespace (see the W3C XML 1.0 recommendation,
		section 2.10): non-validating parsers may also use this method
		if they are capable of parsing and using content models.
		
		SAX parsers may return all contiguous whitespace in a single
		chunk, or they may split it into several chunks; however, all
		of the characters in any single event must come from the same
		external entity, so that the Locator provides useful
		information.
	**/
	public function ignorableWhitespace(whitespace:Dynamic):Dynamic;
	/**
		Receive notification of a processing instruction.
		
		The Parser will invoke this method once for each processing
		instruction found: note that processing instructions may occur
		before or after the main document element.
		
		A SAX parser should never report an XML declaration (XML 1.0,
		section 2.8) or a text declaration (XML 1.0, section 4.3.1)
		using this method.
	**/
	public function processingInstruction(target:Dynamic, data:Dynamic):Dynamic;
	/**
		Called by the parser to give the application a locator for
		locating the origin of document events.
		
		SAX parsers are strongly encouraged (though not absolutely
		required) to supply a locator: if it does so, it must supply
		the locator to the application by invoking this method before
		invoking any of the other methods in the DocumentHandler
		interface.
		
		The locator allows the application to determine the end
		position of any document-related event, even if the parser is
		not reporting an error. Typically, the application will use
		this information for reporting its own errors (such as
		character content that does not match an application's
		business rules). The information returned by the locator is
		probably not sufficient for use with a search engine.
		
		Note that the locator will return correct information only
		during the invocation of the events in this interface. The
		application should not attempt to use it at any other time.
	**/
	public function setDocumentLocator(locator:Dynamic):Dynamic;
	/**
		Receive notification of a skipped entity.
		
		The Parser will invoke this method once for each entity
		skipped. Non-validating processors may skip entities if they
		have not seen the declarations (because, for example, the
		entity was declared in an external DTD subset). All processors
		may skip external entities, depending on the values of the
		http://xml.org/sax/features/external-general-entities and the
		http://xml.org/sax/features/external-parameter-entities
		properties.
	**/
	public function skippedEntity(name:Dynamic):Dynamic;
	/**
		Receive notification of the beginning of a document.
		
		The SAX parser will invoke this method only once, before any
		other methods in this interface or in DTDHandler (except for
		setDocumentLocator).
	**/
	public function startDocument():Dynamic;
	/**
		Signals the start of an element in non-namespace mode.
		
		The name parameter contains the raw XML 1.0 name of the
		element type as a string and the attrs parameter holds an
		instance of the Attributes class containing the attributes of
		the element.
	**/
	public function startElement(name:Dynamic, attrs:Dynamic):Dynamic;
	/**
		Signals the start of an element in namespace mode.
		
		The name parameter contains the name of the element type as a
		(uri, localname) tuple, the qname parameter the raw XML 1.0
		name used in the source document, and the attrs parameter
		holds an instance of the Attributes class containing the
		attributes of the element.
		
		The uri part of the name tuple is None for elements which have
		no namespace.
	**/
	public function startElementNS(name:Dynamic, qname:Dynamic, attrs:Dynamic):Dynamic;
	/**
		Begin the scope of a prefix-URI Namespace mapping.
		
		The information from this event is not necessary for normal
		Namespace processing: the SAX XML reader will automatically
		replace prefixes for element and attribute names when the
		http://xml.org/sax/features/namespaces feature is true (the
		default).
		
		There are cases, however, when applications need to use
		prefixes in character data or in attribute values, where they
		cannot safely be expanded automatically; the
		start/endPrefixMapping event supplies the information to the
		application to expand prefixes in those contexts itself, if
		necessary.
		
		Note that start/endPrefixMapping events are not guaranteed to
		be properly nested relative to each-other: all
		startPrefixMapping events will occur before the corresponding
		startElement event, and all endPrefixMapping events will occur
		after the corresponding endElement event, but their order is
		not guaranteed.
	**/
	public function startPrefixMapping(prefix:Dynamic, uri:Dynamic):Dynamic;
}
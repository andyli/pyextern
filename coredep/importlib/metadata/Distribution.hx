/* This file is generated, do not edit! */
package importlib.metadata;
@:pythonImport("importlib.metadata", "Distribution") extern class Distribution {
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
		Historically, setuptools would solicit and store 'extra'
		requirements, including those with environment markers,
		in separate sections. More modern tools expect each
		dependency to be defined separately, with any relevant
		extras and environment markers attached directly to that
		requirement. This method converts the former to the
		latter. See _test_deps_from_requires_text for an example.
	**/
	static public function _convert_egg_info_reqs_to_simple_reqs(sections:Dynamic):Dynamic;
	static public function _deps_from_requires_text(source:Dynamic):Dynamic;
	/**
		Search the meta_path for resolvers.
	**/
	static public function _discover_resolvers():Dynamic;
	public function _read_dist_info_reqs():Dynamic;
	public function _read_egg_info_reqs():Dynamic;
	/**
		Read the lines of RECORD
	**/
	public function _read_files_distinfo():Dynamic;
	/**
		SOURCES.txt might contain literal commas, so wrap each line
		in quotes.
	**/
	public function _read_files_egginfo():Dynamic;
	static public function _read_sections(lines:Dynamic):Dynamic;
	/**
		Return a Distribution for the indicated metadata path
		
		:param path: a string or path-like object
		:return: a concrete Distribution instance for the path
	**/
	static public function at(path:Dynamic):Dynamic;
	/**
		Return an iterable of Distribution objects for all packages.
		
		Pass a ``context`` or pass keyword arguments for constructing
		a context.
		
		:context: A ``DistributionFinder.Context`` object.
		:return: Iterable of Distribution objects for all packages.
	**/
	static public function discover(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var entry_points : Dynamic;
	/**
		Files in this distribution.
		
		:return: List of PackagePath for this distribution or None
		
		Result is `None` if the metadata file that enumerates files
		(i.e. RECORD for dist-info or SOURCES.txt for egg-info) is
		missing.
		Result may be empty if the metadata exists but is empty.
	**/
	public var files : Dynamic;
	/**
		Return the Distribution for the given package name.
		
		:param name: The name of the distribution package to search for.
		:return: The Distribution instance (or subclass thereof) for the named
		    package, if found.
		:raises PackageNotFoundError: When the named package's distribution
		    metadata cannot be found.
	**/
	static public function from_name(name:Dynamic):Dynamic;
	/**
		Given a path to a file in this distribution, return a path
		to it.
	**/
	public function locate_file(path:Dynamic):Dynamic;
	/**
		Return the parsed metadata for this Distribution.
		
		The returned object will have keys that name the various bits of
		metadata.  See PEP 566 for details.
	**/
	public var metadata : Dynamic;
	/**
		Attempt to load metadata file given by the name.
		
		:param filename: The name of the file in the distribution info.
		:return: The text if found, otherwise None.
	**/
	public function read_text(filename:Dynamic):Dynamic;
	/**
		Generated requirements specified for this Distribution
	**/
	public var requires : Dynamic;
	/**
		Return the 'Version' metadata for the distribution package.
	**/
	public var version : Dynamic;
}
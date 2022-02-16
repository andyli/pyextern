/* This file is generated, do not edit! */
package importlib.metadata;
@:pythonImport("importlib.metadata") extern class Metadata_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get the ``Distribution`` instance for the named package.
		
		:param distribution_name: The name of the distribution package as a string.
		:return: A ``Distribution`` instance (or subclass thereof).
	**/
	static public function distribution(distribution_name:Dynamic):Dynamic;
	/**
		Get all ``Distribution`` instances in the current environment.
		
		:return: An iterable of ``Distribution`` instances.
	**/
	static public function distributions(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return EntryPoint objects for all installed packages.
		
		:return: EntryPoint objects for all installed packages.
	**/
	static public function entry_points():Dynamic;
	/**
		Return a list of files for the named package.
		
		:param distribution_name: The name of the distribution package to query.
		:return: List of files composing the distribution.
	**/
	static public function files(distribution_name:Dynamic):Dynamic;
	/**
		Import a module.
		
		The 'package' argument is required when performing a relative import. It
		specifies the package to use as the anchor point from which to resolve the
		relative import to an absolute import.
	**/
	static public function import_module(name:Dynamic, ?_package:Dynamic):Dynamic;
	/**
		Get the metadata for the named package.
		
		:param distribution_name: The name of the distribution package to query.
		:return: An email.Message containing the parsed metadata.
	**/
	static public function metadata(distribution_name:Dynamic):Dynamic;
	/**
		Return a list of requirements for the named package.
		
		:return: An iterator of requirements, suitable for
		packaging.requirement.Requirement.
	**/
	static public function requires(distribution_name:Dynamic):Dynamic;
	/**
		Get the version string for the named package.
		
		:param distribution_name: The name of the distribution package to query.
		:return: The version string for the package as defined in the package's
		    "Version" metadata key.
	**/
	static public function version(distribution_name:Dynamic):Dynamic;
}
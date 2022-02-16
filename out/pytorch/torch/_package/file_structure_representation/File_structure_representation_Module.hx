/* This file is generated, do not edit! */
package torch._package.file_structure_representation;
@:pythonImport("torch.package.file_structure_representation") extern class File_structure_representation_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function GlobPattern(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return a :class:`Directory` file structure representation created from a list of files.
		
		Args:
		    filename (str): The name given to the top-level directory that will be the
		        relative root for all file paths found in the file_list.
		
		    file_list (List[str]): List of files to add to the top-level directory.
		
		    include (Union[List[str], str]): An optional pattern that limits what is included from the file_list to
		        files whose name matches the pattern.
		
		    exclude (Union[List[str], str]): An optional pattern that excludes files whose name match the pattern.
		
		Returns:
		        :class:`Directory`: a :class:`Directory` file structure representation created from a list of files.
	**/
	static public function _create_directory_from_file_list(filename:Dynamic, file_list:Dynamic, ?include:Dynamic, ?exclude:Dynamic):Dynamic;
}
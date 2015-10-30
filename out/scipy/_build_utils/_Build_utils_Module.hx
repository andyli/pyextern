/* This file is generated, do not edit! */
package scipy._build_utils;
@:pythonImport("scipy._build_utils") extern class _Build_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns file names of source files containing Fortran ABI wrapper
		routines.
	**/
	static public function get_g77_abi_wrappers(info:Dynamic):Dynamic;
	/**
		Returns source file needed to correct SGEMV 
	**/
	static public function get_sgemv_fix(info:Dynamic):Dynamic;
	/**
		Returns True if g77 ABI wrapper must be used.
	**/
	static public function needs_g77_abi_wrapper(info:Dynamic):Dynamic;
	/**
		Returns True if SGEMV must be fixed.
	**/
	static public function needs_sgemv_fix(info:Dynamic):Dynamic;
	static public var numpy_nodepr_api : Dynamic;
	/**
		Split each file in `source_dir` into separate files per subroutine.
		
		Parameters
		----------
		source_dir : str
		    Full path to directory in which sources to be split are located.
		subroutines : list of str, optional
		    Subroutines to split. (Default: all)
		
		Returns
		-------
		fnames : list of str
		    List of file names (not including any path) that were created
		    in `source_dir`.
		
		Notes
		-----
		This function is useful for code that can't be compiled with g77 because of
		type casting errors which do work with gfortran.
		
		Created files are named: ``original_name + '_subr_i' + '.f'``, with ``i``
		starting at zero and ending at ``num_subroutines_in_file - 1``.
	**/
	static public function split_fortran_files(source_dir:Dynamic, ?subroutines:Dynamic):Dynamic;
}
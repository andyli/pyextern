/* This file is generated, do not edit! */
package pandas._libs.internals;
@:pythonImport("pandas._libs.internals") extern class Internals_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_BlockPlacement(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Enumerate contiguous runs of integers in ndarray.
		
		Iterate over elements of `blknos` yielding ``(blkno, slice(start, stop))``
		pairs for each contiguous run found.
		
		If `group` is True and there is more than one run for a certain blkno,
		``(blkno, array)`` with an array containing positions of all elements equal
		to blkno.
		
		Returns
		-------
		iter : iterator of (int, slice or array)
	**/
	static public function get_blkno_indexers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function indexer_as_slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert slice to canonical bounded form.
	**/
	static public function slice_canonize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get (start, stop, step, length) tuple for a slice.
		
		If `objlen` is not specified, slice must be bounded, otherwise the result
		will be wrong.
	**/
	static public function slice_get_indices_ex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function slice_getitem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get length of a bounded slice.
		
		The slice must not have any "open" bounds that would create dependency on
		container size, i.e.:
		- if ``s.step is None or s.step > 0``, ``s.stop`` is not ``None``
		- if ``s.step < 0``, ``s.start`` is not ``None``
		
		Otherwise, the result is unreliable.
	**/
	static public function slice_len(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
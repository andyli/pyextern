/* This file is generated, do not edit! */
package scipy.sparse._csparsetools;
@:pythonImport("scipy.sparse._csparsetools") extern class _Csparsetools_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function _lil_fancy_get_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_get_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_bool_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_clongdouble(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_complex128(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_complex64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_longdouble(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_uint16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_uint32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_uint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int32_uint8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_bool_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_clongdouble(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_complex128(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_complex64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_longdouble(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_uint16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_uint32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_uint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _lil_fancy_set_int64_uint8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get multiple items at given indices in LIL matrix and store to
		another LIL.
		
		Parameters
		----------
		M, N, rows, data
		    LIL matrix data, initially empty
		new_rows, new_idx
		    Data for LIL matrix to insert to.
		    Must be preallocated to shape `i_idx.shape`!
		i_idx, j_idx
		    Indices of elements to insert to the new LIL matrix.
	**/
	static public function lil_fancy_get(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Set multiple items to a LIL matrix.
		
		Checks for zero elements and deletes them.
		
		Parameters
		----------
		M, N, rows, data
		    LIL matrix data
		i_idx, j_idx
		    Indices of elements to insert to the new LIL matrix.
		values
		    Values of items to set.
	**/
	static public function lil_fancy_set(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get a single item from LIL matrix.
		
		Doesn't do output type conversion. Checks for bounds errors.
		
		Parameters
		----------
		M, N, rows, datas
		    Shape and data arrays for a LIL matrix
		i, j : int
		    Indices at which to get
		
		Returns
		-------
		x
		    Value at indices.
	**/
	static public function lil_get1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Column-slicing fast path for LIL matrices.
		Extracts values from rows/datas and inserts in to
		new_rows/new_datas.
		Parameters
		----------
		M, N
		     Shape of input array
		rows, datas
		     LIL data for input array, shape (M, N)
		new_rows, new_datas
		     LIL data for output array, shape (len(irows), nj)
		irows : iterator
		     Iterator yielding row indices
		j_start, j_stop, j_stride
		     Column range(j_start, j_stop, j_stride) to get
		nj : int
		     Number of columns corresponding to j_* variables.
	**/
	static public function lil_get_row_ranges(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Insert a single item to LIL matrix.
		
		Checks for bounds errors and deletes item if x is zero.
		
		Parameters
		----------
		M, N, rows, datas
		    Shape and data arrays for a LIL matrix
		i, j : int
		    Indices at which to get
		x
		    Value to insert.
	**/
	static public function lil_insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
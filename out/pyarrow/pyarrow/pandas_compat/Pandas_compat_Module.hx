/* This file is generated, do not edit! */
package pyarrow.pandas_compat;
@:pythonImport("pyarrow.pandas_compat") extern class Pandas_compat_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_any_metadata(table:Dynamic, pandas_metadata:Dynamic):Dynamic;
	/**
		Compute the name of an index column that is compatible with older
		versions of :mod:`pyarrow`.
		
		Parameters
		----------
		raw_name : str
		logical_name : str
		
		Returns
		-------
		result : str
		
		Notes
		-----
		* Part of :func:`~pyarrow.pandas_compat.table_to_blockmanager`
	**/
	static public function _backwards_compatible_index_name(raw_name:Dynamic, logical_name:Dynamic):String;
	static public function _check_data_column_metadata_consistency(all_columns:Dynamic):Dynamic;
	/**
		Convert a column name (or level) to either a string or a recursive
		collection of strings.
		
		Parameters
		----------
		name : str or tuple
		
		Returns
		-------
		value : str or tuple
		
		Examples
		--------
		>>> name = 'foo'
		>>> _column_name_to_strings(name)
		'foo'
		>>> name = ('foo', 'bar')
		>>> _column_name_to_strings(name)
		('foo', 'bar')
		>>> import pandas as pd
		>>> name = (1, pd.Timestamp('2017-02-01 00:00:00'))
		>>> _column_name_to_strings(name)
		('1', '2017-02-01 00:00:00')
	**/
	static public function _column_name_to_strings(name:Dynamic):Dynamic;
	static public function _deserialize_column_index(block_table:Dynamic, all_columns:Dynamic, column_indexes:Dynamic):Dynamic;
	static public function _extract_index_level(table:Dynamic, result_table:Dynamic, field_name:Dynamic, field_name_to_metadata:Dynamic):Dynamic;
	static public function _flatten_single_level_multiindex(index:Dynamic):Dynamic;
	static public function _get_columns_to_convert(df:Dynamic, schema:Dynamic, preserve_index:Dynamic, columns:Dynamic):Dynamic;
	/**
		Specialized version of _get_columns_to_convert in case a Schema is
		specified.
		In that case, the Schema is used as the single point of truth for the
		table structure (types, which columns are included, order of columns, ...).
	**/
	static public function _get_columns_to_convert_given_schema(df:Dynamic, schema:Dynamic, preserve_index:Dynamic):Dynamic;
	/**
		Based on the stored column pandas metadata and the extension types
		in the arrow schema, infer which columns should be converted to a
		pandas extension dtype.
		
		The 'numpy_type' field in the column metadata stores the string
		representation of the original pandas dtype (and, despite its name,
		not the 'pandas_type' field).
		Based on this string representation, a pandas/numpy dtype is constructed
		and then we can check if this dtype supports conversion from arrow.
	**/
	static public function _get_extension_dtypes(table:Dynamic, columns_metadata:Dynamic, ?types_mapper:Dynamic):Dynamic;
	/**
		Get the index level of a DataFrame given 'name' (column name in an arrow
		Schema).
	**/
	static public function _get_index_level(df:Dynamic, name:Dynamic):Dynamic;
	static public function _get_index_level_values(index:Dynamic):Dynamic;
	static public function _get_multiindex_codes(mi:Dynamic):Dynamic;
	static public function _get_range_index_descriptor(level:Dynamic):Dynamic;
	static public function _get_simple_index_descriptor(level:Dynamic, name:Dynamic):Dynamic;
	/**
		Return the name of an index level or a default name if `index.name` is
		None or is already a column name.
		
		Parameters
		----------
		index : pandas.Index
		i : int
		
		Returns
		-------
		name : str
	**/
	static public function _index_level_name(index:Dynamic, i:Dynamic, column_names:Dynamic):String;
	static public function _is_generated_index_name(name:Dynamic):Dynamic;
	static public function _level_name(name:Dynamic):Dynamic;
	static public var _logical_type_map : Dynamic;
	static public var _numpy_logical_type_map : Dynamic;
	static public var _pandas_api : Dynamic;
	static public var _pandas_logical_type_map : Dynamic;
	static public var _pandas_supported_numpy_types : Dynamic;
	/**
		Get the numpy dtype that corresponds to a pandas type.
		
		Parameters
		----------
		pandas_type : str
		    The result of a call to pandas.lib.infer_dtype.
		
		Returns
		-------
		dtype : np.dtype
		    The dtype that corresponds to `pandas_type`.
	**/
	static public function _pandas_type_to_numpy_type(pandas_type:Dynamic):Dynamic;
	/**
		Construct a pandas Block from the `item` dictionary coming from pyarrow's
		serialization or returned by arrow::python::ConvertTableToPandas.
		
		This function takes care of converting dictionary types to pandas
		categorical, Timestamp-with-timezones to the proper pandas Block, and
		conversion to pandas ExtensionBlock
		
		Parameters
		----------
		item : dict
		    For basic types, this is a dictionary in the form of
		    {'block': np.ndarray of values, 'placement': pandas block placement}.
		    Additional keys are present for other types (dictionary, timezone,
		    object).
		columns :
		    Column names of the table being constructed, used for extension types
		extension_columns : dict
		    Dictionary of {column_name: pandas_dtype} that includes all columns
		    and corresponding dtypes that will be converted to a pandas
		    ExtensionBlock.
		
		Returns
		-------
		pandas Block
	**/
	static public function _reconstruct_block(item:Dynamic, ?columns:Dynamic, ?extension_columns:Dynamic):Dynamic;
	/**
		Construct a pandas MultiIndex from `columns` and column index metadata
		in `column_indexes`.
		
		Parameters
		----------
		columns : List[pd.Index]
		    The columns coming from a pyarrow.Table
		column_indexes : List[Dict[str, str]]
		    The column index metadata deserialized from the JSON schema metadata
		    in a :class:`~pyarrow.Table`.
		
		Returns
		-------
		result : MultiIndex
		    The index reconstructed using `column_indexes` metadata with levels of
		    the correct type.
		
		Notes
		-----
		* Part of :func:`~pyarrow.pandas_compat.table_to_blockmanager`
	**/
	static public function _reconstruct_columns_from_metadata(columns:Dynamic, column_indexes:Dynamic):Dynamic;
	static public function _reconstruct_index(table:Dynamic, index_descriptors:Dynamic, all_columns:Dynamic):Dynamic;
	static public function _resolve_columns_of_interest(df:Dynamic, schema:Dynamic, columns:Dynamic):Dynamic;
	static public function _table_to_blocks(options:Dynamic, block_table:Dynamic, categories:Dynamic, extension_columns:Dynamic):Dynamic;
	/**
		Returns a dictionary containing enough metadata to reconstruct a pandas
		DataFrame as an Arrow Table, including index columns.
		
		Parameters
		----------
		columns_to_convert : list[pd.Series]
		df : pandas.DataFrame
		index_levels : List[pd.Index]
		index_descriptors : List[Dict]
		preserve_index : bool
		types : List[pyarrow.DataType]
		
		Returns
		-------
		dict
	**/
	static public function construct_metadata(columns_to_convert:Dynamic, df:Dynamic, column_names:Dynamic, index_levels:Dynamic, index_descriptors:Dynamic, preserve_index:Dynamic, types:Dynamic):Dynamic;
	static public function dataframe_to_arrays(df:Dynamic, schema:Dynamic, preserve_index:Dynamic, ?nthreads:Dynamic, ?columns:Dynamic, ?safe:Dynamic):Dynamic;
	static public function dataframe_to_serialized_dict(frame:Dynamic):Dynamic;
	static public function dataframe_to_types(df:Dynamic, preserve_index:Dynamic, ?columns:Dynamic):Dynamic;
	/**
		Deep copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function deepcopy(x:Dynamic, ?memo:Dynamic, ?_nil:Dynamic):Dynamic;
	/**
		frombytes(o, *, safe=False)
		
		Decode the given bytestring to unicode.
		
		Parameters
		----------
		o : bytes-like
		    Input object.
		safe : bool, default False
		    If true, raise on encoding errors.
	**/
	static public function frombytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Construct the metadata for a given column
		
		Parameters
		----------
		column : pandas.Series or pandas.Index
		name : str
		arrow_type : pyarrow.DataType
		field_name : str
		    Equivalent to `name` when `column` is a `Series`, otherwise if `column`
		    is a pandas Index then `field_name` will not be the same as `name`.
		    This is the name of the field in the arrow Table's schema.
		
		Returns
		-------
		dict
	**/
	static public function get_column_metadata(column:Dynamic, name:Dynamic, arrow_type:Dynamic, field_name:Dynamic):Dynamic;
	static public function get_datetimetz_type(values:Dynamic, dtype:Dynamic, type_:Dynamic):Dynamic;
	static public function get_extension_dtype_info(column:Dynamic):Dynamic;
	static public function get_logical_type(arrow_type:Dynamic):Dynamic;
	static public function get_logical_type_from_numpy(pandas_collection:Dynamic):Dynamic;
	static public function get_logical_type_map():Dynamic;
	static public function make_datetimetz(tz:Dynamic):Dynamic;
	/**
		Make a datetime64 Series timezone-aware for the given tz
	**/
	static public function make_tz_aware(series:Dynamic, tz:Dynamic):Dynamic;
	static public function serialized_dict_to_dataframe(data:Dynamic):Dynamic;
	static public function table_to_blockmanager(options:Dynamic, table:Dynamic, ?categories:Dynamic, ?ignore_metadata:Dynamic, ?types_mapper:Dynamic):Dynamic;
}
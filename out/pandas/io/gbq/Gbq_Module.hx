/* This file is generated, do not edit! */
package pandas.io.gbq;
@:pythonImport("pandas.io.gbq") extern class Gbq_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_google_client_version():Dynamic;
	/**
		Given a passed df, generate the associated Google BigQuery schema.
		
		Parameters
		----------
		df : DataFrame
		default_type : string
		    The default big query type in case the type of the column
		    does not exist in the schema.
	**/
	static public function _generate_bq_schema(df:Dynamic, ?default_type:Dynamic):Dynamic;
	static public function _parse_data(schema:Dynamic, rows:Dynamic):Dynamic;
	static public function _parse_entry(field_value:Dynamic, field_type:Dynamic):Dynamic;
	static public function bytes_to_str(b:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Concatenate pandas objects along a particular axis with optional set logic
		along the other axes. Can also add a layer of hierarchical indexing on the
		concatenation axis, which may be useful if the labels are the same (or
		overlapping) on the passed axis number
		
		Parameters
		----------
		objs : a sequence or mapping of Series, DataFrame, or Panel objects
		    If a dict is passed, the sorted keys will be used as the `keys`
		    argument, unless it is passed, in which case the values will be
		    selected (see below). Any None objects will be dropped silently unless
		    they are all None in which case a ValueError will be raised
		axis : {0, 1, ...}, default 0
		    The axis to concatenate along
		join : {'inner', 'outer'}, default 'outer'
		    How to handle indexes on other axis(es)
		join_axes : list of Index objects
		    Specific indexes to use for the other n - 1 axes instead of performing
		    inner/outer set logic
		verify_integrity : boolean, default False
		    Check whether the new concatenated axis contains duplicates. This can
		    be very expensive relative to the actual data concatenation
		keys : sequence, default None
		    If multiple levels passed, should contain tuples. Construct
		    hierarchical index using the passed keys as the outermost level
		levels : list of sequences, default None
		    Specific levels (unique values) to use for constructing a
		    MultiIndex. Otherwise they will be inferred from the keys
		names : list, default None
		    Names for the levels in the resulting hierarchical index
		ignore_index : boolean, default False
		    If True, do not use the index values along the concatenation axis. The
		    resulting axis will be labeled 0, ..., n - 1. This is useful if you are
		    concatenating objects where the concatenation axis does not have
		    meaningful indexing information. Note the the index values on the other
		    axes are still respected in the join.
		copy : boolean, default True
		    If False, do not copy data unnecessarily
		
		Notes
		-----
		The keys, levels, and names arguments are all optional
		
		Returns
		-------
		concatenated : type of objects
	**/
	static public function concat(objs:Dynamic, ?axis:Dynamic, ?join:Dynamic, ?join_axes:Dynamic, ?ignore_index:Dynamic, ?keys:Dynamic, ?levels:Dynamic, ?names:Dynamic, ?verify_integrity:Dynamic, ?copy:Dynamic):Dynamic;
	static public function deprecate(name:Dynamic, alternative:Dynamic, ?alt_name:Dynamic):Dynamic;
	static public function generate_bq_schema(df:Dynamic, ?default_type:Dynamic):Dynamic;
	static public var logger : Dynamic;
	static public function lzip(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Load data from Google BigQuery.
		
		THIS IS AN EXPERIMENTAL LIBRARY
		
		The main method a user calls to execute a Query in Google BigQuery and read results
		into a pandas DataFrame using the v2 Google API client for Python.  Documentation for
		the API is available at https://developers.google.com/api-client-library/python/.
		Authentication to the Google BigQuery service is via OAuth 2.0 using the product name
		'pandas GBQ'.
		
		Parameters
		----------
		query : str
		    SQL-Like Query to return data values
		project_id : str
		    Google BigQuery Account project ID.
		index_col : str (optional)
		    Name of result column to use for index in results DataFrame
		col_order : list(str) (optional)
		    List of BigQuery column names in the desired order for results
		    DataFrame
		reauth : boolean (default False)
		    Force Google BigQuery to reauthenticate the user. This is useful
		    if multiple accounts are used.
		verbose : boolean (default True)
		    Verbose output
		
		Returns
		-------
		df: DataFrame
		    DataFrame representing results of query
	**/
	static public function read_gbq(query:Dynamic, ?project_id:Dynamic, ?index_col:Dynamic, ?col_order:Dynamic, ?reauth:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		sleep(seconds)
		
		Delay execution for a given number of seconds.  The argument may be
		a floating point number for subsecond precision.
	**/
	static public function sleep(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Write a DataFrame to a Google BigQuery table.
		
		THIS IS AN EXPERIMENTAL LIBRARY
		
		Parameters
		----------
		dataframe : DataFrame
		    DataFrame to be written
		destination_table : string
		    Name of table to be written, in the form 'dataset.tablename'
		project_id : str
		    Google BigQuery Account project ID.
		chunksize : int (default 10000)
		    Number of rows to be inserted in each chunk from the dataframe.
		verbose : boolean (default True)
		    Show percentage complete
		reauth : boolean (default False)
		    Force Google BigQuery to reauthenticate the user. This is useful
		    if multiple accounts are used.
		if_exists : {'fail', 'replace', 'append'}, default 'fail'
		    'fail': If table exists, do nothing.
		    'replace': If table exists, drop it, recreate it, and insert data.
		    'append': If table exists, insert data. Create if does not exist.
	**/
	static public function to_gbq(dataframe:Dynamic, destination_table:Dynamic, project_id:Dynamic, ?chunksize:Dynamic, ?verbose:Dynamic, ?reauth:Dynamic, ?if_exists:Dynamic):Dynamic;
}
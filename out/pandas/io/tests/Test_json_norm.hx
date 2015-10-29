/* This file is generated, do not edit! */
package pandas.io.tests;
@:pythonImport("pandas.io.tests.test_json_norm") extern class Test_json_norm {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _assert_equal_data(left:Dynamic, right:Dynamic):Dynamic;
	/**
		"Normalize" semi-structured JSON data into a flat table
		
		Parameters
		----------
		data : dict or list of dicts
		    Unserialized JSON objects
		record_path : string or list of strings, default None
		    Path in each object to list of records. If not passed, data will be
		    assumed to be an array of records
		meta : list of paths (string or list of strings), default None
		    Fields to use as metadata for each record in resulting table
		record_prefix : string, default None
		    If True, prefix records with dotted (?) path, e.g. foo.bar.field if
		    path to records is ['foo', 'bar']
		meta_prefix : string, default None
		
		Returns
		-------
		frame : DataFrame
		
		Examples
		--------
		
		>>> data = [{'state': 'Florida',
		...          'shortname': 'FL',
		...          'info': {
		...               'governor': 'Rick Scott'
		...          },
		...          'counties': [{'name': 'Dade', 'population': 12345},
		...                      {'name': 'Broward', 'population': 40000},
		...                      {'name': 'Palm Beach', 'population': 60000}]},
		...         {'state': 'Ohio',
		...          'shortname': 'OH',
		...          'info': {
		...               'governor': 'John Kasich'
		...          },
		...          'counties': [{'name': 'Summit', 'population': 1234},
		...                       {'name': 'Cuyahoga', 'population': 1337}]}]
		>>> from pandas.io.json import json_normalize
		>>> result = json_normalize(data, 'counties', ['state', 'shortname',
		...                                           ['info', 'governor']])
		>>> result
		         name  population info.governor    state shortname
		0        Dade       12345    Rick Scott  Florida        FL
		1     Broward       40000    Rick Scott  Florida        FL
		2  Palm Beach       60000    Rick Scott  Florida        FL
		3      Summit        1234   John Kasich     Ohio        OH
		4    Cuyahoga        1337   John Kasich     Ohio        OH
	**/
	static public function json_normalize(data:Dynamic, ?record_path:Dynamic, ?meta:Dynamic, ?meta_prefix:Dynamic, ?record_prefix:Dynamic):Dynamic;
	/**
		a simplified json_normalize
		
		converts a nested dict into a flat dict ("record"), unlike json_normalize,
		it does not attempt to extract a subset of the data.
		
		Parameters
		----------
		ds : dict or list of dicts
		prefix: the prefix, optional, default: ""
		level: the number of levels in the jason string, optional, default: 0
		
		Returns
		-------
		d - dict or list of dicts, matching `ds`
		
		Examples
		--------
		
		IN[52]: nested_to_record(dict(flat1=1,dict1=dict(c=1,d=2),
		                              nested=dict(e=dict(c=1,d=2),d=2)))
		Out[52]:
		{'dict1.c': 1,
		 'dict1.d': 2,
		 'flat1': 1,
		 'nested.d': 2,
		 'nested.e.c': 1,
		 'nested.e.d': 2}
	**/
	static public function nested_to_record(ds:Dynamic, ?prefix:Dynamic, ?level:Dynamic):Dynamic;
}
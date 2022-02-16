/* This file is generated, do not edit! */
package pandas.io.json._normalize;
@:pythonImport("pandas.io.json._normalize") extern class _Normalize_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function DefaultDict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Scalar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Normalize semi-structured JSON data into a flat table.
		
		Parameters
		----------
		data : dict or list of dicts
		    Unserialized JSON objects.
		record_path : str or list of str, default None
		    Path in each object to list of records. If not passed, data will be
		    assumed to be an array of records.
		meta : list of paths (str or list of str), default None
		    Fields to use as metadata for each record in resulting table.
		meta_prefix : str, default None
		    If True, prefix records with dotted (?) path, e.g. foo.bar.field if
		    meta is ['foo', 'bar'].
		record_prefix : str, default None
		    If True, prefix records with dotted (?) path, e.g. foo.bar.field if
		    path to records is ['foo', 'bar'].
		errors : {'raise', 'ignore'}, default 'raise'
		    Configures error handling.
		
		    * 'ignore' : will ignore KeyError if keys listed in meta are not
		      always present.
		    * 'raise' : will raise KeyError if keys listed in meta are not
		      always present.
		sep : str, default '.'
		    Nested records will generate names separated by sep.
		    e.g., for sep='.', {'foo': {'bar': 0}} -> foo.bar.
		max_level : int, default None
		    Max number of levels(depth of dict) to normalize.
		    if None, normalizes all levels.
		
		    .. versionadded:: 0.25.0
		
		Returns
		-------
		frame : DataFrame
		Normalize semi-structured JSON data into a flat table.
		
		Examples
		--------
		>>> data = [
		...     {"id": 1, "name": {"first": "Coleen", "last": "Volk"}},
		...     {"name": {"given": "Mark", "family": "Regner"}},
		...     {"id": 2, "name": "Faye Raker"},
		... ]
		>>> pd.json_normalize(data)
		    id name.first name.last name.given name.family        name
		0  1.0     Coleen      Volk        NaN         NaN         NaN
		1  NaN        NaN       NaN       Mark      Regner         NaN
		2  2.0        NaN       NaN        NaN         NaN  Faye Raker
		
		>>> data = [
		...     {
		...         "id": 1,
		...         "name": "Cole Volk",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		...     {"name": "Mark Reg", "fitness": {"height": 130, "weight": 60}},
		...     {
		...         "id": 2,
		...         "name": "Faye Raker",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		... ]
		>>> pd.json_normalize(data, max_level=0)
		    id        name                        fitness
		0  1.0   Cole Volk  {'height': 130, 'weight': 60}
		1  NaN    Mark Reg  {'height': 130, 'weight': 60}
		2  2.0  Faye Raker  {'height': 130, 'weight': 60}
		
		Normalizes nested data up to level 1.
		
		>>> data = [
		...     {
		...         "id": 1,
		...         "name": "Cole Volk",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		...     {"name": "Mark Reg", "fitness": {"height": 130, "weight": 60}},
		...     {
		...         "id": 2,
		...         "name": "Faye Raker",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		... ]
		>>> pd.json_normalize(data, max_level=1)
		    id        name  fitness.height  fitness.weight
		0  1.0   Cole Volk             130              60
		1  NaN    Mark Reg             130              60
		2  2.0  Faye Raker             130              60
		
		>>> data = [
		...     {
		...         "state": "Florida",
		...         "shortname": "FL",
		...         "info": {"governor": "Rick Scott"},
		...         "counties": [
		...             {"name": "Dade", "population": 12345},
		...             {"name": "Broward", "population": 40000},
		...             {"name": "Palm Beach", "population": 60000},
		...         ],
		...     },
		...     {
		...         "state": "Ohio",
		...         "shortname": "OH",
		...         "info": {"governor": "John Kasich"},
		...         "counties": [
		...             {"name": "Summit", "population": 1234},
		...             {"name": "Cuyahoga", "population": 1337},
		...         ],
		...     },
		... ]
		>>> result = pd.json_normalize(
		...     data, "counties", ["state", "shortname", ["info", "governor"]]
		... )
		>>> result
		         name  population    state shortname info.governor
		0        Dade       12345   Florida    FL    Rick Scott
		1     Broward       40000   Florida    FL    Rick Scott
		2  Palm Beach       60000   Florida    FL    Rick Scott
		3      Summit        1234   Ohio       OH    John Kasich
		4    Cuyahoga        1337   Ohio       OH    John Kasich
		
		>>> data = {"A": [1, 2]}
		>>> pd.json_normalize(data, "A", record_prefix="Prefix.")
		    Prefix.0
		0          1
		1          2
		
		Returns normalized data with columns prefixed with the given string.
	**/
	static public function _json_normalize(data:Dynamic, ?record_path:Dynamic, ?meta:Dynamic, ?meta_prefix:Dynamic, ?record_prefix:Dynamic, ?errors:Dynamic, ?sep:Dynamic, ?max_level:Dynamic):Dynamic;
	/**
		Main recursive function
		Designed for the most basic use case of pd.json_normalize(data)
		intended as a performance improvement, see #15621
		
		Parameters
		----------
		data : Any
		    Type dependent on types contained within nested Json
		key_string : str
		    New key (with separator(s) in) for data
		normalized_dict : dict
		    The new normalized/flattened Json dict
		separator : str, default '.'
		    Nested records will generate names separated by sep,
		    e.g., for sep='.', { 'foo' : { 'bar' : 0 } } -> foo.bar
	**/
	static public function _normalise_json(data:Dynamic, key_string:Dynamic, normalized_dict:Dynamic, separator:Dynamic):Dynamic;
	/**
		Order the top level keys and then recursively go to depth
		
		Parameters
		----------
		data : dict or list of dicts
		separator : str, default '.'
		    Nested records will generate names separated by sep,
		    e.g., for sep='.', { 'foo' : { 'bar' : 0 } } -> foo.bar
		
		Returns
		-------
		dict or list of dicts, matching `normalised_json_object`
	**/
	static public function _normalise_json_ordered(data:Dynamic, separator:Dynamic):Dynamic;
	/**
		A optimized basic json_normalize
		
		Converts a nested dict into a flat dict ("record"), unlike
		json_normalize and nested_to_record it doesn't do anything clever.
		But for the most basic use cases it enhances performance.
		E.g. pd.json_normalize(data)
		
		Parameters
		----------
		ds : dict or list of dicts
		sep : str, default '.'
		    Nested records will generate names separated by sep,
		    e.g., for sep='.', { 'foo' : { 'bar' : 0 } } -> foo.bar
		
		Returns
		-------
		frame : DataFrame
		d - dict or list of dicts, matching `normalised_json_object`
		
		Examples
		--------
		>>> _simple_json_normalize(
		...     {
		...         "flat1": 1,
		...         "dict1": {"c": 1, "d": 2},
		...         "nested": {"e": {"c": 1, "d": 2}, "d": 2},
		...     }
		... )
		{'flat1': 1, 'dict1.c': 1, 'dict1.d': 2, 'nested.e.c': 1, 'nested.e.d': 2, 'nested.d': 2}
	**/
	static public function _simple_json_normalize(ds:Dynamic, ?sep:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		replace comma separated json with line feeds, paying special attention
		to quotes & brackets
	**/
	static public function convert_json_to_lines(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper function that converts JSON lists to line delimited JSON.
	**/
	static public function convert_to_line_delimits(s:Dynamic):Dynamic;
	/**
		Return a new function that emits a deprecation warning on use.
		
		To use this method for a deprecated function, another function
		`alternative` with the same signature must exist. The deprecated
		function will emit a deprecation warning, and in the docstring
		it will contain the deprecation directive with the provided version
		so it can be detected for future removal.
		
		Parameters
		----------
		name : str
		    Name of function to deprecate.
		alternative : func
		    Function to use instead.
		version : str
		    Version of pandas in which the method has been deprecated.
		alt_name : str, optional
		    Name to use in preference of alternative.__name__.
		klass : Warning, default FutureWarning
		stacklevel : int, default 2
		msg : str
		    The message to display in the warning.
		    Default is '{name} is deprecated. Use {alt_name} instead.'
	**/
	static public function deprecate(name:Dynamic, alternative:Dynamic, version:Dynamic, ?alt_name:Dynamic, ?klass:Dynamic, ?stacklevel:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		        Normalize semi-structured JSON data into a flat table.
		
		        .. deprecated:: 1.0.0
		            Use `pandas.json_normalize` instead.
		
		        Parameters
		----------
		data : dict or list of dicts
		    Unserialized JSON objects.
		record_path : str or list of str, default None
		    Path in each object to list of records. If not passed, data will be
		    assumed to be an array of records.
		meta : list of paths (str or list of str), default None
		    Fields to use as metadata for each record in resulting table.
		meta_prefix : str, default None
		    If True, prefix records with dotted (?) path, e.g. foo.bar.field if
		    meta is ['foo', 'bar'].
		record_prefix : str, default None
		    If True, prefix records with dotted (?) path, e.g. foo.bar.field if
		    path to records is ['foo', 'bar'].
		errors : {'raise', 'ignore'}, default 'raise'
		    Configures error handling.
		
		    * 'ignore' : will ignore KeyError if keys listed in meta are not
		      always present.
		    * 'raise' : will raise KeyError if keys listed in meta are not
		      always present.
		sep : str, default '.'
		    Nested records will generate names separated by sep.
		    e.g., for sep='.', {'foo': {'bar': 0}} -> foo.bar.
		max_level : int, default None
		    Max number of levels(depth of dict) to normalize.
		    if None, normalizes all levels.
		
		    .. versionadded:: 0.25.0
		
		Returns
		-------
		frame : DataFrame
		Normalize semi-structured JSON data into a flat table.
		
		Examples
		--------
		>>> data = [
		...     {"id": 1, "name": {"first": "Coleen", "last": "Volk"}},
		...     {"name": {"given": "Mark", "family": "Regner"}},
		...     {"id": 2, "name": "Faye Raker"},
		... ]
		>>> pd.json_normalize(data)
		    id name.first name.last name.given name.family        name
		0  1.0     Coleen      Volk        NaN         NaN         NaN
		1  NaN        NaN       NaN       Mark      Regner         NaN
		2  2.0        NaN       NaN        NaN         NaN  Faye Raker
		
		>>> data = [
		...     {
		...         "id": 1,
		...         "name": "Cole Volk",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		...     {"name": "Mark Reg", "fitness": {"height": 130, "weight": 60}},
		...     {
		...         "id": 2,
		...         "name": "Faye Raker",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		... ]
		>>> pd.json_normalize(data, max_level=0)
		    id        name                        fitness
		0  1.0   Cole Volk  {'height': 130, 'weight': 60}
		1  NaN    Mark Reg  {'height': 130, 'weight': 60}
		2  2.0  Faye Raker  {'height': 130, 'weight': 60}
		
		Normalizes nested data up to level 1.
		
		>>> data = [
		...     {
		...         "id": 1,
		...         "name": "Cole Volk",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		...     {"name": "Mark Reg", "fitness": {"height": 130, "weight": 60}},
		...     {
		...         "id": 2,
		...         "name": "Faye Raker",
		...         "fitness": {"height": 130, "weight": 60},
		...     },
		... ]
		>>> pd.json_normalize(data, max_level=1)
		    id        name  fitness.height  fitness.weight
		0  1.0   Cole Volk             130              60
		1  NaN    Mark Reg             130              60
		2  2.0  Faye Raker             130              60
		
		>>> data = [
		...     {
		...         "state": "Florida",
		...         "shortname": "FL",
		...         "info": {"governor": "Rick Scott"},
		...         "counties": [
		...             {"name": "Dade", "population": 12345},
		...             {"name": "Broward", "population": 40000},
		...             {"name": "Palm Beach", "population": 60000},
		...         ],
		...     },
		...     {
		...         "state": "Ohio",
		...         "shortname": "OH",
		...         "info": {"governor": "John Kasich"},
		...         "counties": [
		...             {"name": "Summit", "population": 1234},
		...             {"name": "Cuyahoga", "population": 1337},
		...         ],
		...     },
		... ]
		>>> result = pd.json_normalize(
		...     data, "counties", ["state", "shortname", ["info", "governor"]]
		... )
		>>> result
		         name  population    state shortname info.governor
		0        Dade       12345   Florida    FL    Rick Scott
		1     Broward       40000   Florida    FL    Rick Scott
		2  Palm Beach       60000   Florida    FL    Rick Scott
		3      Summit        1234   Ohio       OH    John Kasich
		4    Cuyahoga        1337   Ohio       OH    John Kasich
		
		>>> data = {"A": [1, 2]}
		>>> pd.json_normalize(data, "A", record_prefix="Prefix.")
		    Prefix.0
		0          1
		1          2
		
		Returns normalized data with columns prefixed with the given string.
	**/
	static public function json_normalize(data:Dynamic, ?record_path:Dynamic, ?meta:Dynamic, ?meta_prefix:Dynamic, ?record_prefix:Dynamic, ?errors:Dynamic, ?sep:Dynamic, ?max_level:Dynamic):Dynamic;
	/**
		A simplified json_normalize
		
		Converts a nested dict into a flat dict ("record"), unlike json_normalize,
		it does not attempt to extract a subset of the data.
		
		Parameters
		----------
		ds : dict or list of dicts
		prefix: the prefix, optional, default: ""
		sep : str, default '.'
		    Nested records will generate names separated by sep,
		    e.g., for sep='.', { 'foo' : { 'bar' : 0 } } -> foo.bar
		level: int, optional, default: 0
		    The number of levels in the json string.
		
		max_level: int, optional, default: None
		    The max depth to normalize.
		
		    .. versionadded:: 0.25.0
		
		Returns
		-------
		d - dict or list of dicts, matching `ds`
		
		Examples
		--------
		>>> nested_to_record(
		...     dict(flat1=1, dict1=dict(c=1, d=2), nested=dict(e=dict(c=1, d=2), d=2))
		... )
		{'flat1': 1, 'dict1.c': 1, 'dict1.d': 2, 'nested.e.c': 1, 'nested.e.d': 2, 'nested.d': 2}
	**/
	static public function nested_to_record(ds:Dynamic, ?prefix:Dynamic, ?sep:Dynamic, ?level:Dynamic, ?max_level:Dynamic):Dynamic;
}
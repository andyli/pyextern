/* This file is generated, do not edit! */
package pandas.io.gbq;
@:pythonImport("pandas.io.gbq") extern class Gbq_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _try_import():Dynamic;
	static public var annotations : Dynamic;
	/**
		Import an optional dependency.
		
		By default, if a dependency is missing an ImportError with a nice
		message will be raised. If a dependency is present, but too old,
		we raise.
		
		Parameters
		----------
		name : str
		    The module name.
		extra : str
		    Additional text to include in the ImportError message.
		errors : str {'raise', 'warn', 'ignore'}
		    What to do when a dependency is not found or its version is too old.
		
		    * raise : Raise an ImportError
		    * warn : Only applicable when a module's version is to old.
		      Warns that the version is too old and returns None
		    * ignore: If the module is not installed, return None, otherwise,
		      return the module, even if the version is too old.
		      It's expected that users validate the version locally when
		      using ``errors="ignore"`` (see. ``io/html.py``)
		min_version : str, default None
		    Specify a minimum version that is different from the global pandas
		    minimum version required.
		Returns
		-------
		maybe_module : Optional[ModuleType]
		    The imported module, when found and the version is correct.
		    None is returned when the package is not found and `errors`
		    is False, or when the package's version is too old and `errors`
		    is ``'warn'``.
	**/
	static public function import_optional_dependency(name:Dynamic, ?extra:Dynamic, ?errors:Dynamic, ?min_version:Dynamic):Dynamic;
	/**
		Load data from Google BigQuery.
		
		This function requires the `pandas-gbq package
		<https://pandas-gbq.readthedocs.io>`__.
		
		See the `How to authenticate with Google BigQuery
		<https://pandas-gbq.readthedocs.io/en/latest/howto/authentication.html>`__
		guide for authentication instructions.
		
		Parameters
		----------
		query : str
		    SQL-Like Query to return data values.
		project_id : str, optional
		    Google BigQuery Account project ID. Optional when available from
		    the environment.
		index_col : str, optional
		    Name of result column to use for index in results DataFrame.
		col_order : list(str), optional
		    List of BigQuery column names in the desired order for results
		    DataFrame.
		reauth : bool, default False
		    Force Google BigQuery to re-authenticate the user. This is useful
		    if multiple accounts are used.
		auth_local_webserver : bool, default False
		    Use the `local webserver flow`_ instead of the `console flow`_
		    when getting user credentials.
		
		    .. _local webserver flow:
		        https://google-auth-oauthlib.readthedocs.io/en/latest/reference/google_auth_oauthlib.flow.html#google_auth_oauthlib.flow.InstalledAppFlow.run_local_server
		    .. _console flow:
		        https://google-auth-oauthlib.readthedocs.io/en/latest/reference/google_auth_oauthlib.flow.html#google_auth_oauthlib.flow.InstalledAppFlow.run_console
		
		    *New in version 0.2.0 of pandas-gbq*.
		dialect : str, default 'legacy'
		    Note: The default value is changing to 'standard' in a future version.
		
		    SQL syntax dialect to use. Value can be one of:
		
		    ``'legacy'``
		        Use BigQuery's legacy SQL dialect. For more information see
		        `BigQuery Legacy SQL Reference
		        <https://cloud.google.com/bigquery/docs/reference/legacy-sql>`__.
		    ``'standard'``
		        Use BigQuery's standard SQL, which is
		        compliant with the SQL 2011 standard. For more information
		        see `BigQuery Standard SQL Reference
		        <https://cloud.google.com/bigquery/docs/reference/standard-sql/>`__.
		location : str, optional
		    Location where the query job should run. See the `BigQuery locations
		    documentation
		    <https://cloud.google.com/bigquery/docs/dataset-locations>`__ for a
		    list of available locations. The location must match that of any
		    datasets used in the query.
		
		    *New in version 0.5.0 of pandas-gbq*.
		configuration : dict, optional
		    Query config parameters for job processing.
		    For example:
		
		        configuration = {'query': {'useQueryCache': False}}
		
		    For more information see `BigQuery REST API Reference
		    <https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs#configuration.query>`__.
		credentials : google.auth.credentials.Credentials, optional
		    Credentials for accessing Google APIs. Use this parameter to override
		    default credentials, such as to use Compute Engine
		    :class:`google.auth.compute_engine.Credentials` or Service Account
		    :class:`google.oauth2.service_account.Credentials` directly.
		
		    *New in version 0.8.0 of pandas-gbq*.
		use_bqstorage_api : bool, default False
		    Use the `BigQuery Storage API
		    <https://cloud.google.com/bigquery/docs/reference/storage/>`__ to
		    download query results quickly, but at an increased cost. To use this
		    API, first `enable it in the Cloud Console
		    <https://console.cloud.google.com/apis/library/bigquerystorage.googleapis.com>`__.
		    You must also have the `bigquery.readsessions.create
		    <https://cloud.google.com/bigquery/docs/access-control#roles>`__
		    permission on the project you are billing queries to.
		
		    This feature requires version 0.10.0 or later of the ``pandas-gbq``
		    package. It also requires the ``google-cloud-bigquery-storage`` and
		    ``fastavro`` packages.
		
		    .. versionadded:: 0.25.0
		max_results : int, optional
		    If set, limit the maximum number of rows to fetch from the query
		    results.
		
		    *New in version 0.12.0 of pandas-gbq*.
		
		    .. versionadded:: 1.1.0
		progress_bar_type : Optional, str
		    If set, use the `tqdm <https://tqdm.github.io/>`__ library to
		    display a progress bar while the data downloads. Install the
		    ``tqdm`` package to use this feature.
		
		    Possible values of ``progress_bar_type`` include:
		
		    ``None``
		        No progress bar.
		    ``'tqdm'``
		        Use the :func:`tqdm.tqdm` function to print a progress bar
		        to :data:`sys.stderr`.
		    ``'tqdm_notebook'``
		        Use the :func:`tqdm.tqdm_notebook` function to display a
		        progress bar as a Jupyter notebook widget.
		    ``'tqdm_gui'``
		        Use the :func:`tqdm.tqdm_gui` function to display a
		        progress bar as a graphical dialog box.
		
		    Note that this feature requires version 0.12.0 or later of the
		    ``pandas-gbq`` package. And it requires the ``tqdm`` package. Slightly
		    different than ``pandas-gbq``, here the default is ``None``.
		
		    .. versionadded:: 1.0.0
		
		Returns
		-------
		df: DataFrame
		    DataFrame representing results of query.
		
		See Also
		--------
		pandas_gbq.read_gbq : This function in the pandas-gbq library.
		DataFrame.to_gbq : Write a DataFrame to Google BigQuery.
	**/
	static public function read_gbq(query:Dynamic, ?project_id:Dynamic, ?index_col:Dynamic, ?col_order:Dynamic, ?reauth:Dynamic, ?auth_local_webserver:Dynamic, ?dialect:Dynamic, ?location:Dynamic, ?configuration:Dynamic, ?credentials:Dynamic, ?use_bqstorage_api:Dynamic, ?max_results:Dynamic, ?progress_bar_type:Dynamic):Dynamic;
	static public function to_gbq(dataframe:Dynamic, destination_table:Dynamic, ?project_id:Dynamic, ?chunksize:Dynamic, ?reauth:Dynamic, ?if_exists:Dynamic, ?auth_local_webserver:Dynamic, ?table_schema:Dynamic, ?location:Dynamic, ?progress_bar:Dynamic, ?credentials:Dynamic):Dynamic;
}
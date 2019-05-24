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
	static public function _try_import():Dynamic;
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
		reauth : boolean, default False
		    Force Google BigQuery to re-authenticate the user. This is useful
		    if multiple accounts are used.
		auth_local_webserver : boolean, default False
		    Use the `local webserver flow`_ instead of the `console flow`_
		    when getting user credentials.
		
		    .. _local webserver flow:
		        http://google-auth-oauthlib.readthedocs.io/en/latest/reference/google_auth_oauthlib.flow.html#google_auth_oauthlib.flow.InstalledAppFlow.run_local_server
		    .. _console flow:
		        http://google-auth-oauthlib.readthedocs.io/en/latest/reference/google_auth_oauthlib.flow.html#google_auth_oauthlib.flow.InstalledAppFlow.run_console
		
		    *New in version 0.2.0 of pandas-gbq*.
		dialect : str, default 'legacy'
		    Note: The default value is changing to 'standard' in a future verion.
		
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
		
		    .. versionchanged:: 0.24.0
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
		
		    .. versionadded:: 0.24.0
		private_key : str, deprecated
		    Deprecated in pandas-gbq version 0.8.0. Use the ``credentials``
		    parameter and
		    :func:`google.oauth2.service_account.Credentials.from_service_account_info`
		    or
		    :func:`google.oauth2.service_account.Credentials.from_service_account_file`
		    instead.
		
		    Service account private key in JSON format. Can be file path
		    or string contents. This is useful for remote server
		    authentication (eg. Jupyter/IPython notebook on remote host).
		verbose : None, deprecated
		    Deprecated in pandas-gbq version 0.4.0. Use the `logging module to
		    adjust verbosity instead
		    <https://pandas-gbq.readthedocs.io/en/latest/intro.html#logging>`__.
		
		Returns
		-------
		df: DataFrame
		    DataFrame representing results of query.
		
		See Also
		--------
		pandas_gbq.read_gbq : This function in the pandas-gbq library.
		pandas.DataFrame.to_gbq : Write a DataFrame to Google BigQuery.
	**/
	static public function read_gbq(query:Dynamic, ?project_id:Dynamic, ?index_col:Dynamic, ?col_order:Dynamic, ?reauth:Dynamic, ?auth_local_webserver:Dynamic, ?dialect:Dynamic, ?location:Dynamic, ?configuration:Dynamic, ?credentials:Dynamic, ?private_key:Dynamic, ?verbose:Dynamic):Dynamic;
	static public function to_gbq(dataframe:Dynamic, destination_table:Dynamic, ?project_id:Dynamic, ?chunksize:Dynamic, ?reauth:Dynamic, ?if_exists:Dynamic, ?auth_local_webserver:Dynamic, ?table_schema:Dynamic, ?location:Dynamic, ?progress_bar:Dynamic, ?credentials:Dynamic, ?verbose:Dynamic, ?private_key:Dynamic):Dynamic;
}
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
		
		The main method a user calls to execute a Query in Google BigQuery
		and read results into a pandas DataFrame.
		
		Google BigQuery API Client Library v2 for Python is used.
		Documentation is available `here
		<https://developers.google.com/api-client-library/python/apis/bigquery/v2>`__
		
		Authentication to the Google BigQuery service is via OAuth 2.0.
		
		- If "private_key" is not provided:
		
		  By default "application default credentials" are used.
		
		  If default application credentials are not found or are restrictive,
		  user account credentials are used. In this case, you will be asked to
		  grant permissions for product name 'pandas GBQ'.
		
		- If "private_key" is provided:
		
		  Service account credentials will be used to authenticate.
		
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
		private_key : str (optional)
		    Service account private key in JSON format. Can be file path
		    or string contents. This is useful for remote server
		    authentication (eg. jupyter iPython notebook on remote host)
		
		dialect : {'legacy', 'standard'}, default 'legacy'
		    'legacy' : Use BigQuery's legacy SQL dialect.
		    'standard' : Use BigQuery's standard SQL (beta), which is
		    compliant with the SQL 2011 standard. For more information
		    see `BigQuery SQL Reference
		    <https://cloud.google.com/bigquery/sql-reference/>`__
		
		**kwargs : Arbitrary keyword arguments
		    configuration (dict): query config parameters for job processing.
		    For example:
		
		        configuration = {'query': {'useQueryCache': False}}
		
		    For more information see `BigQuery SQL Reference
		    <https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs#configuration.query>`__
		
		Returns
		-------
		df: DataFrame
		    DataFrame representing results of query
	**/
	static public function read_gbq(query:Dynamic, ?project_id:Dynamic, ?index_col:Dynamic, ?col_order:Dynamic, ?reauth:Dynamic, ?verbose:Dynamic, ?private_key:Dynamic, ?dialect:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function to_gbq(dataframe:Dynamic, destination_table:Dynamic, project_id:Dynamic, ?chunksize:Dynamic, ?verbose:Dynamic, ?reauth:Dynamic, ?if_exists:Dynamic, ?private_key:Dynamic):Dynamic;
}
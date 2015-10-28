/* This file is generated, do not edit! */
package pandas.io;
@:pythonImport("pandas.io.gbq") extern class Gbq {
	static public function read_gbq(query:Dynamic, ?project_id:Dynamic = null, ?index_col:Dynamic = null, ?col_order:Dynamic = null, ?reauth:Dynamic = false, ?verbose:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function to_gbq(dataframe:Dynamic, destination_table:Dynamic, project_id:Dynamic, ?chunksize:Dynamic, ?verbose:Dynamic = true, ?reauth:Dynamic = false, ?if_exists:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
/* This file is generated, do not edit! */
package scipy.spatial;
@:pythonImport("scipy.spatial.distance") extern class Distance {
	static public function braycurtis(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function canberra(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cdist(XA:Dynamic, XB:Dynamic, ?metric:Dynamic, ?p:Dynamic, ?V:Dynamic = null, ?VI:Dynamic = null, ?w:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function chebyshev(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cityblock(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function correlation(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cosine(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function dice(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function euclidean(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hamming(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_valid_dm(D:Dynamic, ?tol:Dynamic, ?_throw:Dynamic = false, ?name:Dynamic, ?warning:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function is_valid_y(y:Dynamic, ?warning:Dynamic = false, ?_throw:Dynamic = false, ?name:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function jaccard(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function kulsinski(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mahalanobis(u:Dynamic, v:Dynamic, VI:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function matching(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function minkowski(u:Dynamic, v:Dynamic, p:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function num_obs_dm(d:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function num_obs_y(Y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function pdist(X:Dynamic, ?metric:Dynamic, ?p:Dynamic, ?w:Dynamic = null, ?V:Dynamic = null, ?VI:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rogerstanimoto(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function russellrao(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function seuclidean(u:Dynamic, v:Dynamic, V:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sokalmichener(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sokalsneath(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sqeuclidean(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function squareform(X:Dynamic, ?force:Dynamic, ?checks:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function wminkowski(u:Dynamic, v:Dynamic, p:Dynamic, w:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function yule(u:Dynamic, v:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
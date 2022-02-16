/* This file is generated, do not edit! */
package matplotlib.path;
@:pythonImport("matplotlib.path") extern class Path_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert a sequence to a float array; if input was a masked array, masked
		values are converted to nans.
	**/
	static public function _to_unmasked_float_array(x:Dynamic):Dynamic;
	/**
		Given a sequence of `Path`\s, `.Transform`\s objects, and offsets, as
		found in a `.PathCollection`, returns the bounding box that encapsulates
		all of them.
		
		Parameters
		----------
		master_transform : `.Transform`
		    Global transformation applied to all paths.
		paths : list of `Path`
		transforms : list of `.Affine2D`
		offsets : (N, 2) array-like
		offset_transform : `.Affine2D`
		    Transform applied to the offsets before offsetting the path.
		
		Notes
		-----
		The way that *paths*, *transforms* and *offsets* are combined
		follows the same method as for collections:  Each is iterated over
		independently, so if you have 3 paths, 2 transforms and 1 offset,
		their combinations are as follows:
		
		    (A, A, A), (B, B, A), (C, A, A)
	**/
	static public function get_path_collection_extents(master_transform:Dynamic, paths:Dynamic, transforms:Dynamic, offsets:Dynamic, offset_transform:Dynamic):Dynamic;
	/**
		Least-recently-used cache decorator.
		
		If *maxsize* is set to None, the LRU features are disabled and the cache
		can grow without bound.
		
		If *typed* is True, arguments of different types will be cached separately.
		For example, f(3.0) and f(3) will be treated as distinct calls with
		distinct results.
		
		Arguments to the cached function must be hashable.
		
		View the cache statistics named tuple (hits, misses, maxsize, currsize)
		with f.cache_info().  Clear the cache and statistics with f.cache_clear().
		Access the underlying function with f.__wrapped__.
		
		See:  http://en.wikipedia.org/wiki/Cache_replacement_policies#Least_recently_used_(LRU)
	**/
	static public function lru_cache(?maxsize:Dynamic, ?typed:Dynamic):Dynamic;
	/**
		Resample an array with ``steps - 1`` points between original point pairs.
		
		Along each column of *a*, ``(steps - 1)`` points are introduced between
		each original values; the values are linearly interpolated.
		
		Parameters
		----------
		a : array, shape (n, ...)
		steps : int
		
		Returns
		-------
		array
		    shape ``((n - 1) * steps + 1, ...)``
	**/
	static public function simple_linear_interpolation(a:Dynamic, steps:Dynamic):Dynamic;
}
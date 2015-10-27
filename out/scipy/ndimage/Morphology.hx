/* This file is generated, do not edit! */
package scipy.ndimage;
@:native("scipy.ndimage.morphology") extern class Morphology {
	static public function binary_closing(input:Dynamic, ?structure:Dynamic = null, ?iterations:Dynamic, ?output:Dynamic = null, ?origin:Dynamic):Dynamic;
	static public function binary_dilation(input:Dynamic, ?structure:Dynamic = null, ?iterations:Dynamic, ?mask:Dynamic = null, ?output:Dynamic = null, ?border_value:Dynamic, ?origin:Dynamic, ?brute_force:Dynamic = false):Dynamic;
	static public function binary_erosion(input:Dynamic, ?structure:Dynamic = null, ?iterations:Dynamic, ?mask:Dynamic = null, ?output:Dynamic = null, ?border_value:Dynamic, ?origin:Dynamic, ?brute_force:Dynamic = false):Dynamic;
	static public function binary_fill_holes(input:Dynamic, ?structure:Dynamic = null, ?output:Dynamic = null, ?origin:Dynamic):Dynamic;
	static public function binary_hit_or_miss(input:Dynamic, ?structure1:Dynamic = null, ?structure2:Dynamic = null, ?output:Dynamic = null, ?origin1:Dynamic, ?origin2:Dynamic = null):Dynamic;
	static public function binary_opening(input:Dynamic, ?structure:Dynamic = null, ?iterations:Dynamic, ?output:Dynamic = null, ?origin:Dynamic):Dynamic;
	static public function binary_propagation(input:Dynamic, ?structure:Dynamic = null, ?mask:Dynamic = null, ?output:Dynamic = null, ?border_value:Dynamic, ?origin:Dynamic):Dynamic;
	static public function black_tophat(input:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?structure:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	static public function distance_transform_bf(input:Dynamic, ?metric:Dynamic, ?sampling:Dynamic = null, ?return_distances:Dynamic = true, ?return_indices:Dynamic = false, ?distances:Dynamic = null, ?indices:Dynamic = null):Dynamic;
	static public function distance_transform_cdt(input:Dynamic, ?metric:Dynamic, ?return_distances:Dynamic = true, ?return_indices:Dynamic = false, ?distances:Dynamic = null, ?indices:Dynamic = null):Void;
	static public function distance_transform_edt(input:Dynamic, ?sampling:Dynamic = null, ?return_distances:Dynamic = true, ?return_indices:Dynamic = false, ?distances:Dynamic = null, ?indices:Dynamic = null):Dynamic;
	static public function generate_binary_structure(rank:Dynamic, connectivity:Dynamic):Dynamic;
	static public function grey_closing(input:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?structure:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	static public function grey_dilation(input:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?structure:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	static public function grey_erosion(input:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?structure:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	static public function grey_opening(input:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?structure:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	static public function iterate_structure(structure:Dynamic, iterations:Dynamic, ?origin:Dynamic = null):Dynamic;
	static public function morphological_gradient(input:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?structure:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	static public function morphological_laplace(input:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?structure:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
	static public function white_tophat(input:Dynamic, ?size:Dynamic = null, ?footprint:Dynamic = null, ?structure:Dynamic = null, ?output:Dynamic = null, ?mode:Dynamic, ?cval:Dynamic, ?origin:Dynamic):Dynamic;
}
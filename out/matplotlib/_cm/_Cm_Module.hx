/* This file is generated, do not edit! */
package matplotlib._cm;
@:pythonImport("matplotlib._cm") extern class _Cm_Module {
	static public var _Accent_data : Dynamic;
	static public var _Blues_data : Dynamic;
	static public var _BrBG_data : Dynamic;
	static public var _BuGn_data : Dynamic;
	static public var _BuPu_data : Dynamic;
	static public var _CMRmap_data : Dynamic;
	static public var _Dark2_data : Dynamic;
	static public var _GnBu_data : Dynamic;
	static public var _Greens_data : Dynamic;
	static public var _Greys_data : Dynamic;
	static public var _OrRd_data : Dynamic;
	static public var _Oranges_data : Dynamic;
	static public var _PRGn_data : Dynamic;
	static public var _Paired_data : Dynamic;
	static public var _Pastel1_data : Dynamic;
	static public var _Pastel2_data : Dynamic;
	static public var _PiYG_data : Dynamic;
	static public var _PuBuGn_data : Dynamic;
	static public var _PuBu_data : Dynamic;
	static public var _PuOr_data : Dynamic;
	static public var _PuRd_data : Dynamic;
	static public var _Purples_data : Dynamic;
	static public var _RdBu_data : Dynamic;
	static public var _RdGy_data : Dynamic;
	static public var _RdPu_data : Dynamic;
	static public var _RdYlBu_data : Dynamic;
	static public var _RdYlGn_data : Dynamic;
	static public var _Reds_data : Dynamic;
	static public var _Set1_data : Dynamic;
	static public var _Set2_data : Dynamic;
	static public var _Set3_data : Dynamic;
	static public var _Spectral_data : Dynamic;
	static public var _YlGnBu_data : Dynamic;
	static public var _YlGn_data : Dynamic;
	static public var _YlOrBr_data : Dynamic;
	static public var _YlOrRd_data : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _afmhot_data : Dynamic;
	static public var _autumn_data : Dynamic;
	static public var _binary_data : Dynamic;
	static public var _bone_data : Dynamic;
	static public var _brg_data : Dynamic;
	static public var _bwr_data : Dynamic;
	/**
		Helper function for generating picklable cubehelix color maps.
	**/
	static public function _ch_helper(gamma:Dynamic, s:Dynamic, r:Dynamic, h:Dynamic, p0:Dynamic, p1:Dynamic, x:Dynamic):Dynamic;
	static public var _cool_data : Dynamic;
	static public var _coolwarm_data : Dynamic;
	static public var _copper_data : Dynamic;
	static public var _cubehelix_data : Dynamic;
	static public function _flag_blue(x:Dynamic):Dynamic;
	static public var _flag_data : Dynamic;
	static public function _flag_green(x:Dynamic):Dynamic;
	static public function _flag_red(x:Dynamic):Dynamic;
	static public function _g0(x:Dynamic):Dynamic;
	static public function _g1(x:Dynamic):Dynamic;
	static public function _g10(x:Dynamic):Dynamic;
	static public function _g11(x:Dynamic):Dynamic;
	static public function _g12(x:Dynamic):Dynamic;
	static public function _g13(x:Dynamic):Dynamic;
	static public function _g14(x:Dynamic):Dynamic;
	static public function _g15(x:Dynamic):Dynamic;
	static public function _g16(x:Dynamic):Dynamic;
	static public function _g17(x:Dynamic):Dynamic;
	static public function _g18(x:Dynamic):Dynamic;
	static public function _g19(x:Dynamic):Dynamic;
	static public function _g2(x:Dynamic):Dynamic;
	static public function _g20(x:Dynamic):Dynamic;
	static public function _g21(x:Dynamic):Dynamic;
	static public function _g22(x:Dynamic):Dynamic;
	static public function _g23(x:Dynamic):Dynamic;
	static public function _g24(x:Dynamic):Dynamic;
	static public function _g25(x:Dynamic):Dynamic;
	static public function _g26(x:Dynamic):Dynamic;
	static public function _g27(x:Dynamic):Dynamic;
	static public function _g28(x:Dynamic):Dynamic;
	static public function _g29(x:Dynamic):Dynamic;
	static public function _g3(x:Dynamic):Dynamic;
	static public function _g30(x:Dynamic):Dynamic;
	static public function _g31(x:Dynamic):Dynamic;
	static public function _g32(x:Dynamic):Dynamic;
	static public function _g33(x:Dynamic):Dynamic;
	static public function _g34(x:Dynamic):Dynamic;
	static public function _g35(x:Dynamic):Dynamic;
	static public function _g36(x:Dynamic):Dynamic;
	static public function _g4(x:Dynamic):Dynamic;
	static public function _g5(x:Dynamic):Dynamic;
	static public function _g6(x:Dynamic):Dynamic;
	static public function _g7(x:Dynamic):Dynamic;
	static public function _g8(x:Dynamic):Dynamic;
	static public function _g9(x:Dynamic):Dynamic;
	static public var _gist_earth_data : Dynamic;
	static public var _gist_gray_data : Dynamic;
	static public function _gist_heat_blue(x:Dynamic):Dynamic;
	static public var _gist_heat_data : Dynamic;
	static public function _gist_heat_green(x:Dynamic):Dynamic;
	static public function _gist_heat_red(x:Dynamic):Dynamic;
	static public var _gist_ncar_data : Dynamic;
	static public var _gist_rainbow_data : Dynamic;
	static public var _gist_stern_data : Dynamic;
	static public function _gist_yarg(x:Dynamic):Dynamic;
	static public var _gist_yarg_data : Dynamic;
	static public var _gnuplot2_data : Dynamic;
	static public var _gnuplot_data : Dynamic;
	static public var _gray_data : Dynamic;
	static public var _hot_data : Dynamic;
	static public var _hsv_data : Dynamic;
	static public var _jet_data : Dynamic;
	static public var _nipy_spectral_data : Dynamic;
	static public var _ocean_data : Dynamic;
	static public var _pink_data : Dynamic;
	static public function _prism_blue(x:Dynamic):Dynamic;
	static public var _prism_data : Dynamic;
	static public function _prism_green(x:Dynamic):Dynamic;
	static public function _prism_red(x:Dynamic):Dynamic;
	static public var _rainbow_data : Dynamic;
	static public var _seismic_data : Dynamic;
	static public var _spring_data : Dynamic;
	static public var _summer_data : Dynamic;
	static public var _tab10_data : Dynamic;
	static public var _tab20_data : Dynamic;
	static public var _tab20b_data : Dynamic;
	static public var _tab20c_data : Dynamic;
	static public var _terrain_data : Dynamic;
	static public var _winter_data : Dynamic;
	static public var _wistia_data : Dynamic;
	/**
		Return custom data dictionary of (r,g,b) conversion functions, which can be
		used with :func:`register_cmap`, for the cubehelix color scheme.
		
		Unlike most other color schemes cubehelix was designed by D.A. Green to
		be monotonically increasing in terms of perceived brightness.
		Also, when printed on a black and white postscript printer, the scheme
		results in a greyscale with monotonically increasing brightness.
		This color scheme is named cubehelix because the r,g,b values produced
		can be visualised as a squashed helix around the diagonal in the
		r,g,b color cube.
		
		For a unit color cube (i.e. 3-D coordinates for r,g,b each in the
		range 0 to 1) the color scheme starts at (r,g,b) = (0,0,0), i.e. black,
		and finishes at (r,g,b) = (1,1,1), i.e. white. For some fraction *x*,
		between 0 and 1, the color is the corresponding grey value at that
		fraction along the black to white diagonal (x,x,x) plus a color
		element. This color element is calculated in a plane of constant
		perceived intensity and controlled by the following parameters.
		
		Optional keyword arguments:
		
		  =========   =======================================================
		  Keyword     Description
		  =========   =======================================================
		  gamma       gamma factor to emphasise either low intensity values
		              (gamma < 1), or high intensity values (gamma > 1);
		              defaults to 1.0.
		  s           the start color; defaults to 0.5 (i.e. purple).
		  r           the number of r,g,b rotations in color that are made
		              from the start to the end of the color scheme; defaults
		              to -1.5 (i.e. -> B -> G -> R -> B).
		  h           the hue parameter which controls how saturated the
		              colors are. If this parameter is zero then the color
		              scheme is purely a greyscale; defaults to 1.0.
		  =========   =======================================================
	**/
	static public function cubehelix(?gamma:Dynamic, ?s:Dynamic, ?r:Dynamic, ?h:Dynamic):Dynamic;
	static public var datad : Dynamic;
	static public var gfunc : Dynamic;
}
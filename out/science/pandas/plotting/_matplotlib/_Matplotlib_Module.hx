/* This file is generated, do not edit! */
package pandas.plotting._matplotlib;
@:pythonImport("pandas.plotting._matplotlib") extern class _Matplotlib_Module {
	static public var PLOT_CLASSES : Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __all__ : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function andrews_curves(frame:Dynamic, class_column:Dynamic, ?ax:Dynamic, ?samples:Dynamic, ?color:Dynamic, ?colormap:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var annotations : Dynamic;
	static public function autocorrelation_plot(series:Dynamic, ?ax:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function bootstrap_plot(series:Dynamic, ?fig:Dynamic, ?size:Dynamic, ?samples:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function boxplot(data:Dynamic, ?column:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?return_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function boxplot_frame(self:Dynamic, ?column:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?return_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function boxplot_frame_groupby(grouped:Dynamic, ?subplots:Dynamic, ?column:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?ax:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function deregister():Dynamic;
	static public function hist_frame(data:Dynamic, ?column:Dynamic, ?by:Dynamic, ?grid:Dynamic, ?xlabelsize:Dynamic, ?xrot:Dynamic, ?ylabelsize:Dynamic, ?yrot:Dynamic, ?ax:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?bins:Dynamic, ?legend:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function hist_series(self:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?grid:Dynamic, ?xlabelsize:Dynamic, ?xrot:Dynamic, ?ylabelsize:Dynamic, ?yrot:Dynamic, ?figsize:Dynamic, ?bins:Dynamic, ?legend:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function lag_plot(series:Dynamic, ?lag:Dynamic, ?ax:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function parallel_coordinates(frame:Dynamic, class_column:Dynamic, ?cols:Dynamic, ?ax:Dynamic, ?color:Dynamic, ?use_columns:Dynamic, ?xticks:Dynamic, ?colormap:Dynamic, ?axvlines:Dynamic, ?axvlines_kwds:Dynamic, ?sort_labels:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function plot(data:Dynamic, kind:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function radviz(frame:Dynamic, class_column:Dynamic, ?ax:Dynamic, ?color:Dynamic, ?colormap:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function register():Dynamic;
	static public function scatter_matrix(frame:Dynamic, ?alpha:Dynamic, ?figsize:Dynamic, ?ax:Dynamic, ?grid:Dynamic, ?diagonal:Dynamic, ?marker:Dynamic, ?density_kwds:Dynamic, ?hist_kwds:Dynamic, ?range_padding:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function table(ax:Dynamic, data:Dynamic, ?rowLabels:Dynamic, ?colLabels:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
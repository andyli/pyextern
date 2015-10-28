/* This file is generated, do not edit! */
package matplotlib.animation;
@:pythonImport("matplotlib.animation", "Animation") extern class Animation {
	public function new_frame_seq(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function new_saved_frame_seq(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function save(filename:Dynamic, ?writer:Dynamic = null, ?fps:Dynamic = null, ?dpi:Dynamic = null, ?codec:Dynamic = null, ?bitrate:Dynamic = null, ?extra_args:Dynamic = null, ?metadata:Dynamic = null, ?extra_anim:Dynamic = null, ?savefig_kwargs:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}
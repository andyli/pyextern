/* This file is generated, do not edit! */
package tensorflow.contrib.image.ops.gen_single_image_random_dot_stereograms_ops;
@:pythonImport("tensorflow.contrib.image.ops.gen_single_image_random_dot_stereograms_ops") extern class Gen_single_image_random_dot_stereograms_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Outputs a single image random dot stereogram for export via encode_PNG/JPG OP.
		
		Given the 2-D tensor 'depth_values' with encoded Z values, this operation will
		encode 3-D data into a 2-D image.  The output of this Op is suitable for the
		encode_PNG/JPG ops.  Be careful with image compression as this may corrupt the
		encode 3-D data witin the image.
		
		This Op is based upon:
		'http://www.learningace.com/doc/4331582/b6ab058d1e206d68ab60e4e1ead2fe6e/sirds-paper'
		
		Example use which outputs a SIRDS image as picture_out.png:
		```python
		img=[[1,2,3,3,2,1],
		     [1,2,3,4,5,2],
		     [1,2,3,4,5,3],
		     [1,2,3,4,5,4],
		     [6,5,4,4,5,5]]
		
		session = tf.InteractiveSession()
		
		sirds = single_image_random_dot_stereograms(img,convergence_dots_size=8,number_colors=256,normalize=True)
		
		out = sirds.eval()
		
		png = tf.image.encode_png(out).eval()
		
		with open('picture_out.png', 'wb') as f:
		    f.write(png)
		```
		
		Args:
		  depth_values: A `Tensor`. Must be one of the following types: `float64`, `float32`, `int64`, `int32`.
		    Z values of data to encode into 'output_data_window' window,
		    lower values are further away {0.0 floor(far), 1.0 ceiling(near) after normalization}, must be 2-D tensor
		  hidden_surface_removal: An optional `bool`. Defaults to `True`.
		    Activate hidden surface removal
		  convergence_dots_size: An optional `int`. Defaults to `8`.
		    Black dot size in pixels to help view converge image, drawn on bottom of image
		  dots_per_inch: An optional `int`. Defaults to `72`.
		    Output device in dots/inch
		  eye_separation: An optional `float`. Defaults to `2.5`.
		    Separation between eyes in inches
		  mu: An optional `float`. Defaults to `0.3333`.
		    Depth of field, Fraction of viewing distance (eg. 1/3 = .3333)
		  normalize: An optional `bool`. Defaults to `True`.
		    Normalize input data to [0.0, 1.0]
		  normalize_max: An optional `float`. Defaults to `-100`.
		    Fix MAX value for Normalization - if < MIN, autoscale
		  normalize_min: An optional `float`. Defaults to `100`.
		    Fix MIN value for Normalization - if > MAX, autoscale
		  border_level: An optional `float`. Defaults to `0`.
		    Value of border depth 0.0 {far} to 1.0 {near}
		  number_colors: An optional `int`. Defaults to `256`.
		    2 (Black & White),256 (grayscale), and Numbers > 256 (Full Color) are all that are supported currently
		  output_image_shape: An optional `tf.TensorShape` or list of `ints`. Defaults to `[1024, 768, 1]`.
		    Output size of returned image in X,Y, Channels 1-grayscale, 3 color (1024, 768, 1),
		    channels will be updated to 3 if 'number_colors' > 256
		  output_data_window: An optional `tf.TensorShape` or list of `ints`. Defaults to `[1022, 757]`.
		    Size of "DATA" window, must be equal to or smaller than 'output_image_shape', will be centered
		    and use 'convergence_dots_size' for best fit to avoid overlap if possible
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor of size 'output_image_shape' with the encloded 'depth_values'
	**/
	static public function single_image_random_dot_stereograms(depth_values:Dynamic, ?hidden_surface_removal:Dynamic, ?convergence_dots_size:Dynamic, ?dots_per_inch:Dynamic, ?eye_separation:Dynamic, ?mu:Dynamic, ?normalize:Dynamic, ?normalize_max:Dynamic, ?normalize_min:Dynamic, ?border_level:Dynamic, ?number_colors:Dynamic, ?output_image_shape:Dynamic, ?output_data_window:Dynamic, ?name:Dynamic):Dynamic;
}
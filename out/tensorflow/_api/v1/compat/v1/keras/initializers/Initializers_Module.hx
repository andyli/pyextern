/* This file is generated, do not edit! */
package tensorflow._api.v1.compat.v1.keras.initializers;
@:pythonImport("tensorflow._api.v1.compat.v1.keras.initializers") extern class Initializers_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function deserialize(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public function get(identifier:Dynamic):Dynamic;
	/**
		He normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(2 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    [He et al., 2015](https://www.cv-foundation.org/openaccess/content_iccv_2015/html/He_Delving_Deep_into_ICCV_2015_paper.html)
		    ([pdf](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/He_Delving_Deep_into_ICCV_2015_paper.pdf))
	**/
	static public function he_normal(?seed:Dynamic):Dynamic;
	/**
		He uniform variance scaling initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(6 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    [He et al., 2015](https://www.cv-foundation.org/openaccess/content_iccv_2015/html/He_Delving_Deep_into_ICCV_2015_paper.html)
		    ([pdf](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/He_Delving_Deep_into_ICCV_2015_paper.pdf))
	**/
	static public function he_uniform(?seed:Dynamic):Dynamic;
	/**
		LeCun normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(1 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    - Self-Normalizing Neural Networks,
		    [Klambauer et al., 2017](https://papers.nips.cc/paper/6698-self-normalizing-neural-networks)
		    ([pdf](https://papers.nips.cc/paper/6698-self-normalizing-neural-networks.pdf))
		    - Efficient Backprop,
		    [Lecun et al., 1998](http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf)
	**/
	static public function lecun_normal(?seed:Dynamic):Dynamic;
	/**
		LeCun uniform initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(3 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    - Self-Normalizing Neural Networks,
		    [Klambauer et al., 2017](https://papers.nips.cc/paper/6698-self-normalizing-neural-networks)
		    ([pdf](https://papers.nips.cc/paper/6698-self-normalizing-neural-networks.pdf))
		    - Efficient Backprop,
		    [Lecun et al., 1998](http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf)
	**/
	static public function lecun_uniform(?seed:Dynamic):Dynamic;
	static public function serialize(initializer:Dynamic):Dynamic;
}
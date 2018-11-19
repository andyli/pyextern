/* This file is generated, do not edit! */
package pyQt5.qtMultimedia;
@:pythonImport("PyQt5.QtMultimedia", "QMediaMetaData") extern class QMediaMetaData {
	static public var AlbumArtist : Dynamic;
	static public var AlbumTitle : Dynamic;
	static public var AudioBitRate : Dynamic;
	static public var AudioCodec : Dynamic;
	static public var Author : Dynamic;
	static public var AverageLevel : Dynamic;
	static public var CameraManufacturer : Dynamic;
	static public var CameraModel : Dynamic;
	static public var Category : Dynamic;
	static public var ChannelCount : Dynamic;
	static public var ChapterNumber : Dynamic;
	static public var Comment : Dynamic;
	static public var Composer : Dynamic;
	static public var Conductor : Dynamic;
	static public var Contrast : Dynamic;
	static public var ContributingArtist : Dynamic;
	static public var Copyright : Dynamic;
	static public var CoverArtImage : Dynamic;
	static public var CoverArtUrlLarge : Dynamic;
	static public var CoverArtUrlSmall : Dynamic;
	static public var Date : Dynamic;
	static public var DateTimeDigitized : Dynamic;
	static public var DateTimeOriginal : Dynamic;
	static public var Description : Dynamic;
	static public var DeviceSettingDescription : Dynamic;
	static public var DigitalZoomRatio : Dynamic;
	static public var Director : Dynamic;
	static public var Duration : Dynamic;
	static public var Event : Dynamic;
	static public var ExposureBiasValue : Dynamic;
	static public var ExposureMode : Dynamic;
	static public var ExposureProgram : Dynamic;
	static public var ExposureTime : Dynamic;
	static public var FNumber : Dynamic;
	static public var Flash : Dynamic;
	static public var FocalLength : Dynamic;
	static public var FocalLengthIn35mmFilm : Dynamic;
	static public var GPSAltitude : Dynamic;
	static public var GPSAreaInformation : Dynamic;
	static public var GPSDOP : Dynamic;
	static public var GPSImgDirection : Dynamic;
	static public var GPSImgDirectionRef : Dynamic;
	static public var GPSLatitude : Dynamic;
	static public var GPSLongitude : Dynamic;
	static public var GPSMapDatum : Dynamic;
	static public var GPSProcessingMethod : Dynamic;
	static public var GPSSatellites : Dynamic;
	static public var GPSSpeed : Dynamic;
	static public var GPSStatus : Dynamic;
	static public var GPSTimeStamp : Dynamic;
	static public var GPSTrack : Dynamic;
	static public var GPSTrackRef : Dynamic;
	static public var GainControl : Dynamic;
	static public var Genre : Dynamic;
	static public var ISOSpeedRatings : Dynamic;
	static public var Keywords : Dynamic;
	static public var Language : Dynamic;
	static public var LeadPerformer : Dynamic;
	static public var LightSource : Dynamic;
	static public var Lyrics : Dynamic;
	static public var MediaType : Dynamic;
	static public var MeteringMode : Dynamic;
	static public var Mood : Dynamic;
	static public var Orientation : Dynamic;
	static public var ParentalRating : Dynamic;
	static public var PeakValue : Dynamic;
	static public var PixelAspectRatio : Dynamic;
	static public var PosterImage : Dynamic;
	static public var PosterUrl : Dynamic;
	static public var Publisher : Dynamic;
	static public var RatingOrganization : Dynamic;
	static public var Resolution : Dynamic;
	static public var SampleRate : Dynamic;
	static public var Saturation : Dynamic;
	static public var SceneCaptureType : Dynamic;
	static public var Sharpness : Dynamic;
	static public var Size : Dynamic;
	static public var SubTitle : Dynamic;
	static public var Subject : Dynamic;
	static public var SubjectDistance : Dynamic;
	static public var ThumbnailImage : Dynamic;
	static public var Title : Dynamic;
	static public var TrackCount : Dynamic;
	static public var TrackNumber : Dynamic;
	static public var UserRating : Dynamic;
	static public var VideoBitRate : Dynamic;
	static public var VideoCodec : Dynamic;
	static public var VideoFrameRate : Dynamic;
	static public var WhiteBalance : Dynamic;
	static public var Writer : Dynamic;
	static public var Year : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
}
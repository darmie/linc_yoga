package facebook.yoga;


using facebook.yoga.Enums;

@:keep
@:include('linc_yoga.h')

// @:native('::cpp::Reference<YGConfigRef>')
// extern class ConfigRef {}

// @:native('::cpp::Struct<YGConfig>')

@:native('::cpp::Reference<YGConfigRef>')
extern class Config {
	private var experimentalFeatures:Array<Bool>;

	public var useWebDefaults:Bool;
	public var useLegacyStretchBehaviour:Bool;
	public var pointScaleFactor:Float;
	public var logger:Int;
	public var context:Dynamic;


	@:native('::linc::yoga::config::NewConfig')
	static function init(logger:Int):Config;

}
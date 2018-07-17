package facebook.yoga;


using facebook.yoga.Enums;

@:keep
@:include('linc_yoga.h')

@:native('::cpp::Reference<YGConfigRef>')
extern class ConfigRef {}

@:native('::cpp::Struct<YGConfig>')
extern class Config extends ConfigRef{
	private var experimentalFeatures:Array<Bool>;

	public var useWebDefaults:Bool;
	public var useLegacyStretchBehaviour:Bool;
	public var pointScaleFactor:Float;
	public var logger:Logger;
	public var context:Dynamic;

}
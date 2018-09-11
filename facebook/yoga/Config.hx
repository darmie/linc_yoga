package facebook.yoga;

using facebook.yoga.Enums;

@:include('linc_yoga.h')
@:native('::YGConfigRef')
extern class Config {
	@:native('useWebDefaults')
	public var useWebDefaults:Bool;
	@:native('useLegacyStretchBehaviour')
	public var useLegacyStretchBehaviour:Bool;
	@:native('pointScaleFactor')
	public var pointScaleFactor:Float;
	@:native('logger')
	public var logger:Logger;
	@:native('context')
	public var context:Dynamic;
	@:native('::linc::yoga::NewConfig')
	static function init():Config;
}

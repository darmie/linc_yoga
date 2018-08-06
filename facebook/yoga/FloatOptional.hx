package facebook.yoga;


@:include('linc_yoga.h')
@:unreflective
@:structAccess
@:native('::YGFloatOptional')
extern class FloatOptional {
	
	@:native('::linc::yoga::NewFloatOptional')
	static function init():FloatOptional;

	@:native('::linc::yoga::NewFloatOptionalWithValue')
	static function initWithValue(value:Float):FloatOptional;	

	@:native('getValue')
	static function getValue():Float;

	@:native('setValue')
	static function setValue(val:Float):Void;
}
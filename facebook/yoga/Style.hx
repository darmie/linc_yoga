package facebook.yoga;

using facebook.yoga.Enums;



@:include('linc_yoga.h')
//Style
@:structAccess
@:native('::YGStyle')
extern class Style {

	@:native('direction')
	public var direction:Direction;

	@:native('flexDirection')
	public var flexDirection:FlexDirection;

	@:native('justifyContent')
	public var justifyContent:Justify;

	@:native('alignContent')
	public var alignContent:Align;

	@:native('alignItems')
	public var alignItems:Align;

	@:native('alignSelf')
	public var alignSelf:Align;

	@:native('positionType')
	public var positionType:PositionType;

	@:native('flexWrap')
	public var flexWrap:FlxWrap;

	@:native('overflow')
	public var overflow:Overflow;

	@:native('display')
	public var display:Display;

	@:native('float')
	public var flex:Float;

	@:native('flexGrow')
	public var flexGrow:Float;

	@:native('flexShrink')
	public var flexShrink:Float;

	@:native('flexBasis')
	public var flexBasis:Value;

	@:native('margin')
	public var margin:StdArray<Value>;

	@:native('position')
	public var position:StdArray<Value>;

	@:native('padding')
	public var padding:StdArray<Value>;

	@:native('border')
	public var border:StdArray<Value>;

	@:native('dimensions')
	public var dimensions:StdArray<Value>;

	@:native('minDimensions')
	public var minDimensions:StdArray<Value>;

	@:native('maxDimensions')
	public var maxDimensions:StdArray<Value>;

	// Yoga specific properties, not compatible with flexbox specification
	@:native('aspectRatio')
	public var aspectRatio:Float;

	@:native('::linc::yoga::NewStyle')
	static function init():Style;
}
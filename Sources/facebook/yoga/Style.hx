package facebook.yoga;

using facebook.yoga.Enums;
import facebook.yoga.StdArray;

@:include('linc_yoga.h')
// Style
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
	@:native('flex')
	public var flex:FloatOptional;
	@:native('flexGrow')
	public var flexGrow:FloatOptional;
	@:native('flexShrink')
	public var flexShrink:FloatOptional;
	@:native('flexBasis')
	public var flexBasis:Value;
	@:native('margin')
	public var margin:StdArrayValue;
	@:native('position')
	public var position:StdArrayValue;
	@:native('padding')
	public var padding:StdArrayValue;
	@:native('border')
	public var border:StdArrayValue;
	@:native('dimensions')
	public var dimensions:StdArrayValue2;
	@:native('minDimensions')
	public var minDimensions:StdArrayValue2;
	@:native('maxDimensions')
	public var maxDimensions:StdArrayValue2;
	// Yoga specific properties, not compatible with flexbox specification
	@:native('aspectRatio')
	public var aspectRatio:FloatOptional;
	@:native('::linc::yoga::NewStyle')
	static function init():Style;
}

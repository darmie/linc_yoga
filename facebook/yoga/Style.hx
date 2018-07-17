package facebook.yoga;

using facebook.yoga.Enums;

typedef Style = {
	var direction:Direction;
	var flexDirection:FlexDirection;
	var justifyContent:Justify;
	var alignContent:Align;
	var alignItems:Align;
	var alignSelf:Align;
	var positionType:PositionType;
	var flexWrap:Wrap;
	var overflow:Overflow
	var display:Display;
	var flex:Float;
	var flexGrow:Float;
	var flexShrink:Float;
	var flexBasis:Value;
	var margin:Array<Value>;
	var position:Array<Value>;
	var padding:Array<Value>;
	var border:Array<Value>;
	var dimensions:Array<Value>;
	var minDimensions:Array<Value>;
	var maxDimensions:Array<Value>;

	// Yoga specific properties, not compatible with flexbox specification
	var aspectRatio:Float;
}
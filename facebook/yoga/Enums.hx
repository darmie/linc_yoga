package facebook.yoga;

@:unreflective
@:include('YGEnums.h')
@:native("YGAlign")
extern class YGAlign {}

/**
 * Align describes align flex attribute
 */
@:unreflective
@:include('YGEnums.h')
@:enum extern abstract Align(YGAlign) {
	@:native("YGAlignAuto") var Auto;
	@:native("YGAlignFlexStart") var FlexStart;
	@:native("YGAlignCenter") var Center;
	@:native("YGAlignFlexEnd") var FlexEnd;
	@:native("YGAlignStretch") var Stretch;
	@:native("YGAlignBaseline") var Baseline;
	@:native("YGAlignSpaceBetween") var SpaceBetween;
	@:native("YGAlignSpaceAround") var SpaceAround;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGDimension")
extern class YGDimension {}

@:unreflective
@:include('YGEnums.h')
@:enum extern abstract Dimension(YGDimension) {
	@:native("YGDimensionWidth") var Width;
	@:native("YGDimensionHeight") var Height;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGDirection")
extern class YGDirection {}

/**
 * Direction represents right-to-left or left-to-right direction
 */
@:unreflective
@:include('YGEnums.h')
@:enum extern abstract Direction(YGDirection) {
	@:native("YGDirectionInherit") var Inherit;
	@:native("YGDirectionLTR") var LTR;
	@:native("YGDirectionRTL") var RTL;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGDisplay")
extern class YGDisplay {}

/**
 * `display` property
 */
@:unreflective
@:include('YGEnums.h')
@:enum extern abstract Display(YGDisplay) {
	@:native("YGDisplayFlex") var Flex;
	@:native("YGDisplayNone") var None;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGEdge")
extern class YGEdge {}

@:unreflective
@:include('YGEnums.h')
@:enum extern abstract Edge(YGEdge) {
	@:native("YGEdgeLeft") var Left;
	@:native("YGEdgeTop") var Top;
	@:native("YGEdgeRight") var Right;
	@:native("YGEdgeBottom") var Bottom;
	@:native("YGEdgeStart") var Start;
	@:native("YGEdgeEnd") var End;
	@:native("YGEdgeHorizontal") var Horizontal;
	@:native("YGEdgeVertical") var Vertical;
	@:native("YGEdgeAll") var All;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGExperimentalFeature")
extern class YGExperimentalFeature {}

@:unreflective
@:include('YGEnums.h')
@:enum extern abstract ExperimentalFeature(YGExperimentalFeature) {
	@:native("YGExperimentalFeatureWebFlexBasis") var WebFlexBasis;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGFlexDirection")
extern class YGFlexDirection {}

@:unreflective
@:include('YGEnums.h')
@:enum extern abstract FlexDirection(YGFlexDirection) {
	@:native("YGFlexDirectionColumn") var Column;
	@:native("YGFlexDirectionColumnReverse") var ColumnReverse;
	@:native("YGFlexDirectionRow") var Row;
	@:native("YGFlexDirectionRowReverse") var RowReverse;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGJustify")
extern class YGJustify {}

@:unreflective
@:include('YGEnums.h')
@:enum extern abstract Justify(YGJustify) {
	@:native("YGJustifyFlexStart") var FlexStart;
	@:native("YGJustifyFlexEnd") var FlexEnd;
	@:native("YGJustifyCenter") var Center;
	@:native("YGJustifySpaceBetween") var SpaceBetween;
	@:native("YGJustifySpaceAround") var SpaceAround;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGLogLevel")
extern class YGLogLevel {}

@:keep
@:unreflective
@:include('YGEnums.h')
@:enum extern abstract LogLevel(YGLogLevel) {
	@:native("YGLogLevelError") var Error;
	@:native("YGLogLevelWarn") var Warn;
	@:native("YGLogLevelInfo") var Info;
	@:native("YGLogLevelDebug") var Debug;
	@:native("YGLogLevelVerbose") var Verbose;
	@:native("YGLogLevelFatal") var Fatal;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGMeasureMode")
extern class YGMeasureMode {}

@:unreflective
@:include('YGEnums.h')
@:enum extern abstract MeasureMode(YGMeasureMode) {
	@:native("YGMeasureModeUndefined") var Undefined;
	@:native("YGMeasureModeExactly") var Exactly;
	@:native("YGMeasureModeAtMost") var AtMost;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGNodeType")
extern class YGNodeType {}

@:unreflective
@:include('YGEnums.h')
@:enum extern abstract NodeType(YGNodeType) {
	@:native("YGNodeTypeDefault") var Default;
	@:native("YGNodeTypeText") var Text;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGOverflow")
extern class YGOverflow {}

@:unreflective
@:include('YGEnums.h')
@:enum extern abstract Overflow(YGOverflow) {
	@:native("YGOverflowVisible") var Visible;
	@:native("YGOverflowHidden") var Hidden;
	@:native("YGOverflowScroll") var Scroll;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGPositionType")
extern class YGPositionType {}

@:unreflective
@:include('YGEnums.h')
@:enum extern abstract PositionType(YGPositionType) {
	@:native("YGPositionTypeRelative") var Relative;
	@:native("YGPositionTypeAbsolute") var Absolute;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGPrintOptions")
extern class YGPrintOptions {}

@:unreflective
@:include('YGEnums.h')
@:enum extern abstract PrintOptions(YGPrintOptions) {
	@:native("YGPrintOptionsLayout") var Layout;
	@:native("YGPrintOptionsStyle") var Style;
	@:native("YGPrintOptionsChildren") var Children;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGUnit")
extern class YGUnit {}

@:unreflective
@:include('YGEnums.h')
@:enum extern abstract Unit(YGUnit) {
	@:native("YGUnitUndefined") var Undefined;
	@:native("YGUnitPoint") var Point;
	@:native("YGUnitPercent") var Percent;
	@:native("YGUnitAuto") var Auto;
}

@:unreflective
@:include('YGEnums.h')
@:native("YGWrap")
extern class YGWrap {}

@:unreflective
@:include('YGEnums.h')
@:enum extern abstract FlxWrap(YGWrap) {
	@:native("YGWrapNoWrap") var NoWrap;
	@:native("YGWrapWrap") var Wrap;
	@:native("YGWrapWrapReverse") var WrapReverse;
}

class Enums {
	// EdgeCount is count of edges
	public static var edgeCount = 9;
	public static var experimentalFeatureCount = 1;
	public static var measureModeCount = 3;
	public static var valueUndefined:Value = Value.set(Math.NaN, Unit.Undefined);
	public static var valueAuto:Value = Value.set(Math.NaN, Unit.Auto);
	// ValueZero defines a zero value
	public static var valueZero:Value = Value.set(0, Unit.Point);

	// AlignToString returns string version of Align enum
	public static inline function alignToString(value:Align):String {
		return switch value {
			case Align.Auto: "auto";
			case Align.FlexStart: "flex-start";
			case Align.Center: "center";
			case Align.FlexEnd: "flex-end";
			case Align.Stretch: "stretch";
			case Align.Baseline: "baseline";
			case Align.SpaceBetween: "space-between";
			case Align.SpaceAround: "space-around";
			default: "unknown";
		}
	}

	// DimensionToString returns string version of Dimension enum
	public static inline function dimensionToString(value:Dimension):String {
		return switch value {
			case Dimension.Width: "width";
			case Dimension.Height: "height";
			default: "unknown";
		}
	}

	// DirectionToString returns string version of Direction enum
	public static inline function directionToString(value:Direction):String {
		return switch value {
			case Direction.Inherit: "inherit";
			case Direction.LTR: "ltr";
			case Direction.RTL: "rtl";
			default: "unknown";
		}
	}

	// DisplayToString returns string version of Display enum
	public static inline function displayToString(value:Display):String {
		return switch value {
			case Display.Flex: "flex";
			case Display.None: "none";
			default: "unknown";
		}
	}

	// EdgeToString returns string version of Edge enum
	public static inline function edgeToString(value:Edge):String {
		return switch value {
			case Edge.Left: "left";
			case Edge.Top: "top";
			case Edge.Right: "right";
			case Edge.Bottom: "bottom";
			case Edge.Start: "start";
			case Edge.End: "end";
			case Edge.Horizontal: "horizontal";
			case Edge.Vertical: "vertical";
			case Edge.All: "all";
			default: "unknown";
		}
	}

	// ExperimentalFeatureToString returns string version of ExperimentalFeature enum
	public static inline function experimentalFeatureToString(value:ExperimentalFeature):String {
		return switch value {
			case ExperimentalFeature.WebFlexBasis: "web-flex-basis";
			default: "unknown";
		}
	}

	// FlexDirectionToString returns string version of FlexDirection enum
	public static inline function flexDirectionToString(value:FlexDirection):String {
		return switch value {
			case FlexDirection.Column: "column";
			case FlexDirection.ColumnReverse: "column-reverse";
			case FlexDirection.Row: "row";
			case FlexDirection.RowReverse: "row-reverse";
			default: "unknown";
		}
	}

	// JustifyToString returns string version of Justify enum
	public static inline function justifyToString(value:Justify):String {
		return switch value {
			case Justify.FlexStart: "flex-start";
			case Justify.Center: "center";
			case Justify.FlexEnd: "flex-end";
			case Justify.SpaceBetween: "space-between";
			case Justify.SpaceAround: "space-around";
			default: "unknown";
		}
	}

	// LogLevelToString returns string version of LogLevel enum
	public static inline function logLevelToString(value:LogLevel):String {
		return switch value {
			case LogLevel.Error: "error";
			case LogLevel.Warn: "warn";
			case LogLevel.Info: "info";
			case LogLevel.Debug: "debug";
			case LogLevel.Verbose: "verbose";
			case LogLevel.Fatal: "fatal";
			default: "unknown";
		}
	}

	// MeasureModeToString returns string version of MeasureMode enum
	public static inline function measureModeToString(value:MeasureMode):String {
		return switch value {
			case MeasureMode.Undefined: "undefined";
			case MeasureMode.Exactly: "exactly";
			case MeasureMode.AtMost: "at-most";
			default: "unknown";
		}
	}

	// NodeTypeToString returns string version of NodeType enum
	public static inline function nodeTypeToString(value:NodeType):String {
		return switch value {
			case NodeType.Default: "default";
			case NodeType.Text: "text";
			default: "unknown";
		}
	}

	// OverflowToString returns string version of Overflow enum
	public static inline function overflowToString(value:Overflow):String {
		return switch value {
			case Overflow.Visible: "visible";
			case Overflow.Hidden: "hidden";
			case Overflow.Scroll: "scroll";
			default: "unknown";
		}
	}

	// PositionTypeToString returns string version of PositionType enum
	public static inline function positionTypeToString(value:PositionType):String {
		return switch value {
			case PositionType.Relative: "relative";
			case PositionType.Absolute: "absolute";
			default: "unknown";
		}
	}

	// PrintOptionsToString returns string version of PrintOptions enum
	public static inline function printOptionsToString(value:PrintOptions):String {
		return switch value {
			case PrintOptions.Layout: "layout";
			case PrintOptions.Style: "style";
			case PrintOptions.Children: "children";
			default: "unknown";
		}
	}

	// UnitToString returns string version of Unit enum
	public static inline function unitToString(value:Unit):String {
		return switch value {
			case Unit.Undefined: "undefined";
			case Unit.Point: "point";
			case Unit.Percent: "percent";
			case Unit.Auto: "auto";
			default: "unknown";
		}
	}

	// WrapToString returns string version of Wrap enum
	public static function wrapToString(value:FlxWrap):String {
		return switch value {
			case FlxWrap.NoWrap: "no-wrap";
			case FlxWrap.Wrap: "wrap";
			case FlxWrap.WrapReverse: "wrap-reverse";
			default: "unknown";
		}
	}
}

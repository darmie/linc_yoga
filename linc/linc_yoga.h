#pragma once

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include "../lib/yoga/YGEnums.h"
#include "../lib/yoga/YGNode.h"
#include "../lib/yoga/Yoga.h"


namespace linc {

	namespace yoga {

		namespace node {
			YGNodeRef NewYogaNode();
			YGNodeRef NewYogaNodeWithConfig(YGConfigRef newConfig);
		} // node


		namespace config {
			YGConfigRef NewConfig(int logger);
		} // config

		namespace style {
			YGStyle NewStyle();
		} // style

		namespace layout {
			YGLayout NewLayout(); 
		} //layout

		namespace floatOptional {
			YGFloatOptional NewFloatOptional();
			YGFloatOptional NewFloatOptionalWithValue(float value);
		} // floatOptional

		namespace cachedMeasurement {
			YGCachedMeasurement NewCachedMeasurement();
		} // CachedMeasurement

	} //yoga
	
} //linc
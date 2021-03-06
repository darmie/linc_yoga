#pragma once

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

//#include "../lib/yoga/YGEnums.h"
#include "../lib/yoga/YGNode.h"
#include "../lib/yoga/Yoga.h"
#include <YGEnums.h>

namespace linc {

	namespace yoga {
			YGValue setValue(float value, YGUnit unit);
			YGNodeRef NewYogaNode();
			YGNodeRef NewYogaNodeWithConfig(YGConfigRef newConfig);
			YGConfigRef NewConfig();	
			YGStyle NewStyle();	
			YGLayout NewLayout(); 
			YGFloatOptional NewFloatOptional();
			YGFloatOptional NewFloatOptionalWithValue(float value);
			YGCachedMeasurement NewCachedMeasurement();

	} //yoga
	
} //linc
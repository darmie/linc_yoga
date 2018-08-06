#pragma once

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

//#include "../lib/yoga/YGEnums.h"
#include "../lib/yoga/YGNode.h"
#include "../lib/yoga/Yoga.h"


namespace linc {

	namespace yoga {
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
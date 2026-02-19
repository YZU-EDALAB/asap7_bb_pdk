
Technology	{
		name				= "ASAP7_tech"
		date				= "Jan 10 2013"
		dielectric			= 3.45e-05
		unitTimeName			= "ns"
		timePrecision			= 1000
		unitLengthName			= "micron"
		lengthPrecision			= 4000
		gridResolution			= 16
		unitVoltageName			= "V"
		voltagePrecision		= 1000000
		unitCurrentName			= "mA"
		currentPrecision		= 1000000
		unitPowerName			= "mw"
		powerPrecision			= 1000000
		unitResistanceName		= "kohm"
		resistancePrecision		= 1000000
		unitCapacitanceName		= "pf"
		capacitancePrecision		= 1000000
		unitInductanceName		= "nh"
		inductancePrecision		= 100
		minBaselineTemperature		= 25
		nomBaselineTemperature		= 25
		maxBaselineTemperature		= 25

		#Below set 0 or 1 seems doesn't matter.
		#No edge rule be set.
		minEdgeMode			= 1
		
		/* Below line: For V3 Spacing. */
		cornerSpacingMode = 1

		/* Below line: For LineEnd Spacing. */
		stubMode = 1
		#stubMode = 2
		fatTblSpacingMode = 1
		#fatTblSpacingMode = 0
		
		#parallelLengthMode = 1
		parallelLengthMode = 0
		#fatWireExtensionMode = 4
}

Color		0 {
		name				= "0"
		rgbDefined			= 1
		redIntensity			= 244
		greenIntensity			= 164
		blueIntensity			= 96
}

Color		1 {
		name				= "1"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 0
		blueIntensity			= 255
}

Color		2 {
		name				= "2"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 0
		blueIntensity			= 0
}

Color		3 {
		name				= "3"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 208
		blueIntensity			= 0
}

Color		4 {
		name				= "4"
		rgbDefined			= 1
		redIntensity			= 208
		greenIntensity			= 208
		blueIntensity			= 0
}

Color		5 {
		name				= "5"
		rgbDefined			= 1
		redIntensity			= 165
		greenIntensity			= 42
		blueIntensity			= 42
}

Color		6 {
		name				= "6"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 165
		blueIntensity			= 0
}

Color		7 {
		name				= "7"
		rgbDefined			= 1
		redIntensity			= 208
		greenIntensity			= 0
		blueIntensity			= 208
}

Color		8 {
		name				= "8"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 208
		blueIntensity			= 208
}

Color		9 {
		name				= "9"
		rgbDefined			= 1
		redIntensity			= 139
		greenIntensity			= 69
		blueIntensity			= 19
}

Color		10 {
		name				= "10"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 255
		blueIntensity			= 0
}

Tile		"coreSite" {
		width				= 0.216
		height				= 0.648
}

Layer		"BM2" {
		layerNumber			= 1
		maskName			= "metal1"
		isDefaultLayer			= 0
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "brown"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0.144
		defaultWidth		= 0.072
		minWidth			= 0.072
		minSpacing			= 0.072
		unitMinThickness	= 1
		unitNomThickness	= 1
		unitMaxThickness	= 1
}

Layer		"BV1" {
		layerNumber			= 2
		maskName			= "via1"
		isDefaultLayer			= 0
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0.2
		defaultWidth			= 0.1
		minWidth			= 0.1
		minSpacing			= 0.1
		unitMinThickness		= 1.1
		unitNomThickness		= 1.1
		unitMaxThickness		= 1.1
}

Layer		"BM1" {
		layerNumber			= 3
		maskName			= "metal2"
		isDefaultLayer			= 0
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0.144
		defaultWidth		= 0.072
		minWidth			= 0.072
		minSpacing			= 0.072
		unitMinThickness	= 1
		unitNomThickness	= 1
		unitMaxThickness	= 1
}


Layer		"TSV" {
		layerNumber			= 4
		maskName			= "via2"
		isDefaultLayer			= 0
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0.48
		defaultWidth			= 0.24
		minWidth			= 0.24
		minSpacing			= 0.24
		unitMinThickness		= 2
		unitNomThickness		= 2
		unitMaxThickness		= 2
}

Layer		"BPR" {
		layerNumber			= 5
		maskName			= "metal3"
		isDefaultLayer			= 0
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.648
		defaultWidth			= 0.144
		minWidth			= 0.144
		minSpacing			= 0.144
		unitMinThickness		= 0.154
		unitNomThickness		= 0.154
		unitMaxThickness		= 0.154
}


Layer		"NWELL" {
		layerNumber			= 6
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"PWELL" {
		layerNumber			= 7
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"GATE" {
		layerNumber			= 8
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"ACTIVE" {
		layerNumber			= 9
		maskName			= "poly"
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "0"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"VBPR" {
		layerNumber			= 10
		maskName			= "via3"
		isDefaultLayer			= 0
		visible				= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0.072
		minWidth			= 0.072
    	minSpacing			= 0.072
}

Layer		"LIG" {
		layerNumber			= 11
		maskName			= "metal4"
		isDefaultLayer			= 0
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "orange"
		lineStyle			= "solid"
		pattern				= "backSlash"
		#pitch				= 0.136
		pitch				= 0.144
		defaultWidth			= 0.064
		minWidth			= 0.064
		minSpacing			= 0.072
}

Layer		"V0" {
		layerNumber			= 12
		maskName			= "via4"
		isDefaultLayer			= 0
		visible				= 1
		blink				= 0
		color				= "salmon"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0.072
		minWidth			= 0.072
    	minSpacing			= 0.072
}

#Layer		"V0" {
#		layerNumber			= 6
#		maskName			= "polyCont"
#		visible				= 1
#		selectable			= 1
#		blink				= 0
#		color				= "1"
#		lineStyle			= "solid"
#		pitch				= 0
#		defaultWidth			= 0.072
#		minWidth			= 0.072
#		minSpacing			= 0.072
#}

Layer		"M1" {
		layerNumber			= 13
		maskName			= "metal5"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "1"
		lineStyle			= "solid"
		pattern				= "backSlash"
		onWireTrack = 0
		pitch				= 0.144
		defaultWidth			= 0.072
		minWidth			= 0.072
		minSpacing			= 0.072
		unitMinResistance		= 0.003145
		unitNomResistance		= 0.003145
		unitMaxResistance		= 0.003145
		unitMinCapacitance		= 0.000471
		unitNomCapacitance		= 0.000471
		unitMaxCapacitance		= 0.000471
		unitMinThickness		= 0.025
		unitNomThickness		= 0.025
		unitMaxThickness		= 0.025
		minArea				= 0.008064 
		
		
		nonPreferredRouteMode = 0
		
		/* Below some lines for M1 LineEnd Spacing */
		/* tip to side = 25nm */
		endOfLine1NeighborThreshold = 0.144
		endOfLine1NeighborWireMinThreshold = 0.144
		endOfLine1NeighborMinSpacing = 0.1
		/* tip to tip = 31nm */
		endOfLine1NeighborEndToEndTblSize = 1
		endOfLine1NeighborEndToEndTblThreshold = (0.144)
		endOfLine1NeighborEndToEndTblMinSpacing = (0.124)
}

Layer		"V1" {
		layerNumber			= 14
		maskName			= "via5"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "2"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0.072
		minWidth			= 0.072
		minSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}

Layer		"M2" {
		layerNumber			= 15
		maskName			= "metal6"
		isDefaultLayer			= 0
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "2"
		lineStyle			= "solid"
		pattern				= "slash"
		onWireTrack = 0
		/* Match Innovus' Rect-only routing rule. */
		hasRectangleOnly = 1
		
		/* Check Line-End/Corner Spacing. */
		checkManhattanSpacing	= 0
		pitch				= 0.144
		
		defaultWidth			= 0.072
		minWidth			= 0.072
		minSpacing			= 0.072
		/* Match Innovus' Line-End Keepout routing rule. */
		cornerMinSpacing	= 0.08
		
		signalRouteMaxWidth		= 0.072
		unitMinResistance		= 0.003145
		unitNomResistance		= 0.003145
		unitMaxResistance		= 0.003145
		unitMinCapacitance		= 0.000471
		unitNomCapacitance		= 0.000471
		unitMaxCapacitance		= 0.000471
		unitMinThickness		= 0.025
		unitNomThickness		= 0.025
		unitMaxThickness		= 0.025
		minArea				= 0.008064
		
		nonPreferredRouteMode = 1
		
		/* Below 2 lines for M2 LineEnd Spacing */
		stubSpacing = 0.124
		stubThreshold = 0.072
}

Layer		"V2" {
		layerNumber			= 16
		maskName			= "via6"
		isDefaultLayer			= 1
		visible				= 0
		selectable			= 1
		blink				= 0
		color				= "3"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0.072
		minWidth			= 0.072
		minSpacing			= 0.072
		/* Below line: For M3 Metal Corner Spacing. */
		#cornerMinSpacing	= 0.08
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}

Layer		"M3" {
		layerNumber			= 17
		maskName			= "metal7"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "3"
		lineStyle			= "solid"
		pattern				= "backSlash"
		onWireTrack = 0
		/* Match Innovus' Rect-only routing rule. */
		hasRectangleOnly = 1
		
		/* Check Line-End/Corner Spacing. */
		checkManhattanSpacing	= 0
		cornerMinSpacing	= 0.08
		
		pitch				= 0.144
		defaultWidth			= 0.072
		minWidth			= 0.072
		minSpacing			= 0.072
		signalRouteMaxWidth		= 0.072
		unitMinResistance		= 0.003145
		unitNomResistance		= 0.003145
		unitNomCapacitance		= 0.000471
		unitMaxCapacitance		= 0.000471
		unitMinThickness		= 0.025
		unitNomThickness		= 0.025
		unitMaxThickness		= 0.025
		minArea				= 0.008064
		
		nonPreferredRouteMode = 1
		
		/* Below 2 lines for M3 LineEnd Spacing */
		stubSpacing = 0.124
		stubThreshold = 0.072
}

Layer		"V3" {
		layerNumber			= 18
		maskName			= "via7"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "4"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0.072
		minWidth			= 0.072
		#minSpacing			= 0
		/* Below line: For V3 Spacing. */
		minSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}



Layer		"M4" {
		layerNumber			= 19
		maskName			= "metal8"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "4"
		lineStyle			= "solid"
		pattern				= "slash"
		onWireTrack = 0
		/* Match Innovus' Rect-only routing rule. */
		hasRectangleOnly = 1
		
		/* Check Line-End/Corner Spacing. */
		checkManhattanSpacing	= 0
		cornerMinSpacing	= 0.08
		
		pitch				= 0.144
		defaultWidth			= 0.072
		minWidth			= 0.072
		minSpacing			= 0.072
		signalRouteMaxWidth		= 0.072
		unitMinResistance		= 0.003145
		unitNomResistance		= 0.003145
		unitNomCapacitance		= 0.000471
		unitMaxCapacitance		= 0.000471
		unitMinThickness		= 0.025
		unitNomThickness		= 0.025
		unitMaxThickness		= 0.025
		minArea				= 0.008064
		
		nonPreferredRouteMode = 1
		
		/* Below 2 lines for M3 LineEnd Spacing */
		stubSpacing = 0.124
		stubThreshold = 0.072
}

Layer		"V4" {
		layerNumber			= 20
		maskName			= "via8"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "5"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0.072
		minWidth			= 0.072
		#minSpacing			= 0
		/* Below line: For V4 Spacing. */
		minSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}

Layer		"M5" {
		layerNumber			= 21
		maskName			= "metal9"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "5"
		lineStyle			= "solid"
		pattern				= "backSlash"
		onWireTrack = 0
		/* Match Innovus' Rect-only routing rule. */
		hasRectangleOnly = 1
		
		/* Check Line-End/Corner Spacing. */
		checkManhattanSpacing	= 0
		cornerMinSpacing	= 0.08
		
		pitch				= 0.144
		defaultWidth			= 0.072
		minWidth			= 0.072
		minSpacing			= 0.072
		signalRouteMaxWidth		= 0.072
		unitMinResistance		= 0.003145
		unitNomResistance		= 0.003145
		unitNomCapacitance		= 0.000471
		unitMaxCapacitance		= 0.000471
		unitMinThickness		= 0.025
		unitNomThickness		= 0.025
		unitMaxThickness		= 0.025
		minArea				= 0.008064
		
		nonPreferredRouteMode = 1
		
		/* Below 2 lines for M3 LineEnd Spacing */
		stubSpacing = 0.124
		stubThreshold = 0.072
}

Layer		"V5" {
		layerNumber			= 22
		maskName			= "via9"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "6"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0.072
		minWidth			= 0.072
		#minSpacing			= 0
		/* Below line: For V5 Spacing. */
		minSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}

Layer		"M6" {
		layerNumber			= 23
		maskName			= "metal10"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "6"
		lineStyle			= "solid"
		pattern				= "slash"
		onWireTrack = 0
		/* Match Innovus' Rect-only routing rule. */
		hasRectangleOnly = 1
		/* Check Line-End/Corner Spacing. */
		checkManhattanSpacing	= 0
		#cornerMinSpacing	= 0.16
		cornerMinSpacing	= 0.192
		
		pitch				= 0.192
		defaultWidth			= 0.096
		minWidth			= 0.096
		minSpacing			= 0.096
		signalRouteMaxWidth		= 0.096
		unitMinResistance		= 0.001203
		unitNomResistance		= 0.001203
		unitMaxResistance		= 0.001203
		unitMinCapacitance		= 0.000447
		unitNomCapacitance		= 0.000447
		unitMaxCapacitance		= 0.000447
		unitMinThickness		= 0.054
		unitNomThickness		= 0.054
		unitMaxThickness		= 0.054
		minArea				= 0.017664
		nonPreferredRouteMode = 1
		#p.216 With Technology section, stubMode = 1.
		stubSpacing = 0.192
		stubThreshold = 0.096
		endOfLineCornerKeepoutWidth = 0.096
		#Above= 0.097: No coner checking.
		#Above= 0.096: No coner checking.
		#Above= 0.095: No coner checking.
		
		/*
		# With Technology section, stubMode = 3.
		stubSpacing = 0.192
		stubThreshold = 0.192
		*/
		
		/*
		#Brige Rule 2, Try for Parallel-Run-Length Violation.
		endSideKeepoutMidWireExactWidth = 0.096
		endSideKeepoutMidWireExactSpacing = 0.096
		endSideKeepoutMidWireEndSpacing = 0.192
		#Below not sure. 
		#endSideKeepoutMidWireMinLength = 0.096
		#Maybe 0.017664/0.96= 0.184 ...No
		#Maybe 0.096 ...No
		*/
		
		
		# Below FatMetal-Rule with technology section: fatTblSpacingMode = 1
		fatTblDimension = 3
		fatTblThreshold = (0, 0.097, 0.2)
		fatTblParallelLengthDimension = 4
		fatTblParallelLength = (0.01, 0.193, 0.196, 0.199)
		fatTblSpacing = (0.097, 0.096, 0.096, 0.096,
		0.096, 0.096, 0.096, 0.096,
		0.096, 0.096, 0.096, 0.096)
		
		
		
		
		
		
		/*
		#With Technology section CONVEX coner, minEdgeMode= 1.
		#Failed to affect violation.
		cornerKeepoutNonPrefWidth = 0.098
		cornerKeepoutPrefLength = 0.192
		*/
}

Layer		"V6" {
		layerNumber			= 24
		maskName			= "via10"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "7"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0.096
		minWidth			= 0.096
		#minSpacing			= 0
		minSpacing			= 0.136
		unitMinResistance		= 0.005411
		unitNomResistance		= 0.005411
		unitMaxResistance		= 0.005411
}

Layer		"M7" {
		layerNumber			= 25
		maskName			= "metal11"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "7"
		lineStyle			= "solid"
		pattern				= "backSlash"
		onWireTrack = 0
		/* Match Innovus' Rect-only routing rule. */
		hasRectangleOnly = 1
		/* Check Line-End/Corner Spacing. */
		checkManhattanSpacing	= 0
		#cornerMinSpacing	= 0.16
		cornerMinSpacing	= 0.192
		
		pitch				= 0.192
		defaultWidth			= 0.096
		minWidth			= 0.096
		minSpacing			= 0.096
		signalRouteMaxWidth		= 0.096
		unitMinResistance		= 0.001203
		unitNomResistance		= 0.001203
		unitMaxResistance		= 0.001203
		unitMinCapacitance		= 0.000447
		unitNomCapacitance		= 0.000447
		unitMaxCapacitance		= 0.000447
		unitMinThickness		= 0.054
		unitNomThickness		= 0.054
		unitMaxThickness		= 0.054
		minArea				= 0.017664
		nonPreferredRouteMode = 1
		#p.216 With Technology section, stubMode = 1.
		stubSpacing = 0.192
		stubThreshold = 0.096
		endOfLineCornerKeepoutWidth = 0.096
		#Above= 0.097: No coner checking.
		#Above= 0.096: No coner checking.
		#Above= 0.095: No coner checking.
		
		/*
		# With Technology section, stubMode = 3.
		stubSpacing = 0.192
		stubThreshold = 0.192
		*/
		
		/*
		#Brige Rule 2, Try for Parallel-Run-Length Violation.
		endSideKeepoutMidWireExactWidth = 0.096
		endSideKeepoutMidWireExactSpacing = 0.096
		endSideKeepoutMidWireEndSpacing = 0.192
		#Below not sure. 
		#endSideKeepoutMidWireMinLength = 0.096
		#Maybe 0.017664/0.96= 0.184 ...No
		#Maybe 0.096 ...No
		*/
		
		
		# Below FatMetal-Rule with technology section: fatTblSpacingMode = 1
		fatTblDimension = 3
		fatTblThreshold = (0, 0.097, 0.2)
		fatTblParallelLengthDimension = 4
		fatTblParallelLength = (0.01, 0.193, 0.196, 0.199)
		fatTblSpacing = (0.097, 0.096, 0.096, 0.096,
		0.096, 0.096, 0.096, 0.096,
		0.096, 0.096, 0.096, 0.096)
		
		
		
		
		
		
		/*
		#With Technology section CONVEX coner, minEdgeMode= 1.
		#Failed to affect violation.
		cornerKeepoutNonPrefWidth = 0.098
		cornerKeepoutPrefLength = 0.192
		*/
}

Layer		"V7" {
		layerNumber			= 26
		maskName			= "via11"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "8"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0.096
		minWidth			= 0.096
		#minSpacing			= 0
		minSpacing			= 0.136
		unitMinResistance		= 0.005411
		unitNomResistance		= 0.005411
		unitMaxResistance		= 0.005411
}

Layer		"M8" {
		layerNumber			= 27
		maskName			= "metal12"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "8"
		lineStyle			= "solid"
		pattern				= "slash"
		onWireTrack = 0
		/* Match Innovus' Rect-only routing rule. */
		hasRectangleOnly = 1
		pitch				= 0.256
		defaultWidth			= 0.128
		minWidth			= 0.128
		minSpacing			= 0.128
		signalRouteMaxWidth		= 0.128
		unitMinResistance		= 0.000753
		unitNomResistance		= 0.000753
		unitMaxResistance		= 0.000753
		unitMaxThickness		= 0.072
		#fatTblDimension			= 2
		#fatTblThreshold			= (0,0.10025)
		#fatTblParallelLengthDimension	= 1
		#fatTblParallelLength		= (0)
		#fatTblSpacing			= (0.096,
		#				   0.288)
		minArea				= 0.027648
		
		nonPreferredRouteMode = 1
}

Layer		"V8" {
		layerNumber			= 28
		maskName			= "via12"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "9"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0.128
		minWidth			= 0.128
		minSpacing			= 0
		unitMinResistance		= 0.003388
		unitNomResistance		= 0.003388
		unitMaxResistance		= 0.003388
}

Layer		"M9" {
		layerNumber			= 29
		maskName			= "metal13"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "9"
		lineStyle			= "solid"
		pattern				= "backSlash"
		onWireTrack = 0
		/* Match Innovus' Rect-only routing rule. */
		hasRectangleOnly = 1
		pitch				= 0.256
		defaultWidth			= 0.128
		minWidth			= 0.128
		minSpacing			= 0.128
		signalRouteMaxWidth		= 0.128
		unitMinResistance		= 0.000753
		unitNomResistance		= 0.000753
		unitMaxResistance		= 0.000753
		unitMaxThickness		= 0.072
		#fatTblDimension			= 2
		#fatTblThreshold			= (0,0.10025)
		#fatTblParallelLengthDimension	= 1
		#fatTblParallelLength		= (0)
		#fatTblSpacing			= (0.096,
		#				   0.288)
		minArea				= 0.027648
		
		nonPreferredRouteMode = 1
}

Layer		"V9" {
		layerNumber			= 30
		maskName			= "via13"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "10"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0.128
		minWidth			= 0.128
		minSpacing			= 0
		unitMinResistance		= 0.003388
		unitNomResistance		= 0.003388
		unitMaxResistance		= 0.003388
}

Layer		"Pad" {
		layerNumber			= 31
		maskName			= "metal14"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "10"
		lineStyle			= "solid"
		pattern				= "slash"
		#pitch				= 0.32
		pitch				= 8.16
		defaultWidth			= 0.16
		minWidth			= 0.16
		minSpacing			= 8
		fatTblDimension			= 2
		fatTblThreshold			= (0,47.9993)
		fatTblParallelLengthDimension	= 2
		fatTblParallelLength		= (0,47.9993)
		fatTblSpacing			= (8,8,
						   8,12)
							 
		#Add the minArea as M9
		minArea				= 0.12032
		nonPreferredRouteMode = 1
}

ContactCode	"VIA9Pad" {
		contactCodeNumber		= 1
		cutLayer			= "V9"
		lowerLayer			= "M9"
		upperLayer			= "Pad"
		isDefaultContact		= 1
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.228
		unitMinResistance		= 0.001934
		unitNomResistance		= 0.001934
		unitMaxResistance		= 0.001934
}

ContactCode	"VIA89" {
		contactCodeNumber		= 2
		cutLayer			= "V8"
		lowerLayer			= "M8"
		upperLayer			= "M9"
		isDefaultContact		= 1
		cutWidth			= 0.128
		cutHeight			= 0.128
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.044
		lowerLayerEncWidth		= 0.044
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0
		unitMinResistance		= 0.003388
		unitNomResistance		= 0.003388
		unitMaxResistance		= 0.003388
}

ContactCode	"VIA78" {
		contactCodeNumber		= 3
		cutLayer			= "V7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
		isDefaultContact		= 1
		cutWidth			= 0.096
		cutHeight			= 0.128
		upperLayerEncWidth		= 0.044
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.044
		#minCutSpacing			= 0
		unitMinResistance		= 0.005411
		unitNomResistance		= 0.005411
		unitMaxResistance		= 0.005411
}

ContactCode	"VIA67" {
		contactCodeNumber		= 4
		cutLayer			= "V6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.096
		cutHeight			= 0.096
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.044
		lowerLayerEncWidth		= 0.044
		lowerLayerEncHeight		= 0
		#minCutSpacing			= 0
		unitMinResistance		= 0.005411
		unitNomResistance		= 0.005411
		unitMaxResistance		= 0.005411
}

ContactCode	"VIA56" {
		contactCodeNumber		= 5
		cutLayer			= "V5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
		isDefaultContact		= 1
		cutWidth			= 0.072
		cutHeight			= 0.096
		upperLayerEncWidth		= 0.044
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.02
		#minCutSpacing			= 0
		minCutSpacing			= 0.136
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA45_5_0" {
		contactCodeNumber		= 6
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA45_5_5" {
		contactCodeNumber		= 7
		cutLayer			= "V4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
		isDefaultContact		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA34_5_0" {
		contactCodeNumber		= 8
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA34_5_5" {
		contactCodeNumber		= 9
		cutLayer			= "V3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA23_5_0" {
		contactCodeNumber		= 10
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA23_5_5" {
		contactCodeNumber		= 11
		cutLayer			= "V2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.02
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA12_V2H0" {
		contactCodeNumber		= 12
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		nonRotatable		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.008
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA12_V2H5" {
		contactCodeNumber		= 13
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		nonRotatable		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.008
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA12_V5H0" {
		contactCodeNumber		= 14
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		nonRotatable		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA12_V5H5" {
		contactCodeNumber		= 15
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		nonRotatable		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.02
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA12_H2H0" {
		contactCodeNumber		= 16
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact	= 1
		nonRotatable		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.008
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA12_H2H5" {
		contactCodeNumber		= 17
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact	= 1
		nonRotatable		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.008
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA12_H5H0" {
		contactCodeNumber		= 18
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact	= 1
		nonRotatable		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}
ContactCode	"VIA12_H5H5" {
		contactCodeNumber		= 19
		cutLayer			= "V1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact	= 1
		nonRotatable		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.02
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.072
		unitMinResistance		= 0.008735
		unitNomResistance		= 0.008735
		unitMaxResistance		= 0.008735
}

ContactCode	"VBPR" {
		contactCodeNumber		= 20
		cutLayer			= "VBPR"
		lowerLayer			= "BPR"
		upperLayer			= "LIG"
		isDefaultContact		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.072
}

ContactCode	"V0" {
		contactCodeNumber		= 21
		cutLayer			= "V0"
		lowerLayer			= "LIG"
		upperLayer			= "M1"
		isDefaultContact		= 1
		cutWidth			= 0.072
		cutHeight			= 0.072
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.072
}

ContactCode	"TSV" {
		contactCodeNumber		= 22
		cutLayer			= "TSV"
		lowerLayer			= "BM1"
		upperLayer			= "BPR"
		isDefaultContact		= 1
		cutWidth			= 0.24
		cutHeight			= 0.24
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.24
		#tsvKeepoutSpacing		= 0.24
}

ContactCode	"BV12" {
		contactCodeNumber		= 23
		cutLayer			= "BV1"
		lowerLayer			= "BM2"
		upperLayer			= "BM1"
		isDefaultContact		= 1
		cutWidth			= 0.1
		cutHeight			= 0.1
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.025
		lowerLayerEncWidth		= 0.025
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.1
}

DensityRule	{
		layer				= "M5"
		windowSize			= 80
		minDensity			= 60
		maxDensity			= 360
}

DensityRule	{
		layer				= "Pad"
		windowSize			= 400
		minDensity			= 80
		maxDensity			= 320
}

/*
# p.252
# This Rule Failed, the thinWireCutNameTbl can't be set suitable value.
# Try: Vsm= 'V3' or 'VIA34' or '7' or 'via3'. 
# Missing Attribute. Even ignore it, the same violations.
DesignRule {
 layer1 = "V3"
 layer2 = "M4"
 thinWireCutMetalExactWidth = 0.072
 thinWireCutTblSize = 1
 thinWireCutNameTbl = (Vsm)
 thinWireCutSideEncTbl = (0)
 thinWireCutOrthoEncTbl = (0.033)
 thinWireCutParallelLengthTbl = (-0.224)
 # Above P= 0.032 + 0.192
 # Enclosure + Keepout distance.
 thinWireCutToConcaveCornerMaxDistTbl = (0.1)
 thinWireCutToLowerMetalMinSpacingTbl = (0.072)
 # Above SL= M3 spacing.
 thinWireCutToUpperMetalMinSpacingTbl = (0.096)
 # Above SU= M4 spacing.
}
*/

/*
DesignRule {
 layer1 = "M1"
 layer2 = "M1"
 mask1KeepoutMinDist = 0.124
}
*/


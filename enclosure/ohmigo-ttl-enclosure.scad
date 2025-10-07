//-----------------------------------------------------------------------
// Yet Another Parameterized Projectbox generator
//
// Enclosure for Ohmigo TTL ESP32 Controller
// Chip dimensions: 80mm x 25mm x 15mm
//
// This is a YAPP box configuration for a custom enclosure with:
// - USB-C connector opening on one end
// - 3x8mm opening on the other end
// - Ventilation holes
//
//-----------------------------------------------------------------------

include <YAPP_Box/library/YAPPgenerator_v3.scad>

// Box dimensions (external)
// Add 2-3mm clearance around the chip
pcbLength           = 80;    // PCB length (X-axis)
pcbWidth            = 25;    // PCB width (Y-axis)
pcbThickness        = 1.6;   // Standard PCB thickness
                           
wallThickness       = 2.0;   // Wall thickness
basePlaneThickness  = 1.5;   // Base plane thickness
lidPlaneThickness   = 1.5;   // Lid plane thickness

// Ridge for lid
ridgeHeight         = 3.0;
ridgeSlack          = 0.2;
roundRadius         = 2.0;

// PCB support pillars
pcbStandoffHeight   = 5.0;

// Ventilation settings
ventHoleSize        = 3.0;   // Diameter of ventilation holes
ventHoleSpacing     = 6.0;   // Spacing between vent holes

//-- pcb_standoffs  -- origin is pcb[0,0,0]
// (0) = posx
// (1) = posy
// (2) = { yappBoth | yappLidOnly | yappBaseOnly }
// (3) = { yappHole, YappPin }
pcbStands = [
  [3, 3, yappBaseOnly, yappPin]
  ,[3, pcbWidth-3, yappBaseOnly, yappPin]
  ,[pcbLength-3, 3, yappBaseOnly, yappPin]
  ,[pcbLength-3, pcbWidth-3, yappBaseOnly, yappPin]
];

//-- Lid plane    -- origin is pcb[0,0,0]
// (0) = posx
// (1) = posy
// (2) = width
// (3) = length
// (4) = angle
// (5) = { yappRectangle | yappCircle }
// (6) = { yappCenter }
cutoutsLid = [
];

//-- Base plane    -- origin is pcb[0,0,0]
// (0) = posx
// (1) = posy
// (2) = width
// (3) = length
// (4) = angle
// (5) = { yappRectangle | yappCircle }
// (6) = { yappCenter }
cutoutsBase = [
];

//-- cutoutsLeft
// (0) = posy
// (1) = posz
// (2) = width
// (3) = height
// (4) = angle
// (5) = { yappRectangle | yappCircle }
// (6) = { yappCenter }
cutoutsLeft = [
];

//-- cutoutsRight
// (0) = posy
// (1) = posz
// (2) = width
// (3) = height
// (4) = angle
// (5) = { yappRectangle | yappCircle }
// (6) = { yappCenter }
cutoutsRight = [
];

//-- cutoutsFront
// Front is the side at Y=0
// USB-C connector opening (approximately 9mm wide x 3.2mm high)
// (0) = posx
// (1) = posz
// (2) = width
// (3) = height
// (4) = angle
// (5) = { yappRectangle | yappCircle }
// (6) = { yappCenter }
cutoutsFront = [
  [pcbLength/2, pcbStandoffHeight + pcbThickness/2 + 2, 10, 4, 0, yappRectangle, yappCenter]
];

//-- cutoutsBack
// Back is the side at Y=pcbWidth
// 3x8mm opening in the middle
// (0) = posx
// (1) = posz
// (2) = width
// (3) = height
// (4) = angle
// (5) = { yappRectangle | yappCircle }
// (6) = { yappCenter }
cutoutsBack = [
  [pcbLength/2, pcbStandoffHeight + pcbThickness/2 + 2, 3, 8, 0, yappRectangle, yappCenter]
];

//-- connectorsPCB
// (0) = posx
// (1) = posy
// (2) = screwDiameter
// (3) = insertDiameter
// (4) = outsideDiameter
// (5) = { yappAllCorners }
connectorsPCB = [
];

//-- connectorsPCBTOP
connectorsPCBTOP = [
];

//-- snapJoins
snapJoins   =   [
];

//-- lightTubes
lightTubes = [
];

//-- pushButtons
pushButtons = [
];

//-- labelsPlane
// (0) = posx
// (1) = posy
// (2) = orientation
// (3) = plane {yappLeft, yappRight, yappFront, yappBack, yappLid, yappBase}
// (4) = font
// (5) = size
// (6) = "label text"
labelsPlane = [
  [pcbLength/2, pcbWidth/2, 0, yappLid, "Liberation Sans:style=bold", 5, "Ohmigo TTL"]
];

//-- ventHoles
// Ventilation holes on the lid for cooling
// (0) = posx
// (1) = posy
// (2) = radius
// (3) = plane {yappLeft, yappRight, yappFront, yappBack, yappLid, yappBase}
ventHoles = [
  // Row 1 - ventilation holes on lid
  [15, 8, ventHoleSize/2, yappLid]
  ,[25, 8, ventHoleSize/2, yappLid]
  ,[35, 8, ventHoleSize/2, yappLid]
  ,[45, 8, ventHoleSize/2, yappLid]
  ,[55, 8, ventHoleSize/2, yappLid]
  ,[65, 8, ventHoleSize/2, yappLid]
  
  // Row 2 - ventilation holes on lid
  ,[15, 17, ventHoleSize/2, yappLid]
  ,[25, 17, ventHoleSize/2, yappLid]
  ,[35, 17, ventHoleSize/2, yappLid]
  ,[45, 17, ventHoleSize/2, yappLid]
  ,[55, 17, ventHoleSize/2, yappLid]
  ,[65, 17, ventHoleSize/2, yappLid]
];

//-- ridgeExtLeft
ridgeExtLeft = [
];

//-- ridgeExtRight
ridgeExtRight = [
];

//-- ridgeExtFront
ridgeExtFront = [
];

//-- ridgeExtBack
ridgeExtBack = [
];

//-- hookExtLeft
hookExtLeft = [
];

//-- hookExtRight
hookExtRight = [
];

//-- hookExtFront
hookExtFront = [
];

//-- hookExtBack
hookExtBack = [
];

//===================================================================
//  *** Shapes ***
//===================================================================

//-- base
baseShapes = [
];

//-- lid
lidShapes = [
];

//-- pcb
pcbShapes = [
];

//===================================================================
//  *** PCB Supports ***
//===================================================================
// Standoffs for PCB support
// PCB will be elevated by pcbStandoffHeight from the base

//-- show (for debugging)
showPCB = true;
showMarkers = false;
inspectX = 0;
inspectY = 0;

//===================================================================
//  *** Main ***
//===================================================================

YAPPgenerate();

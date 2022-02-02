// COIN PLATE DESIGN TOOL 
// 
// DESIGNER:  BEN (ORANGE SURF) 
// EMAIL:     BEN AT ORANGE DOT SURF
// DATE:      01 Feb 2022





////////////////////// LICENCE //////////////////////
//
// Copyright (C) OrangeSurf (https://orange.surf) 2022
//
// This source describes Open Hardware and is licensed under the CERN-OHL-S v2.
//
// You may redistribute and modify this documentation and make products using it
// under the terms of the CERN-OHL-S v2 (see Licence repository).
//
// This documentation is distribute WITHOUT ANY EXPRESS OR IMPLIED WARANTY,
// INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A 
// PARTICULAR PURPOSE. Please see the CERN-OHL-S v2 for applicable conditions.
//
// Source location https://github.com/orangesurf/coin-plate
//
// As per CERN-OHL-S v2 section 4, should You produce hardware based on these sources,
// You must maintain the Source Location visible on the product you make using this documentation.





////////////////////// SUMMARY OF DEVICE //////////////////////
//
// A STEEL PLATE WITH COIN SIZED HOLES ('THE RESTRAINING PLATE') IS PLACED
// ON TOP OF A SOLID PLATE ('THE BASE PLATE') CREATING A NUMBER OF RECESSES. 
// COINS ARE SCATTERED ON THE ASSEMBLY, DROPPING INTO THE CIRCULAR RECESSES 
// WHICH PROVIDE RADIAL RESTRAINT. A THIRD PLATE WITH HOLES SMALLER THAN THE COINS
// ('THE COVER PLATE') IS PUT ON TOP OF THE ASSEMBLY WHICH PROVIDES AXIAL RESTRAINT.
// THE THREE PLATES ARE PERMANENTLY ASSEMBLED USING NINE HEX HEAD BOLTS AND 
// NINE SHEAR NUTS. A FOURTH PLATE ('THE SHIELD PLATE') IS PLACED ON TOP OF THE 
// ASSEMBLY AND ONE OR MORE THUMB SCREWS ARE USED TO HIDE THE COINS FROM VIEW.
//
//
//                      ┌─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┐    CENTRE            PERIMETER
//                      │ │ │ │ │ │ │ │ │ │ │ ◄─── THUMB         9 X HEX   ────┐
//                      │ │ │ │ │ │ │ │ │ │ │ │    SCREW             BOLTS     │
//                      └─┴─┼─┴─┴─┴─┴─┴─┴─┼─┴─┘                                │
//                          │             │                                    │              
//                          │             │                                    │                           
// SHIELD  ────┐     │      │             │                              ┌───┬─▼─────┬───┐
// PLATE       │     ├──────┴─┬─┬─────┬─┬─┴────────────────────────────┐ │   │       │   │ ┌──┐
//             └────►│########│ │     │ │##############################│ │   │       │   │ │##│
// COVER             ├────────┤ │     │ ├───────┬──────┬────────┬──────┼─┴──┬┴┬─────┬┴┬──┴─┴──┤
// PLATE   ─────────►│\\\\\\\\│ │     │ │\\\\\\\│      │\\\\\\\\│      │\\\\│ │     │ │\\\\\\\│
//                   ├────────┤ │     │ ├────┬─┬┴──────┴┬─┬──┬─┬┴──────┴┬─┬─┤ │     │ ├───────┤
// RESTRAINING ─────►│////////│ │     │ │////│ │%%%%%%%%│ │//│ │%%%%%%%%│ │/│ │     │ │///////│
// PLATE             ├────────┤ │     │ ├────┴─┴────▲───┴─┴──┴─┴─────▲──┴─┴─┤ │     │ ├───────┤
//             ┌────►│~~~~~~~~│ │     │ │~~~~~~~~~~~│~~~~~~~~~~~~~~~~│~~~~~~│ │     │ │~~~~~~~│
// BASE        │     ├──────┬─┴─┤     ├─┴─┬─────────┼────────────────┼────┬─┴─┤     ├─┴─┬─────┘
// PLATE   ────┘     │      │   │     │   │         │                │    │   │     │   │
//                          └───┤     ├──▲┘                               └───┤     ├──▲┘
//                              └─────┘  │        COIN             COIN       └─────┘  │
// 
//                                      NUT                                           NUT
//
// THERE ARE 4 PLATES TOTAL
// - SHIELD PLATE        OBSCURES ENTROPY FROM VIEW
// - COVER PLATE         AXIAL CONSTRAINT OF TOP OF COINS 
// - RESTRAINING PLATE   RADIAL CONSTRAINT OF COINS
// - BASE PLATE          AXIAL CONSTRAINT OF REAR OF COINS

// NOTES
// - ALL DIMENSIONS IN MM
// - RAD = RADIAL DIMENSION (RADIUS)
// - DIAM = DIAMETRIC DIMENSION (DIAMETER)





////////////////////// BUILD CONFIG. //////////////////////
//
// Description: Set parts to build, Set 3D or 2D, Set Exploded View
basePlate = true;
restrainingPlate = true;
coverPlate = true;
shieldPlate = true;
nuts = true;
bolts = true;
coins = true;
explodeHeight = 10; // Set to >0 to see exploded view, 0 for assembled view
dxf = false; // Set to true to generate 2D profile (only plates)





////////////////////// MANUF. CONFIG. //////////////////////
//
// Description: Set manufacturing settings 
cutterTolerance = 0.2; // Bilateral (±) tolerance





////////////////////// PART CONFIG. //////////////////////

// Coin Properties
// Description: Set coin dimensions 
// UK 1p Coin: coinDiam = 20.3, coinHeight = 1.65;  
// UK 5p Coin: coinDiam = 18.0, coinHeight = 1.7;  
coinDiam = 18.0;  
coinHeight = 1.7;  


// Layout Options
// Description: Set coin layout 
coinCount = 144; // Number of coins in grid (128-256)
coinEdgeSeperation = 4;   // Gap between coin edges
coinClearanceSet = 0.3; // Radial clearance to restraining plate holes
coinInterferenceSet = 2; // Radial interference with cover plate holes


// Bolt Properties
// Description: Set bolt dimensions
boltNominalDiam = 4; // Diam of bolt
boltThreadLength = 16; // Length of thread of bolt
boltHeadThickness = 2.9; 
boltHeadFlatToFlat = 7; // Flat to Flat width of bolt hex head
boltRadClearanceSet = 0.25; // Radial clearance to plate holes (ignore laser cut tolerance)
boltHeadRadClearanceSet = 1; // Radial clearance to restraining plate holes (ignore laser cut tolerance)

// Thumb Screw Properties
// Description: Set thumb screw dimensions
thumbScrewThreadLength = 16;
thumbScrewShoulderLength = 6; // If no shoulder set to 0
thumbScrewHeadLength = 3.5;
thumbScrewThreadDiam = 4;
thumbScrewShoulderDiam = 8;
thumbScrewHeadDiam = 16;

// Shear Nut Properties
// Description: Set shear nut dimensions
shearNutDomeDiam = 6.8;
shearNutHeight = 6;
shearNutHoleDiam = 4;

// Plain Nut Properties
// Description: Set plain nut dimensions
plainNutFlatToFlat = 7; // Flat to Flat width of hex nut
plainNutHoleDiam = 4;
plainNutHeight = 3;

// Plate Properties 
// Description: Set plate dimensions 
shieldPlateHeight = 3; // Thickness of restraining plate
coverPlateHeight = 3; // Thickness of cover plate
restrainingPlateHeight = 2; // Thickness of restraining plate
basePlateHeight = 5;  // Thickness of base plate
plateCornerRad = 8;  // Radius of plate corners

// openSCAD settings
cutOverlap = 1;  // cut beyond parts for correct preview render
resolution = 30; // number of fragments in arc (Increase for higher resolution)





////////////////////// CALCULATIONS ////////////////////// 

// Coin 
gridCount = sqrt(coinCount);
coinRad = coinDiam / 2;
coinClearance = coinClearanceSet + cutterTolerance; // Radial (Ensure oversized)
coinInterference = coinInterferenceSet - cutterTolerance; // Radial (Ensure undersized)
coinAxialClearance = restrainingPlateHeight - coinHeight;

// Bolt
boltRadClearance = boltRadClearanceSet + cutterTolerance; // Radial (ensure oversized)
boltHeadRadClearance = boltHeadRadClearanceSet + cutterTolerance; // Radial (ensure oversized)
boltNominalRad = boltNominalDiam / 2;
boltHeadRad = 0.5*boltHeadFlatToFlat/cos(30);
boltHoleRad = boltNominalDiam/2 + boltRadClearance; // Diam for bolt clearance holes

// thumbScrew
thumbScrewThreadRad = thumbScrewThreadDiam/2;
thumbScrewShoulderRad = thumbScrewShoulderDiam/2;
thumbScrewHeadRad = thumbScrewHeadDiam/2;
thumbScrewHoleRad = thumbScrewThreadDiam/2 + boltRadClearance;  // Diam for thumbscrew clearance holes 

// Plate
restrainingPlateHoleRad = coinRad + coinClearance;;
coverPlateHoleRad = coinRad - coinInterference;
PlateWidth = (gridCount*coinDiam) + (gridCount+1)*coinEdgeSeperation;
PlateDepth = (gridCount*coinDiam) + (gridCount+1)*coinEdgeSeperation;

// Nut
shearNutDomeRad = shearNutDomeDiam/2;
shearNutHoleRad = shearNutHoleDiam/2;
plainNutHoleRad = plainNutHoleDiam/2;
plainNutRad = 0.5*plainNutFlatToFlat/cos(30);




////////////////////// PART BUILDER IF LOOPS ////////////////////// 
//
// Each loop builds one part type and moves it to the correct location


// nuts
if (nuts) {
    for (column = [0 : 2]) {
        for (row = [0 : 2]) {
            if(row==1 && column==1){
                translate([0.5*row*PlateWidth,0.5*column*PlateDepth,0-2*explodeHeight]){
                    plainNut();
                }
            }
            else{
                translate([0.5*row*PlateWidth,0.5*column*PlateDepth,0-2*explodeHeight]){
                    shearNut();
                }
            }
        }
    }
}


// base plate
if (basePlate) {
    if (dxf){
       basePlate2d();
    }
    else{
        color( "lightGrey", 1.0 ) {
            linear_extrude(height = basePlateHeight){
                basePlate2d();
            }
        }
    }
}


// restraining plate
if (restrainingPlate) {
    if (dxf){
       restrainingPlate2d();
    }
    else{
        color( "darkGrey", 1.0 ) {
            translate([0,0,basePlateHeight + explodeHeight]){
                linear_extrude(height = restrainingPlateHeight){
                    restrainingPlate2d();
                }
            }
        }
    }
}


// cover plate
if (coverPlate) {
    if (dxf){
       coverPlate2d();
    }
    else{
        color( "Grey", 1 ) { 
            translate([0,0,basePlateHeight + max(restrainingPlateHeight, coinHeight) + 3*explodeHeight]){
                linear_extrude(height = coverPlateHeight){
                    coverPlate2d();
                }
            }
        }
    }
}

// shield plate
if (shieldPlate) {
    if (dxf){
       shieldPlate2d();
    }
    else{
        color( "darkGrey", 1 ) { 
            translate([0,0,basePlateHeight + coverPlateHeight + max(restrainingPlateHeight, coinHeight)+ 4*explodeHeight]){
                linear_extrude(height = shieldPlateHeight){
                    shieldPlate2d();
                }
            }
        }
    }
}

// coins
if (coins) {
    if (dxf){
       coins2d();
    }
    else{
        color( "Sienna", 1.0 ) {
            translate([0,0,basePlateHeight + 2*explodeHeight]){
                linear_extrude(height = coinHeight){
                    coins2d();
                }
            }
        }
    }
}


// bolts
if (bolts) {
    for (column = [0 : 2]) {
        for (row = [0 : 2]) {
            if(row==1 && column==1){
                thumbScrewHeightAdjustment = shieldPlateHeight+basePlateHeight+max(restrainingPlateHeight,coinHeight)+coverPlateHeight-thumbScrewThreadLength;
                translate([0.5*row*PlateWidth,0.5*column*PlateDepth,thumbScrewHeightAdjustment+5*explodeHeight]){
                    thumbScrew();
                }
            }
            else{
                translate([0.5*row*PlateWidth,0.5*column*PlateDepth,-boltThreadLength+basePlateHeight+restrainingPlateHeight+coverPlateHeight+7*explodeHeight]){
                    bolt();;
            }
            }
        }
    }
}





////////////////////// PART MODULES ////////////////////// 


module Plate(cut){
    // Make plate components (Rounded blank with holes)
    difference(){
        // Make Border
        hull(){
            for (column = [0 : 1]) {
                for (row = [0 : 1]) {
                    translate([row*PlateWidth,column*PlateDepth,0]){
                        circle(r=plateCornerRad, $fn=resolution);
                    }
                }
            }
        }

        // Make Screw Holes
        for (column = [0 : 2]) {
            for (row = [0 : 2]) {
                if(row==1 && column==1){ // Center Hole
                    translate([0.5*row*PlateWidth,0.5*column*PlateDepth,-cutOverlap]){
                        circle(r=thumbScrewHoleRad,$fn=resolution);
                    }
                }
                else{ // Perimeter Holes
                    translate([0.5*row*PlateWidth,0.5*column*PlateDepth,-cutOverlap]){
                        circle(r=boltHoleRad,$fn=resolution);
                    }
                }
            }
        }
    if(cut){
        // Corner cut
            polygon([[-plateCornerRad,PlateDepth+plateCornerRad],[0,PlateDepth+plateCornerRad],[-plateCornerRad,PlateDepth]]);
        }
    }
}


// base plate
module basePlate2d(){
    Plate(false); // no cut
}


// shield plate
module shieldPlate2d(){
    difference(){
        Plate(false); // no cut

    // Make Hex Bolt Head Holes
        for (column = [0 : 2]) {
            for (row = [0 : 2]) {
                if(row==1 && column==1){}
                else{
                    translate([0.5*row*PlateWidth,0.5*column*PlateDepth,-cutOverlap]){
                        circle(r=boltHeadRad+boltHeadRadClearance,$fn=resolution);
                    }
                }
            }
        }
    }
}


// restraining plate
module restrainingPlate2d(){
    difference(){
        Plate(true); // with cut
        for (column = [0 : gridCount - 1]) {
            for (row = [0 : gridCount - 1]) {
                
                // Coin Hole
                translate([coinRad+coinEdgeSeperation+row*(coinDiam+coinEdgeSeperation), PlateDepth-coinRad-coinEdgeSeperation-column*(coinDiam+coinEdgeSeperation),-cutOverlap]){
                    circle(r=restrainingPlateHoleRad, $fn=resolution);
                }
            }
        }
    }
}

// cover plate
module coverPlate2d(){
    difference(){
        Plate(false); // no cut
        for (column = [0 : gridCount - 1]) {
            for (row = [0 : gridCount - 1]) {
                
                // Viewing Hole
                translate([coinRad+coinEdgeSeperation+row*(coinDiam+coinEdgeSeperation), PlateDepth-coinRad-coinEdgeSeperation-column*(coinDiam+coinEdgeSeperation),-cutOverlap]){
                    circle(r=coverPlateHoleRad, $fn=resolution);
                }
            }
        }
    }
}

// Make Coin Grid
module coins2d(){
    for (column = [0 : gridCount - 1]) {
        for (row = [0 : gridCount - 1]) {
            
            // coin
            translate([coinRad+coinEdgeSeperation+row*(coinDiam+coinEdgeSeperation), PlateDepth-coinRad-coinEdgeSeperation-column*(coinDiam+coinEdgeSeperation)]){
                circle(r=coinRad, $fn=resolution/2);
            }
        }
    }
}


// bolt
module bolt(){
    cylinder(h=boltThreadLength, r=boltNominalRad, $fn=resolution);
    translate([0,0,boltThreadLength]){
        cylinder(h=boltHeadThickness, r=boltHeadRad, $fn=6);
    }
}


// shearNut
module shearNut(){
    translate([0,0,shearNutDomeRad-shearNutHeight]){
        difference(){
            union(){
                difference(){
                    sphere(r=shearNutDomeRad, $fn=resolution);
                    translate([-shearNutDomeRad,-shearNutDomeRad,0]){
                        cube(shearNutDomeDiam);
                    }
                }
                cylinder(r=shearNutDomeRad, h=shearNutHeight-shearNutDomeRad, $fn=resolution);
            }
            translate([0,0,-shearNutDomeRad]){
                cylinder(r=shearNutHoleRad, h=shearNutHeight+2*cutOverlap, $fn=resolution);
            }
        }
    }
}

// plainNut
module plainNut(){
    difference(){
        translate([0,0,-plainNutHeight]){
            cylinder(h=plainNutHeight, r=plainNutRad, $fn=6);
        }
        translate([0,0,-plainNutHeight-cutOverlap]){
            cylinder(r=plainNutHoleRad, h=plainNutHeight+2*cutOverlap, $fn=resolution);
        }
    }
}


// thumbScrew
module thumbScrew(){
    cylinder(h=thumbScrewThreadLength, r=thumbScrewThreadRad, $fn=resolution);
    translate([0,0,thumbScrewThreadLength]){
        cylinder(h=thumbScrewShoulderLength, r=thumbScrewShoulderRad, $fn=20);
    }
    translate([0,0,thumbScrewThreadLength+thumbScrewShoulderLength]){
        cylinder(h=thumbScrewHeadLength, r=thumbScrewHeadRad, $fn=20);
    }
}

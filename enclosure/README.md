# Ohmigo TTL ESP32 Enclosure

This directory contains the 3D model files for the Ohmigo TTL controller enclosure.

## Design Specifications

The enclosure is designed to fit an ESP32 chip with the following requirements:
- **Chip dimensions**: 80mm (length) × 25mm (width) × 15mm (height)
- **USB-C connector**: Opening on the front side (approximately 10mm × 4mm)
- **Cable opening**: 3mm × 8mm opening on the back side
- **Ventilation**: Multiple ventilation holes on the lid for cooling

## Files

- `ohmigo-ttl-enclosure.scad` - OpenSCAD YAPP Box configuration file

## Requirements

To generate the STL files, you need:
1. [OpenSCAD](https://openscad.org/) - 3D modeling software
2. [YAPP Box library](https://github.com/mrWheel/YAPP_Box) - Yet Another Parameterized Projectbox generator

## Installation

1. Install OpenSCAD from https://openscad.org/downloads.html
2. Clone the YAPP Box library:
   ```bash
   git clone https://github.com/mrWheel/YAPP_Box.git
   ```
3. Create a symlink or copy the YAPP_Box library to this directory

## Usage

### Generate STL files with OpenSCAD:

```bash
# Generate the base (bottom part)
openscad -o ohmigo-ttl-base.stl -D printBaseShell=true ohmigo-ttl-enclosure.scad

# Generate the lid (top part)
openscad -o ohmigo-ttl-lid.stl -D printLidShell=true ohmigo-ttl-enclosure.scad
```

### Open in OpenSCAD GUI:

```bash
openscad ohmigo-ttl-enclosure.scad
```

Then use the OpenSCAD interface to:
- Preview the design (F5)
- Render the final model (F6)
- Export to STL (File → Export → Export as STL)

## Design Features

### Ventilation
- 12 ventilation holes (3mm diameter) arranged in 2 rows on the lid
- Provides airflow for ESP32 cooling during operation

### Connectors
- **Front (USB-C)**: 10mm × 4mm rectangular opening for USB-C connector access
- **Back (Cable)**: 3mm × 8mm rectangular opening for wire/cable routing

### PCB Mounting
- 4 standoff pins at corners for secure PCB mounting
- 5mm standoff height above the base
- Standard 1.6mm PCB thickness supported

### Dimensions
- **PCB Space**: 80mm × 25mm
- **Internal Height**: ~15mm (from standoff to lid)
- **Wall Thickness**: 2mm
- **Rounded corners**: 2mm radius for ergonomic handling

## Customization

Edit `ohmigo-ttl-enclosure.scad` to customize:
- `pcbLength`, `pcbWidth` - Adjust for different board sizes
- `ventHoleSize`, `ventHoleSpacing` - Modify ventilation pattern
- `wallThickness` - Change enclosure wall thickness
- `pcbStandoffHeight` - Adjust PCB elevation
- Cutout positions and sizes in `cutoutsFront` and `cutoutsBack` arrays

## 3D Printing

Recommended print settings:
- **Layer height**: 0.2mm
- **Wall thickness**: 2-3 perimeters
- **Infill**: 20-30%
- **Support**: Not required for this design
- **Material**: PLA, PETG, or ABS

Print both the base and lid separately, then snap them together.

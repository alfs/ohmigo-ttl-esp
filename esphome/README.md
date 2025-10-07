# Ohmigo TTL ESPHome Configuration

This directory contains ESPHome configuration files for the Ohmigo TTL controller.

## Files

- `ohmigo-ttl.yaml` - Main ESPHome configuration file
- `secrets.yaml.example` - Example secrets file (copy to `secrets.yaml` and fill in your values)

## Setup

1. **Install ESPHome**:
   ```bash
   pip install esphome
   ```

2. **Create secrets file**:
   ```bash
   cp secrets.yaml.example secrets.yaml
   ```
   Then edit `secrets.yaml` with your WiFi credentials and passwords.

3. **Validate configuration**:
   ```bash
   esphome config ohmigo-ttl.yaml
   ```

4. **Compile firmware**:
   ```bash
   esphome compile ohmigo-ttl.yaml
   ```

5. **Upload to ESP32** (first time via USB):
   ```bash
   esphome upload ohmigo-ttl.yaml
   ```
   
   After the first upload, you can use OTA updates over WiFi:
   ```bash
   esphome upload ohmigo-ttl.yaml --device ohmigo-ttl.local
   ```

## Configuration Details

### Hardware

- **Platform**: ESP32
- **Board**: ESP32-DEVKIT
- **TTL Outputs**: GPIO16, GPIO17
- **Status LED**: GPIO2

### Features

- **WiFi connectivity** with fallback AP mode
- **Home Assistant API** integration with encryption
- **OTA updates** for wireless firmware updates
- **Web server** for status monitoring (port 80)
- **TTL control switches** for output control
- **Status LED** to indicate device state

### TTL Outputs

The configuration provides two TTL output switches:
- **TTL Output 1** (GPIO16)
- **TTL Output 2** (GPIO17)

These can be controlled via:
- Home Assistant UI
- ESPHome web server
- Home Assistant automations
- REST API

## Home Assistant Integration

After flashing the firmware, the device will automatically be discovered by Home Assistant if you have the ESPHome integration installed.

1. Go to Home Assistant → Settings → Devices & Services
2. Look for the discovered "Ohmigo TTL" device
3. Add it to your Home Assistant instance
4. The TTL switches will appear as controllable entities

## Customization

Edit `ohmigo-ttl.yaml` to:
- Add more GPIO outputs
- Configure additional sensors
- Add automations
- Modify logging levels
- Change device name and settings

## Troubleshooting

### Device not connecting to WiFi
- Check WiFi credentials in `secrets.yaml`
- The device will create a fallback AP named "Ohmigo-TTL Fallback Hotspot"
- Connect to the AP and configure WiFi through the captive portal

### Cannot upload firmware
- Make sure the ESP32 is connected via USB
- Check that you have the correct drivers installed (CP210x or CH340)
- Try holding the BOOT button while uploading

### OTA updates failing
- Verify the device is on the network (`ping ohmigo-ttl.local`)
- Check the OTA password in `secrets.yaml`
- Ensure firewall allows connections on port 3232

## References

- [ESPHome Documentation](https://esphome.io/)
- [ESP32 GPIO Reference](https://esphome.io/devices/esp32.html)
- [Home Assistant ESPHome Integration](https://www.home-assistant.io/integrations/esphome/)

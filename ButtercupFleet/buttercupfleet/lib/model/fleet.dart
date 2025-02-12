import 'package:buttercupfleet/model/fleet_vehicle.dart';

class Fleet {
  final int id;
  final String name;
  final String? description;
  final List<FleetVehicle>? vehicles;

  Fleet({
    required this.id,
    required this.name,
    this.description,
    this.vehicles,
  });
}
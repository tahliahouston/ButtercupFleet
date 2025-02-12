class FleetVehicle {
  final int id;
  final String name;
  final String? description;

  FleetVehicle({
    required this.id,
    required this.name,
    this.description,
  });
}
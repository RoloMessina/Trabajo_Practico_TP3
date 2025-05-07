class Articulo {
  final String id;
  final String marca;
  final String modelo;
  final double precio;
  final String? imagen;
  final String descripcion;
  final int stock;
  final List<String> caracteristicas;

  Articulo({
    required this.id,
    required this.marca,
    required this.modelo,
    required this.precio,
    this.imagen,
    required this.descripcion,
    required this.stock,
    required this.caracteristicas,
  });
}

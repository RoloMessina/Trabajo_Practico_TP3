import 'package:flutter/material.dart';
import 'package:e_commerce_jktecno/core/data/articulo_datasource.dart';
import 'package:e_commerce_jktecno/entities/articulo.dart';

class ArticuloDetailScreen extends StatelessWidget {
  const ArticuloDetailScreen({super.key, required this.articuloId});

  static const String name = 'articulo_detail_screen';
  final String articuloId;

  @override
  Widget build(BuildContext context) {
    final articulo = articuloList.firstWhere(
      (articulo) => articulo.id == articuloId,
      orElse: () => throw Exception('Artículo no encontrado'),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Detalles del Celular')),
      body: _ArticuloDetailView(articulo: articulo),
    );
  }
}

class _ArticuloDetailView extends StatelessWidget {
  const _ArticuloDetailView({super.key, required this.articulo});

  final Articulo articulo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (articulo.imagen != null && articulo.imagen!.isNotEmpty)
            Image.network(
              articulo.imagen!,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.broken_image,
                size: 300,
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${articulo.marca} ${articulo.modelo}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  '\$${articulo.precio.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Descripción:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  articulo.descripcion,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Características:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                ...articulo.caracteristicas.map(
                  (caracteristica) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      children: [
                        const Icon(Icons.check_circle_outline, size: 20),
                        const SizedBox(width: 8),
                        Text(caracteristica),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Stock disponible: ${articulo.stock}',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: articulo.stock > 0 ? Colors.green : Colors.red,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
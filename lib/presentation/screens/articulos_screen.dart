import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:e_commerce_jktecno/core/data/articulo_datasource.dart';
import 'package:e_commerce_jktecno/entities/articulo.dart';
import 'package:e_commerce_jktecno/presentation/screens/articulo_detail_screen.dart';
import 'package:e_commerce_jktecno/presentation/widgets/articulo_item.dart';

class ArticulosScreen extends StatelessWidget {
  static const String name = 'articulos_screen';
  final List<Articulo> articulos = articuloList;

  ArticulosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catálogo de Celulares')),
      body: _ArticulosView(articulos: articulos),
    );
  }
}

class _ArticulosView extends StatelessWidget {
  final List<Articulo> articulos;

  const _ArticulosView({super.key, required this.articulos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articulos.length,
      itemBuilder: (context, index) {
        final articulo = articulos[index];
        return ArticuloItem(
          articulo: articulo,
          onTap: () => _goToArticuloDetails(context, articulo),
        );
      },
    );
  }

  void _goToArticuloDetails(BuildContext context, Articulo articulo) {
    context.pushNamed(
      ArticuloDetailScreen.name,
      pathParameters: {'articuloId': articulo.id},
    );
  }
}
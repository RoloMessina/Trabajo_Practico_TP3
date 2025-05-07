import 'package:go_router/go_router.dart';
import 'package:e_commerce_jktecno/presentation/screens/articulo_detail_screen.dart';
import 'package:e_commerce_jktecno/presentation/screens/articulos_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      name: ArticulosScreen.name,
      path: '/',
      builder: (context, state) => ArticulosScreen(),
    ),
    GoRoute(
      name: ArticuloDetailScreen.name,
      path: '/articulo/:articuloId',
      builder: (context, state) {
        final articuloId = state.pathParameters['articuloId'];
        return ArticuloDetailScreen(
          articuloId: articuloId!,
        );
      },
    ),
  ],
);


import 'package:e_commerce_jktecno/entities/articulo.dart';

final List<Articulo> articuloList = [
  Articulo(
    id: '1',
    marca: 'Samsung',
    modelo: 'Galaxy S23 Ultra',
    precio: 999.99,
    imagen: 'https://example.com/s23-ultra.jpg',
    descripcion:
        'El último buque insignia de Samsung con cámara de 200MP y S Pen incluido.',
    stock: 10,
    caracteristicas: [
      '200MP Cámara principal',
      'Procesador Snapdragon 8 Gen 2',
      '12GB RAM',
      '512GB Almacenamiento',
      'Pantalla Dynamic AMOLED 2X 6.8"',
      'Batería 5000mAh',
    ],
  ),
  Articulo(
    id: '2',
    marca: 'Apple',
    modelo: 'iPhone 15 Pro Max',
    precio: 1199.99,
    imagen: 'https://example.com/iphone15-pro-max.jpg',
    descripcion:
        'El iPhone más avanzado con chip A17 Pro y cámara profesional.',
    stock: 5,
    caracteristicas: [
      'Chip A17 Pro',
      'Cámara triple 48MP',
      '8GB RAM',
      '256GB Almacenamiento',
      'Pantalla Super Retina XDR 6.7"',
      'Titanio aeroespacial',
    ],
  ),
  Articulo(
    id: '3',
    marca: 'Xiaomi',
    modelo: 'Redmi Note 12 Pro',
    precio: 299.99,
    imagen: 'https://example.com/redmi-note-12-pro.jpg',
    descripcion: 'Excelente relación calidad-precio con gran rendimiento.',
    stock: 15,
    caracteristicas: [
      'Procesador MediaTek Dimensity 1080',
      'Cámara 108MP',
      '8GB RAM',
      '256GB Almacenamiento',
      'Pantalla AMOLED 6.67"',
      'Batería 5000mAh',
    ],
  ),
];

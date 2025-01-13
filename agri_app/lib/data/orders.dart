import 'package:agri_app/data/products.dart';
import 'package:agri_app/utils/enums/order.dart';
import '../models/order.dart';

List<Order> orders = [
  Order(id: "0093450", products: products.reversed.take(3).toList(),
      orderingDate: DateTime.utc(2024, 4, 1),
      deliveryDate: DateTime.utc(2024, 4, 15),
      status: OrderStatus.shipped
  ),
  Order(id: "0071450", products: products.reversed.take(3).toList(),
      orderingDate: DateTime.utc(2023, 12, 4),
      deliveryDate: DateTime.utc(2023, 12, 21),
      status: OrderStatus.delivered
  ),
  Order(id: "0093110", products: products.reversed.take(3).toList(),
      orderingDate: DateTime.utc(2024, 1, 4),
      deliveryDate: DateTime.utc(2024, 1, 12),
      status: OrderStatus.delivered
  ),
  Order(id: "0091450", products: products.reversed.take(3).toList(),
      orderingDate: DateTime.utc(2024, 4, 12),
      deliveryDate: DateTime.utc(2024, 4, 22),
      status: OrderStatus.processing
  ),
  Order(id: "0093210", products: products.reversed.take(3).toList(),
      orderingDate: DateTime.utc(2024, 2, 4),
      deliveryDate: DateTime.utc(2024, 2, 4),
      status: OrderStatus.pending
  ),
  Order(id: "0022450", products: products.reversed.take(3).toList(),
      orderingDate: DateTime.utc(2024, 3, 1),
      deliveryDate: DateTime.utc(2024, 3, 15),
      status: OrderStatus.delivered
  ),
  Order(id: "9053450", products: products.reversed.take(3).toList(),
      orderingDate: DateTime.utc(2024, 4, 6),
      deliveryDate: DateTime.utc(2024, 4, 18),
      status: OrderStatus.shipped
  ),
  Order(id: "0143450", products: products.reversed.take(3).toList(),
      orderingDate: DateTime.utc(2024, 4, 9),
      deliveryDate: DateTime.utc(2024, 4, 17),
      status: OrderStatus.shipped
  ),
];
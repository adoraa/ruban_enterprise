import 'package:agri_app/utils/enums/order.dart';
import 'package:agri_app/utils/extensions/date.dart';
import 'package:agri_app/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:agri_app/models/order.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key, required this.order});
  final Order order;

  @override
  Widget build(BuildContext context) {
    const steps = OrderStatus.values;
    final activeStep = steps.indexOf(order.status);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order details"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          EasyStepper(
            activeStep: activeStep == steps.length - 1 ? activeStep + 1 : activeStep,
            stepRadius: 8,
            activeStepTextColor: Colors.black87,
            finishedStepTextColor: Theme.of(context).colorScheme.primary,
            lineStyle: LineStyle(
              defaultLineColor: Colors.grey.shade300,
              lineLength: (MediaQuery.of(context).size.width * 0.7) / steps.length,
            ),
            steps: List.generate(steps.length, (index) {
              return EasyStep(
                icon: const Icon(Icons.local_shipping),
                finishIcon: const Icon(Icons.done),
                title: steps[index].name,
                topTitle: true,
              );
            }),
          ),
          const SizedBox(height: 10,),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              side: BorderSide(
                color: Colors.grey.shade200,
              ),
            ),
            elevation: 0.1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order: ${order.id}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Chip(
                          shape: const StadiumBorder(),
                          side: BorderSide.none,
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .primaryContainer.withOpacity(0.4),
                          labelPadding: EdgeInsets.zero,
                          avatar: const Icon(Icons.fire_truck),
                          padding: const EdgeInsets.symmetric(horizontal: 10,),
                          label: Text(steps[activeStep].name),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Delivery Estimate"),
                      Text(
                        order.deliveryDate.formatDate,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  const Text(
                    "Danladi Adejumoke G.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Row(
                    children: [
                      Icon(IconlyLight.home, size: 15,),
                      SizedBox(width: 5,),
                      Expanded(child: Text("Plot 67 Honey Way, Asaba")),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  const Row(
                    children: [
                      Icon(IconlyLight.call, size: 15,),
                      SizedBox(width: 5,),
                      Expanded(child: Text("+2349078542297")),
                    ],
                  ),
                  const SizedBox(height: 25,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment Method"),
                      Text(
                        "Credit Card ***6789",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30,),
          OrderItem(order: order, visibleProducts: 1,),
        ],
      ),
    );
  }
}

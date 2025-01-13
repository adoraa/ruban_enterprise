import 'package:agri_app/data/products.dart';
import 'package:agri_app/widgets/products_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          //Filter and Search
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search here",
                      isDense: true,
                      contentPadding: const EdgeInsets.all(12),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: const BorderRadius.all(
                            Radius.circular(99),
                        )
                      ),
                      prefixIcon: const Icon(IconlyLight.search)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: IconButton.filled(
                    onPressed: (){},
                    icon: const Icon(IconlyLight.filter),
                  ),
                )
              ],
            ),
          ),
          
          //Ad
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: SizedBox(
              height: 170,
                child: Card(
                  color: Colors.green.shade50,
                  elevation: 0.1,
                  shadowColor: Colors.green.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        //Text
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Join the community!",
                                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                  color: Colors.green.shade700,
                                ),
                              ),
                              const Text("Explore the opportunities our community offers."),
                              FilledButton(onPressed: () {}, child: const Text("Join now"))
                            ],
                          ),
                        ),
                        //Image
                        Image.asset(
                          'assets/onboarding.png',
                          width: 125,
                        )
                      ],
                    ),
                  ),
                ),
            ),
          ),

          //Products
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Store/Barn",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              TextButton(onPressed: (){}, child: const Text("Add produce"))
            ],
          ),

          //Featured
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.9,
          ), itemBuilder: (context, index) {
            return ProductCard(
                product: products[index],
            );
          },),
        ],
      ),
    );
  }
}

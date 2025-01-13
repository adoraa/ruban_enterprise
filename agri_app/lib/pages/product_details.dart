import 'package:agri_app/data/products.dart';
import 'package:agri_app/models/product.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.product});

  final Product product;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool showMore = false;
  late TapGestureRecognizer readMoreGestureRecognizer;

  @override
  void initState() {
    readMoreGestureRecognizer = TapGestureRecognizer()..onTap = () {
      setState(() {
        showMore = !showMore;
      });
    };
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    readMoreGestureRecognizer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(IconlyBroken.delete),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: 250,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage(
                      widget.product.image,
                  ),
              ),
            ),
          ),
          Text(
            widget.product.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Stock",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary
                ),
              ),
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: "₦${widget.product.price}",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      TextSpan(
                        text: "/${widget.product.unit}",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ]
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 16,
                color: Colors.yellow.shade600,
              ),
              Text("${widget.product.rating} (50)"),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Edit",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
                width: 30,
                child: IconButton.filled(
                    onPressed: () {},
                    iconSize: 16,
                    icon: const Icon(IconlyLight.edit)
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Text("Description", style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),),
          const SizedBox(height: 5,),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: showMore
                      ? widget.product.description
                      : "${widget.product.description.substring(0, widget.product.description.length - 220)}...",
                ),
                TextSpan(
                  recognizer: readMoreGestureRecognizer,
                  text: showMore ? " Read Less" : " Read more",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            "Other Products",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),),
          const SizedBox(height: 10,),
          SizedBox(
            height: 90,
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 90,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            products[index].image
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(width: 10,),
                itemCount: products.length
            ),
          ),
          const SizedBox(height: 20,),
          FilledButton.icon(
            onPressed: (){},
            label: const Text("Archive Product"),
            icon: const Icon(IconlyLight.bookmark),
          ),
        ],
      ),
    );
  }
}

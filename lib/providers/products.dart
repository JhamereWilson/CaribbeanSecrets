import 'package:caribbean_secrets_ecommerce/models/product_model.dart';
import 'package:flutter/material.dart';

class Products with ChangeNotifier {
  List<Product> _oils = [
    Product(
      id: 1,
      title: "Original Haitian Castor Oil",
      price: 25.00,
      squarePrice: 2500,
      imageUrl: "/images/CS1Bottle.png",
      description:
          "Enjoy the traditional aspects of using Pure Unrefined Hatian Castor Oil.",
      ingredients: "Pure Unrefined Haitian Castor Oil",
      threeDetails: ["Unrefined", "Cator", "Oil"],
    ),
    Product(
      id: 2,
      title: "Vanilla Haitian Castor Oil",
      price: 25.00,
      squarePrice: 2500,
      imageUrl: "/images/CS1Bottle.png",
      description:
          "Soothe your scalp and your senses with Vanilla infused Haitian Castor Oil.",
      ingredients: "Pure Unrefined Haitian Castor Oil, Vanilla Essential Oil",
      threeDetails: ["Vanilla", "Essential", "Oil"],
    ),
    Product(
      id: 3,
      title: "Peppermint Haitian Castor Oil",
      price: 25.00,
      squarePrice: 2500,
      imageUrl: "/images/CS1Bottle.png",
      description:
          "Stimulate hair growth with peppermint oil infused Haitian Castor Oil.",
      ingredients:
          "Pure Unrefined Haitian Castor Oil , Peppermint Essential Oil",
      threeDetails: ["Peppermint", "Essential", "Oil"],
    ),
  ];
  List<Product> _collectionItems = [
    Product(
      id: 4,
      title: "Pre-Poo",
      price: 25.00,
      squarePrice: 2500,
      imageUrl: "/images/transparent_pree.png",
      description:
          "Step 1: Apply Pre-Poo before shampooing to reinforce your hair fibers with polar oils. Applying Pre-poo before shampooing and showering makes your hair stronger and more durable, minimizing hair breakage and dryness. ",
      threeDetails: ["CASTOR OIL", "COCONUT", "HEMP SEED"],
      ingredients:
          "Pure Unrefined Haitian Castor Oil, Hemp Seed Oil, Coconut Oil",
    ),
    Product(
      id: 5,
      title: "Secret Shampoo",
      price: 25.00,
      squarePrice: 2500,
      imageUrl: "/images/CSwebsite-39.jpg",
      description:
          "Step 2: Apply Shampoo at least once a month to gently cleanse your hair, remove dust, dirt, oil, and other debris from your hair without stipping it bare of its natural oils. Our shampoo is sulfate-free so your hair will thank you.",
      ingredients:
          "Distilled Water, Cocoamidopropyl Betaine, Sodium Cocoamphodiacetate, Decyl Glucoside, DL-Pathenol, Yucca Extract, Hibiscus Powder, Aloe Vera Gel, Honey, Peppermint Oil, Eucalyptus, Thyme, Citric Acid",
      threeDetails: ["THYME", "PEPPERMINT", "HIBISCUS"],
    ),
    Product(
      id: 6,
      title: "Crème",
      price: 25.00,
      squarePrice: 2500,
      imageUrl: "/images/CSwebsite-38.jpg",
      description:
          "Step 3: Apply Crème after shampooing to replenish your hair strands with the perfect combination of proteins and healthy fats to enhance your curl pattern and overall hair health.",
      ingredients:
          "Distilled Water, Raw Whole Flaxseed Gel, Organic Coconut Milk, Aloe Vera Gel, Organic Creamed Honey, Organic Coconut Oil, Shea Butter, Avocado Butter, Olive Oil, Cranberry Seed Oil, Haitian Castor Oil, Cetearyl Alcohol, DL-Pathenol, Potassium Sorbate, Lactic Acid, Fragrance",
      threeDetails: ["SHEA", "ALOE VERA", "CRANBERRY"],
    ),
    Product(
      id: 7,
      title: "Moisturizing Mist",
      price: 25.00,
      squarePrice: 2500,
      imageUrl: "/images/entire_collection.png",
      description:
          "Step 4: Apply Moisturizing Mist daily to reinvigorate your hair strands, making them moisturized and shiny. Use daily.",
      ingredients:
          "Distilled Water, Aloe Vera Gel, Polysorbate 60, Olive Oil, Haitian Castr Oil, Honey, DL-Pathenol, Potassium Sorbate",
      threeDetails: ["H20", "HONEY", "OLIVE"],
    ),
  ];

  List<Product> get oils {
    return [..._oils];
  }

  List<Product> get collectionItems {
    return [..._collectionItems];
  }

  Product findById(int id) {
    return _oils.firstWhere((prod) => prod.id == id);
  }
}

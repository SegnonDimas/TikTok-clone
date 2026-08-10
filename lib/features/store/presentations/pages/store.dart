import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {

  List products=[];

  Future<void> getAllProducts() async {
     final url = Uri.parse("https://fakestoreapi.com/products");
     final response = await http.get(url);
     final body = jsonDecode(response.body);
     if(response.statusCode==200){
       setState(() {
         products = body;
       });
     }

   }
  Future<void> addNewProduct(Map newProduct)async {
    final url = Uri.parse("https://fakestoreapi.com/products");

    final requesteBody = jsonEncode(newProduct);

    final response = await http.post(url, body: requesteBody);

    if(response.statusCode==201){
      print("🔥Produit ajouté avec succès");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Produit ajouté avec succès"),
        ),
      );

      showAdaptiveDialog(context: context, builder: (context) =>  AlertDialog(
        title: Text("Produit ajouté"),
        content: Text("Le produit a été ${newProduct['title']} ajouté avec succès."),
      ));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text("Oups, il y a une erreur qui s'est produite, Veuillez réessayer"),
        ),
      );
    }
  }

  deleteAProduct(int productId)async{
    final url = Uri.parse("https://fakestoreapi.com/products/$productId");

    final response = await http.delete(url);

    if(response.statusCode==200){
      print("🔥Produit supprimé avec succès");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Produit supprimé avec succès"),
        ),
      );
    }

    else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text("Oups, il y a une erreur qui s'est produite, Veuillez réessayer"),
        ),
      );
    }



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Store"),

        actions: [
          IconButton(
              onPressed: () async{
                print("🛑✅🔥");
                await getAllProducts();

              },
              icon: Icon(Icons.refresh,))
        ],
      ),

      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Padding(
              padding: EdgeInsets.all(10),
            child:ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  color: Colors.black12,
                ),
              Positioned(
                right: 10,
               top: 10,
               child: IconButton(onPressed: null, icon: Icon(Icons.favorite, color: Colors.lightBlue,)),
              ),

                Positioned(
                  left: 10,
                  top: 10,
                  child: Text(product['price'].toString()+"\$"),

                ),

                Positioned(
                  right: 10,
                  bottom: 10,
                  child: IconButton(

                      onPressed: () async{
                        await deleteAProduct(product["id"]);
                      },
                      icon: Icon(Icons.delete, color: Colors.red,)),


                ),

                Image.network(
                    height: 200,
                    fit: BoxFit.cover,
                    product['image']),
              ],
            )
          )
          );
        },
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          await addNewProduct(
              {
                "id": 23,
                "title": "Black Shoes",
                "price": 3,
                "description": "Black Shoes for gentlemen",
                "category": "men",
                "image": "http://example.com"
              }
          );
        },
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:kuis_praktikum_mobile_124210081_b/pokemon_data.dart';
import 'package:kuis_praktikum_mobile_124210081_b/halaman_detail.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: listPokemon.length,
          itemBuilder: (context, index) {
            final PokemonData place = listPokemon[index];
            return InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return HalamanDetail(pokemon: place);
                    }));
              },
              child: Card(
                child: Row(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Image.network(place.image),
                    ),
                    SizedBox(width: 30,),
                    Text(place.name)
                  ],
                ),
              ),
            );
          }),
    );
  }
}

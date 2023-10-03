import 'package:flutter/material.dart';
import 'package:kuis_praktikum_mobile_124210081_b/pokemon_data.dart';



class HalamanDetail extends StatelessWidget {
  const HalamanDetail({super.key, required this.pokemon});
  final PokemonData pokemon;

  @override
  Widget build(BuildContext context) {
    var spec_list;
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Detail"),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: Image.network(pokemon.image),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(child: Column(
              children: [
                Text(
                  pokemon.name,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.red
                  ),
                ),
                Text(pokemon.image),
                Text(pokemon.type[0]),
                Text(pokemon.nextEvolution[0]),
                Text(pokemon.prevEvolution[0])
              ],
            ),
            ),
          ),
          SizedBox(height: 40,),
          IconButton(onPressed: (){
          }, icon: Icon(Icons.link))
        ],
      ),
    );
  }




}

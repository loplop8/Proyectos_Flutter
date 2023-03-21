import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imgURL;
  final String? name;

  const CustomCardType2({super.key, required this.imgURL, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      //Sirve para que no se salga el contenido
      clipBehavior: Clip.antiAlias,
      //Sirve para ajustar  la forma
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
      shadowColor: AppTheme.primario.withOpacity(0.6),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage("assets/jar-loading.gif"),
            image: NetworkImage(imgURL),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 5000),
          ),
          if (name != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(name ?? "No title"))
        ],
      ),
    );
  }
}

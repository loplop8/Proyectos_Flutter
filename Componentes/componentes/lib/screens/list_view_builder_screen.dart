import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent -
              scrollController.position.pixels <=
          100) {
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return; //No hagas nada si es true
    isLoading = true; //Si entra por que es false lo ponemos a true

    setState(() {
      //Redibujamos los widgets
    });

    await Future.delayed(const Duration(seconds: 2));

    add10();

    isLoading = false;
    setState(() {});

    if (scrollController.position.maxScrollExtent -
            scrollController.position.pixels <=
        100) {
      scrollController.animateTo(scrollController.position.pixels + 120,
          duration: const Duration(milliseconds: 200),
          curve: Curves.bounceInOut);
    } else {
      return;
    }

    setState(() {});
  }

  void add10() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((e) => lastId + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2)); //Esperamos 2 segundos
    final lastId = imagesIds.last; //Cogemos el id de la ultima imagen
    imagesIds.clear(); //Borramos la lista de los ids de los  imagenes
    imagesIds.add(lastId + 1); //Insertamos la siguiente imagen en la lista
    add10(); //Llamamaos a la funcion que nos inserta 10 ids nuevos en la lista de imagenes
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; //Ancho y alto del dispositivo que se este corriendo la aplicacion

    return Scaffold(
        body: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Stack(
        //Stack nos vale para poner un widget encima de otro por asi decirlo
        children: [
          RefreshIndicator(
            color: AppTheme.primario,
            onRefresh: onRefresh,
            child: ListView.builder(
              physics:
                  const BouncingScrollPhysics(), //Efecto de IOS para el scroll
              controller: scrollController,
              //Casi todos los widgets que tienen scroll van a tener el controller
              itemCount: imagesIds.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage("assets/jar-loading.gif"),
                    image: NetworkImage(
                        "https://picsum.photos/500/300?image${imagesIds[index]}"));
              },
            ),
          ),
          if (isLoading)
            Positioned(
                bottom: 40,
                left: size.width * 0.5 - 30,
                child: const _LoadingIcon())
        ],
      ),
    ));
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5), shape: BoxShape.circle),
      child: const CircularProgressIndicator(
        color: AppTheme.primario,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ImgRedonda extends StatelessWidget {
  final String img;
  final String txt;

  const ImgRedonda({Key key, this.img, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        child: Image(
          image: NetworkImage(img),
          width: 100,
        ),
      ),
    );
  }
}

class Lanches extends StatefulWidget {
  @override
  _LanchesState createState() => _LanchesState();
}

class _LanchesState extends State<Lanches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Flexible(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        ImgRedonda(
                          img:
                              "https://lh3.googleusercontent.com/proxy/gTqi4PaWb8pVaBcxJ3RReE9lzUi5SXbegl1feCqmX6Aye0P4EeV4DAok38e2HlNX88QFjQyY2UPVd9mscNbmBocgkA4HqOF3yOreUF8f7g_eUYFglWSpWkqnkxVMZ2ZhxF-fVTQig42HxY4pc122iNkM-QkaX8-usZ3Jew",
                        ),
                        Text("Pizza 1")
                      ],
                    ),
                    Column(
                      children: [
                        ImgRedonda(
                          img:
                              "https://lh3.googleusercontent.com/proxy/fpJ6O2SFSnEXGpTrnJKtIdmMo9X1r_o5AVCpN6M9f5ByJiPmrQrI6tXcjCBgzO4TMHkASPQwpEwTTaXXFu_JSc-jJxd7M-dUmaRbpm0mfDufX8dniIWg6IL_p9V89211ZkwwHZC3je6NF7bTWNwLWh5k-_GLtLTQ8Ho",
                        ),
                        Text("Pizza 2")
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

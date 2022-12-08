import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my_steps/core/app/app.dart';
import 'package:guide_my_steps/core/home/home.dart';

import '../../maps/view/map.dart';
import '../../sign_up/view/sign_up_page.dart';

class TypeOfGuide extends StatelessWidget {
  const TypeOfGuide({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const TypeOfGuide());
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Type of guide'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 120),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        //color: Colors.white,
                        //shape: new RoundedRectangleBorder(
                        //borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () => Navigator.of(context).push<void>(
                            MyGoogleMap
                                .route()), //formulario para cargar direccion.
                        //luego listar las opciones para llegar mas rapido.. en un primer momento caminando
                        //pero despues mostrar opciones de colectivo y bus
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child:
                                Text("By address", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        //color: Colors.white,
                        //shape: new RoundedRectangleBorder(
                        //  borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {}, //Abrir lista de lugares cargados
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child:
                                Text("By place", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

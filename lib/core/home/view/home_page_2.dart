import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my_steps/core/app/app.dart';
import 'package:guide_my_steps/core/home/home.dart';

import '../../maps/view/map.dart';
import '../../sign_up/view/sign_up_page.dart';
import '../../type_of_guide/view/type_of_guide.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  static Page<void> page() => const MaterialPage<void>(child: HomePage2());

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guide my steps'),
        actions: <Widget>[
          IconButton(
            key: const Key('homePage_logout_iconButton'),
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => context.read<AppBloc>().add(AppLogoutRequested()),
          )
        ],
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
                        onPressed: () => Navigator.of(context)
                            .push<void>(TypeOfGuide.route()),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("Guiado", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        //color: Colors.white,
                        //shape: new RoundedRectangleBorder(
                        //  borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {},
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("DetectarObjeto",
                                textAlign: TextAlign.center),
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
                        //borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {},
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("Lugares", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        //color: Colors.white,
                        //shape: new RoundedRectangleBorder(
                        //  borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {},
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child:
                                Text("OPTION 2", textAlign: TextAlign.center),
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

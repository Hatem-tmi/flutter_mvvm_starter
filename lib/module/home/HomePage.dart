import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mvvm_providerarchi_starter/common/AppColor.dart';
import 'package:mvvm_providerarchi_starter/common/AppTextStyle.dart';
import 'package:mvvm_providerarchi_starter/module/home/HomePageViewModel.dart';
import 'package:mvvm_providerarchi_starter/module/recap/RecapPage.dart';
import 'package:provider_architecture/provider_architecture.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<HomePageViewModel>.withConsumer(
      viewModelBuilder: () => HomePageViewModel(),
      builder: (context, viewModel, child) => Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context).homePageTitle),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  AppLocalizations.of(context).push,
                ),
                Text(
                  '${viewModel.getCounter}',
                  style: AppTextStyle.header1(context, AppColor.primary),
                ),
                ElevatedButton(
                  child: Text(AppLocalizations.of(context).gotoRecap),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              RecapPage(viewModel.getCounter)),
                    );
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton.extended(
                heroTag: "btn1",
                onPressed: () {
                  viewModel.incrementCounter(); //Increament
                },
                label: Icon(Icons.add),
                elevation: 10,
              ),
              FloatingActionButton.extended(
                heroTag: "btn2",
                onPressed: () {
                  viewModel.decrementCounter(); //Decrement
                },
                label: Center(child: Icon(Icons.minimize)),
                elevation: 10,
              ),
            ],
          )),
    );
  }
}

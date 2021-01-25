import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mvvm_providerarchi_starter/common/AppColor.dart';
import 'package:mvvm_providerarchi_starter/common/AppTextStyle.dart';
import 'package:mvvm_providerarchi_starter/module/recap/RecapPageViewModel.dart';
import 'package:provider_architecture/_viewmodel_provider.dart';

class RecapPage extends StatefulWidget {
  final int count;

  RecapPage(this.count);

  @override
  _RecapPageState createState() => _RecapPageState();
}

class _RecapPageState extends State<RecapPage> {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<RecapPageViewModel>.withConsumer(
        viewModelBuilder: () => RecapPageViewModel(widget.count),
        builder: (context, viewModel, child) => Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context).recapPageTitle),
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '${viewModel.count}',
                      style: AppTextStyle.header1(context, AppColor.primary),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(AppLocalizations.of(context).goback),
                    )
                  ]),
            )));
  }
}

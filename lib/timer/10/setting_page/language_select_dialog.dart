import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../app_config_bloc/app_config.dart';
import '../app_config_bloc/app_config_bloc.dart';

void showLanguageSelectDialog(BuildContext context) {
  List<String> data = AppConfig.languageSupports.keys.toList();
  showCupertinoModalPopup(
      context: context,
      builder: (context) => LanguageSelectDialog(
            data: data,
          ));
}

class LanguageSelectDialog extends StatelessWidget {
  final List<String> data;

  const LanguageSelectDialog({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String localDialogTitle = AppLocalizations.of(context)!.localDialogTitle;

    return Material(
      child: SizedBox(
        height: 350,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                localDialogTitle,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemBuilder: _buildItem,
                itemCount: data.length,
              ),
            )
          ],
        ),
        // color: Colors.orange,
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    Locale locale = AppConfig.languageSupports.values.toList()[index];
    Locale? blocLocal = BlocProvider.of<AppConfigBloc>(context).state.locale;
    bool checked = locale == blocLocal;
    Color color = Theme.of(context).primaryColor;
    return ListTile(
      title: Text(data[index]),
      onTap: () => _onSelect(context, index),
      trailing: checked ? Icon(Icons.check, size: 20, color: color) : null,
    );
  }

  void _onSelect(BuildContext context, int index) {
    Locale locale = AppConfig.languageSupports.values.toList()[index];
    BlocProvider.of<AppConfigBloc>(context).switchLanguage(locale);
    Navigator.of(context).pop();
  }
}

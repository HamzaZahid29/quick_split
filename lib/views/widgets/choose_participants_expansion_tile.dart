import 'package:flutter/material.dart';

import '../../utils/app_text_styles.dart';
import '../../utils/app_themes.dart';

class ChooseParticipantsExpansionTile extends StatelessWidget {
  String title;
  String date;
  List<String> participantNames;
  VoidCallback voidCallback;

  ChooseParticipantsExpansionTile(
      {required this.title,
      required this.date,
      required this.participantNames,
      required this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      subtitle: Text(
        date,
        style: AppTextStyles.caption,
      ),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(participantNames.length,
              (e) => ParticipantExpansionNameTile(title: participantNames[e])),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(onPressed: voidCallback, child: Text('Select Group')),
          ],
        )
      ],
    );
  }
}

class ParticipantExpansionNameTile extends StatelessWidget {
  String title;

  ParticipantExpansionNameTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Row(
        children: [
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppThemes.darkAccentColor),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(title),
                  )))
        ],
      ),
    );
  }
}

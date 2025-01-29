import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quicksplit/utils/app_text_styles.dart';
import 'package:quicksplit/utils/app_themes.dart';

import '../widgets/choose_participants_expansion_tile.dart';

class ChooseParticipantsScreen extends StatelessWidget {
  const ChooseParticipantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Participants'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Create New Group',
                    style: AppTextStyles.heading3,
                  ),
                ),
                OutlinedButton(onPressed: () {}, child: Text('Create')),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  'Saved Groups',
                  style: AppTextStyles.heading3,
                )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.refresh,
                      color: AppThemes.primaryColor,
                    ))
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  ChooseParticipantsExpansionTile(
                    title: 'My Friends',
                    date: '1/12/2024',
                    participantNames: ['Hamza', 'Raees', 'Faseeh', 'Ahmed'],
                    voidCallback: () {},
                  ),
                  ChooseParticipantsExpansionTile(
                    title: 'My Friends',
                    date: '1/12/2024',
                    participantNames: ['Hamza', 'Raees', 'Faseeh', 'Ahmed'],
                    voidCallback: () {},
                  ),
                  ChooseParticipantsExpansionTile(
                    title: 'My Friends',
                    date: '1/12/2024',
                    participantNames: ['Hamza', 'Raees', 'Faseeh', 'Ahmed'],
                    voidCallback: () {},
                  ),
                  ChooseParticipantsExpansionTile(
                    title: 'My Friends',
                    date: '1/12/2024',
                    participantNames: ['Hamza', 'Raees', 'Faseeh', 'Ahmed'],
                    voidCallback: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:info_widget/info_widget.dart';
import 'package:provider/provider.dart';
import 'package:quicksplit/utils/app_text_styles.dart';
import 'package:quicksplit/utils/app_themes.dart';
import 'package:quicksplit/utils/router/static_app_routes.dart';
import 'package:quicksplit/views/widgets/choose_participants_expansion_tile.dart';

import '../../controllers/input_budget_screen_provider.dart';

class BudgetSplittingInputPage extends StatelessWidget {
  const BudgetSplittingInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<InputBudgetScreenProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Input Budget'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total Budget',
                                      style: AppTextStyles.heading3,
                                    ),
                                    Text(
                                      '(Including extras)',
                                      style: AppTextStyles.caption,
                                    ),
                                  ],
                                ),
                              ),
                              InfoWidget(
                                  infoText:
                                  '''This includes each and everything that has been spent including extras taxes tips and other stuff.''',
                                  iconData: CupertinoIcons.info,
                                  iconColor: AppThemes.primaryColor)
                            ],
                          ),
                          GestureDetector(
                            onTap: () =>
                                FocusScope.of(context).requestFocus(FocusNode()),
                            child: TextField(
                              controller: provider.controller,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              style: AppTextStyles.heading1,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(20),
                                filled: true,
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Choose Participants for the Split',
                                  style: AppTextStyles.heading3,
                                ),
                              ),
                              InfoWidget(
                                  infoText:
                                  '''You can choose people who are going to split this budget with you can either choose from an existing group or add people separately.''',
                                  iconData: CupertinoIcons.info,
                                  iconColor: AppThemes.primaryColor)
                            ],
                          ),
                          provider.selectedParticipants.length == 0
                              ? OutlinedButton(
                              onPressed: () {
                                context.pushNamed(
                                    StaticAppRoutes.chooseParticipantsScreen);
                              },
                              child: Text('Choose Participants'))
                              : SizedBox(),
                          provider.selectedParticipants.length == 0
                              ? SizedBox()
                              : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                child: ListView.builder(
                                    itemCount:
                                    provider.selectedParticipants.length,
                                    itemBuilder: (_, index) =>
                                        ParticipantExpansionNameTile(
                                            title:
                                            provider.selectedParticipants[
                                            index])),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: OutlinedButton(
                                        onPressed: () {
                                          context.pushNamed(StaticAppRoutes
                                              .chooseParticipantsScreen);
                                        },
                                        child: Text('Change List')),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total Budget',
                                      style: AppTextStyles.heading3,
                                    ),
                                    Text(
                                      '(Including extras)',
                                      style: AppTextStyles.caption,
                                    ),
                                  ],
                                ),
                              ),
                              InfoWidget(
                                  infoText:
                                  '''This includes each and everything that has been spent including extras taxes tips and other stuff.''',
                                  iconData: CupertinoIcons.info,
                                  iconColor: AppThemes.primaryColor)
                            ],
                          ),
                          GestureDetector(
                            onTap: () =>
                                FocusScope.of(context).requestFocus(FocusNode()),
                            child: TextField(
                              controller: provider.controller,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              style: AppTextStyles.heading1,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(20),
                                filled: true,
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Choose Participants for the Split',
                                  style: AppTextStyles.heading3,
                                ),
                              ),
                              InfoWidget(
                                  infoText:
                                  '''You can choose people who are going to split this budget with you can either choose from an existing group or add people separately.''',
                                  iconData: CupertinoIcons.info,
                                  iconColor: AppThemes.primaryColor)
                            ],
                          ),
                          provider.selectedParticipants.length == 0
                              ? OutlinedButton(
                              onPressed: () {
                                context.pushNamed(
                                    StaticAppRoutes.chooseParticipantsScreen);
                              },
                              child: Text('Choose Participants'))
                              : SizedBox(),
                          provider.selectedParticipants.length == 0
                              ? SizedBox()
                              : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                child: ListView.builder(
                                    itemCount:
                                    provider.selectedParticipants.length,
                                    itemBuilder: (_, index) =>
                                        ParticipantExpansionNameTile(
                                            title:
                                            provider.selectedParticipants[
                                            index])),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: OutlinedButton(
                                        onPressed: () {
                                          context.pushNamed(StaticAppRoutes
                                              .chooseParticipantsScreen);
                                        },
                                        child: Text('Change List')),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Continue',
                              style: AppTextStyles.heading2,
                            ),
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

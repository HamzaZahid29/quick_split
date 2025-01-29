import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:info_widget/info_widget.dart';
import 'package:quicksplit/utils/app_text_styles.dart';
import 'package:intl/intl.dart';
import 'package:quicksplit/utils/app_themes.dart';

class BudgetSplittingInputPage extends StatefulWidget {
  const BudgetSplittingInputPage({super.key});

  @override
  State<BudgetSplittingInputPage> createState() =>
      _BudgetSplittingInputPageState();
}

class _BudgetSplittingInputPageState extends State<BudgetSplittingInputPage> {
  final TextEditingController _controller = TextEditingController();
  final NumberFormat _formatter = NumberFormat('#,###');
  final int _maxValue = 1000000000;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_formatNumber);
  }

  void _formatNumber() {
    String text = _controller.text.replaceAll(',', ''); // Remove commas
    if (text.isEmpty) return;

    int value = int.tryParse(text) ?? 0;
    if (value > _maxValue) {
      value = _maxValue;
    }

    String formattedText = _formatter.format(value);

    _controller.value = TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }

  @override
  void dispose() {
    _controller.removeListener(_formatNumber);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Budget'),
      ),
      body: SingleChildScrollView(
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
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: TextField(
                  controller: _controller,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  style: AppTextStyles.heading1,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      filled: true,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none),
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
              OutlinedButton(onPressed: (){}, child: Text('Choose Participants'))
            ],
          ),
        ),
      ),
    );
  }
}

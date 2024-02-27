import 'package:flutter/material.dart';

class MissionButtonContent extends StatelessWidget {
  final int missionCount;
  final Function onCompleteMission;

  const MissionButtonContent({
    Key? key,
    required this.missionCount,
    required this.onCompleteMission,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '(Please complete 100 mission to get a certificate)Current Mission = ${missionCount + 1}',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            if (missionCount < 99) {
              onCompleteMission();
            } else {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Congratulations!'),
                    content: Text(
                        'You have completed 100 missions.\nA certificate has been sent to your email.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            }
          },
          child: Text('Complete Mission ${missionCount + 1}'),
        ),
      ],
    );
  }
}

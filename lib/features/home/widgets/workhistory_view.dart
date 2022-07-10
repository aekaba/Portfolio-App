import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constants.dart';
import 'package:portfolio/core/widgets/mydivider.dart';
import 'package:portfolio/features/home/model/workhistory_model.dart';

class WorkHistoryView extends StatelessWidget {
  const WorkHistoryView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .85,
      height: MediaQuery.of(context).size.height * .2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Work History",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: MyColor.myWhite, height: 1.2),
          ),
          const MyDivider(),
          Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: workHistory.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    color: MyColor.mediumSoft,
                    child: ListTile(
                      title: Text(
                        workHistory[index].companyName,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: MyColor.myWhite),
                      ),
                      subtitle: Text(
                        workHistory[index].workPosition,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: MyColor.soft),
                      ),
                      trailing: Text(
                        workHistory[index].workTime,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: MyColor.soft),
                      ),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}

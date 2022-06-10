import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constants.dart';
import 'package:portfolio/core/widgets/mydivider.dart';
import 'package:portfolio/features/home/model/education_model.dart';

class EducationView extends StatelessWidget {
  const EducationView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .85,
      height: MediaQuery.of(context).size.height * .25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Education",
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
              itemCount: eduHistory.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    color: MyColor.mediumSoft,
                    child: ListTile(
                      title: Text(
                        eduHistory[index].eduName,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: MyColor.myWhite),
                      ),
                      subtitle: Text(
                        eduHistory[index].eduDepartment,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: MyColor.soft),
                      ),
                      trailing: Text(
                        eduHistory[index].eduYear,
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

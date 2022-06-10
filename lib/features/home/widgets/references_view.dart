import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constants.dart';
import 'package:portfolio/core/widgets/mydivider.dart';
import 'package:portfolio/features/home/model/references_model.dart';

class MyReferencesView extends StatelessWidget {
  const MyReferencesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .85,
      height: MediaQuery.of(context).size.height * .15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "References",
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
              itemCount: myReferences.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    color: MyColor.mediumSoft,
                    child: ListTile(
                      title: Text(
                        myReferences[index].referenceName,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: MyColor.myWhite),
                      ),
                      subtitle: Text(
                        myReferences[index].referenceCompany,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: MyColor.soft),
                      ),
                      trailing: Text(
                        myReferences[index].referencePosition,
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

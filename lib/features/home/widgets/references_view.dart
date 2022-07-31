import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/constants.dart';
import 'package:portfolio/core/widgets/mydivider.dart';
import 'package:portfolio/features/home/model/references_model.dart';
import 'package:url_launcher/url_launcher.dart';

class MyReferencesView extends StatelessWidget {
  const MyReferencesView({
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
                return InkWell(
                  onTap: (() =>
                      showRefernceSheet(myReferences[index], context)),
                  child: Card(
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
                      )),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

showRefernceSheet(References myReferenc, BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * .45,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(2, 0.5),
            colors: [MyColor.mediumDark, MyColor.mediumSoft],
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(MyPadding.venti),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                myReferenc.referenceName,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: MyColor.myWhite),
              ),
              Text(
                myReferenc.referenceCompany +
                    " " +
                    myReferenc.referencePosition,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: MyColor.soft),
              ),
              const SizedBox(
                height: MyPadding.venti,
              ),
              InkWell(
                onTap: () =>
                    launchUrl(Uri.parse("mailto:${myReferenc.referenceMail}")),
                child: Card(
                  color: MyColor.mediumSoft,
                  child: ListTile(
                    leading: const Icon(
                      Icons.mail,
                      color: MyColor.soft,
                    ),
                    title: Text(
                      myReferenc.referenceMail,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: MyColor.myWhite),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: MyPadding.tall,
              ),
              InkWell(
                onTap: () => launchUrl(
                    Uri.parse("tel:${myReferenc.referenceTelephone}")),
                child: Card(
                  color: MyColor.mediumSoft,
                  child: ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: MyColor.soft,
                    ),
                    title: Text(
                      myReferenc.referenceTelephone,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: MyColor.myWhite),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

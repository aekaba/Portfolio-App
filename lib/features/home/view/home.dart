import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/core/constants/constants.dart';
import 'package:portfolio/features/home/widgets/education_view.dart';
import 'package:portfolio/features/home/widgets/references_view.dart';
import 'package:portfolio/features/home/widgets/socialbutton_view.dart';
import 'package:portfolio/features/home/widgets/workhistory_view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: MyColor.dark,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: MyPadding.venti * 2,
              left: MyPadding.grande,
              right: MyPadding.grande),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(128),
                child: Image.asset(
                  "assets/images/ProfilePhoto.png",
                  width: MediaQuery.of(context).size.width * .5,
                  filterQuality: FilterQuality.high,
                ),
              ),
              const SizedBox(
                height: MyPadding.grande,
              ),
              Text(
                "Ata Emir Kaba",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: MyColor.myWhite),
              ),
              Text(
                "Software Developer",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: MyColor.myWhite),
              ),
              const SizedBox(
                height: MyPadding.venti * .75,
              ),
              Text(
                "I became interested in software at the age of 15 thanks to my high school education. I graduated as a database programmer by learning C# and SQL languages ​​at there. Now I continue by studying software engineering at Beykent University. I'm working on developing mobile apps with Flutter.",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: MyColor.myWhite, height: 1.2),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MyPadding.venti,
              ),
              const EducationView(),
              const SizedBox(
                height: MyPadding.grande,
              ),
              const WorkHistoryView(),
              const SizedBox(
                height: MyPadding.grande,
              ),
              const MyReferencesView(),
              const SizedBox(
                height: MyPadding.venti,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialButtons(
                      iconAsset: 'GitHub',
                      isMail: false,
                      url: "https://github.com/aekaba"),
                  SocialButtons(
                    iconAsset: 'Instagram',
                    isMail: false,
                    url: "https://www.instagram.com/ataemirkaba/",
                  ),
                  SocialButtons(
                    iconAsset: 'Linkedin',
                    isMail: false,
                    url: "https://www.linkedin.com/in/ataemirkaba/",
                  ),
                ],
              ),
              const SizedBox(
                height: MyPadding.venti,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

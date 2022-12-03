import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/default_button.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/constants.dart';

import 'components/social_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0XFFE8F0F9),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/portfolio4.jpg'))),
      child: Column(
        children: [
          const ServiceTitle(
              title: "Contact Me",
              subtitle: "For Project inquiry and information",
              color: Color(0XFF07E24A)),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: KDefaultPadding * 2),
      padding: const EdgeInsets.all(KDefaultPadding * 3),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                color: Color(0XFFD9FFFC),
                iconSrc: 'assets/logo/skype.png',
                name: 'Gauss andro',
                press: () {},
              ),
              SocialCard(
                color: Color(0XFFE4FFC7),
                iconSrc: 'assets/logo/whatsapp.png',
                name: 'Gauss andro',
                press: () {},
              ),
              SocialCard(
                color: Color(0XFFE8F0F9),
                iconSrc: 'assets/logo/messenger.png',
                name: 'Gauss andro',
                press: () {},
              ),
            ],
          ),
          SizedBox(
            height: KDefaultPadding * 2,
          ),
          ContactForm()
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: KDefaultPadding * 2.5,
        runSpacing: KDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Project Type",
                hintText: "Select Project Type",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Project Budget",
                hintText: "Select Project Budget",
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Description",
                hintText: "Write some description",
              ),
            ),
          ),
          SizedBox(
            height: KDefaultPadding * 2,
          ),
          Center(
            child: FittedBox(
              child: DefaultButton(
                  imageSrc: "assets/logo/comment.png",
                  text: "Contact Me!",
                  press: () {}),
            ),
          )
        ],
      ),
    );
  }
}

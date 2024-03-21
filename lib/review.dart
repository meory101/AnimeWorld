import 'package:flutter/material.dart';
import 'package:goaltracker/rec_button.dart';
import 'package:goaltracker/text_form.dart';
import 'package:goaltracker/theme/fonts.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 14),
        child: RecButton(
          width: double.infinity,
          height: 55,
          onTap: () {},
          buttontext: 'Add review',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 25,
                          ),
                        ),
                        Text(
                          'Review',
                          style: AppFonts.mainfont,
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/4.png'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Title',
                  style: AppFonts.subfont,
                ),
                const SizedBox(
                  height: 7,
                ),
                const TextForm(
                  keytype: TextInputType.text,
                  maxlines: 2,
                  hint: 'title',
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Description',
                  style: AppFonts.subfont,
                ),
                const SizedBox(
                  height: 7,
                ),
                const TextForm(
                  keytype: TextInputType.text,
                  maxlines: 4,
                  hint: 'Write your review here',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

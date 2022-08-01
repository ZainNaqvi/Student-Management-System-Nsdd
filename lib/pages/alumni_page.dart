import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/university.dart';
import '../providers/dummy_data.dart';
import '../utils/constants.dart';
import '../utils/file_path.dart';

class AlumniPage extends StatefulWidget {
  const AlumniPage({Key? key}) : super(key: key);

  @override
  State<AlumniPage> createState() => _AlumniPageState();
}

class _AlumniPageState extends State<AlumniPage> {
  final _globalKeyAlumniForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              FilePath.topRightCornerBg(context),
              height: 152.h,
              width: 222.w,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: kPagePadding,
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: _globalKeyAlumniForm,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kPageItemSpacing6,
                        Text(
                          'Alumni Portal',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        kPageItemSpacing2,
                        DropdownButtonFormField<University>(
                          items: universityDropdownItems,
                          onChanged: (University? value) {},
                          // value: selectedGender,
                          validator: (value) =>
                              value == null ? 'Choose Employment Status' : null,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.location_city),
                            hintText: 'Choose Employment Status',
                          ),
                        ),
                        kPageItemSpacing2,
                        DropdownButtonFormField<University>(
                          items: universityDropdownItems,
                          onChanged: (University? value) {},
                          // value: selectedGender,
                          validator: (value) =>
                              value == null ? 'Choose Employment Type' : null,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.location_city),
                            hintText: 'Choose Employment Type',
                          ),
                        ),
                        kPageItemSpacing2,
                        TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Your Designation',
                          ),
                        ),
                        kPageItemSpacing2,
                        DropdownButtonFormField<University>(
                          items: universityDropdownItems,
                          onChanged: (University? value) {},
                          // value: selectedGender,
                          validator: (value) => value == null
                              ? 'Choose District Where Employed'
                              : null,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.location_city),
                            hintText: 'Choose District Where Employed',
                          ),
                        ),
                        kPageItemSpacing2,
                        CheckboxListTile(
                          value: false,
                          onChanged: (bool? checked) {},
                          title: const Text(
                            'Employment Relavant To Course',
                          ),
                          secondary: const Icon(Icons.wheelchair_pickup),
                          tileColor: Theme.of(context).colorScheme.background,
                          shape: kOutlineInputBorderShape,
                          activeColor: Theme.of(context).colorScheme.primary,
                        ),
                        kPageItemSpacing2,
                        TextFormField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Your Monthly Income',
                          ),
                        ),
                        kPageItemSpacing2,
                        CheckboxListTile(
                          value: false,
                          onChanged: (bool? checked) {},
                          title: const Text(
                            'Contribution to Household',
                          ),
                          secondary: const Icon(Icons.wheelchair_pickup),
                          tileColor: Theme.of(context).colorScheme.background,
                          shape: kOutlineInputBorderShape,
                          activeColor: Theme.of(context).colorScheme.primary,
                        ),
                        kPageItemSpacing4,
                        Text(
                          'Employer Detail',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        kPageItemSpacing4,
                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Enter name',
                            suffixIcon: Icon(Icons.visibility),
                          ),
                        ),
                        kPageItemSpacing2,
                        TextFormField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            hintText: 'Enter contact no',
                          ),
                        ),
                        kPageItemSpacing2,
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            hintText: 'Enter email address',
                          ),
                        ),
                        kPageItemSpacing2,
                        DropdownButtonFormField<University>(
                          items: universityDropdownItems,
                          onChanged: (University? value) {},
                          // value: selectedGender,
                          validator: (value) => value == null
                              ? 'Choose Employer Satisfaction'
                              : null,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.location_city),
                            hintText: 'Choose Employer Satisfaction',
                          ),
                        ),
                        kPageItemSpacing4,
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Save',
                              style: Theme.of(context).textTheme.button,
                            ),
                          ),
                        ),
                        kPageItemSpacing2,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

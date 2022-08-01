import 'package:flutter/material.dart';
import 'package:petology/view/widgets/auth_components/submit_button.dart';
import 'package:petology/view/widgets/footer.dart';
import 'package:petology/view/widgets/input_field.dart';
import 'package:petology/view/widgets/outlined_container.dart';
import 'package:petology/view/widgets/request_components/tow_form_fields.dart';

import '../../utilities/colors.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _phoneController = TextEditingController();
    final TextEditingController _descriptionController =
        TextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset(
                'assets/images/left-darkleg.png',
                height: 170.0,
                width: 170.0,
                color: AppColors.lightBrown,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 450.0,
                right: 275.0,
                child: Image.asset(
                  'assets/images/left-darkleg.png',
                  height: 220.0,
                  width: 220.0,
                  fit: BoxFit.cover,
                  color: AppColors.lightBrown.withOpacity(0.8),
                ),
              ),
              Positioned(
                bottom: 5.0,
                child: Image.asset(
                  'assets/images/left-darkleg.png',
                  height: 170.0,
                  width: 170.0,
                  color: AppColors.lightBrown.withOpacity(0.4),
                  fit: BoxFit.cover,
                ),
              ),
              OutlinedContanier(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/images/request-dog.png',
                        height: 150.0,
                        width: 150.0,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    InputField(
                      controller: _nameController,
                      hint: 'name',
                      textInputType: TextInputType.name,
                    ),
                    InputField(
                      hint: 'category',
                      textInputType: TextInputType.none,
                      widget: IconButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    TowInputFields(
                      hintFormInput1: 'year',
                      hintFormInput2: 'month',
                      onTapFormInput1: () {},
                      onTapFormInput2: () {},
                    ),
                    TowInputFields(
                      hintFormInput1: 'size',
                      hintFormInput2: 'Breed',
                      onTapFormInput1: () {},
                      onTapFormInput2: () {},
                    ),
                    TowInputFields(
                      hintFormInput1: 'Gender',
                      hintFormInput2: 'Breed',
                      onTapFormInput1: () {},
                      onTapFormInput2: () {},
                    ),
                    TowInputFields(
                      hintFormInput1: 'hear length',
                      hintFormInput2: 'care , behavior',
                      onTapFormInput1: () {},
                      onTapFormInput2: () {},
                    ),
                    TowInputFields(
                      hintFormInput1: 'house traind',
                      hintFormInput2: 'color',
                      onTapFormInput1: () {},
                      onTapFormInput2: () {},
                    ),
                    Text(
                      'select your current location',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppColors.black,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    InputField(
                      hint: 'Location',
                      textInputType: TextInputType.none,
                      widget: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.location_on),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                    InputField(
                      controller: _phoneController,
                      hint: 'phone number',
                      textInputType: TextInputType.phone,
                    ),
                    InputField(
                      controller: _descriptionController,
                      hint: 'Description',
                      textInputType: TextInputType.text,
                      height: 100.0,
                    ),
                    Text(
                      'Vaccinated (up to date)',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppColors.black,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: SubmitButton(
                        title: 'Send',
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Footer(),
        ],
      ),
    );
  }
}

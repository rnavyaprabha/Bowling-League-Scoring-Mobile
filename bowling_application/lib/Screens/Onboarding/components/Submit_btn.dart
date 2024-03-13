import 'package:flutter/material.dart';

class OnboardingForm extends StatefulWidget {
  const OnboardingForm({Key? key}) : super(key: key);

  @override
  _OnboardingFormState createState() => _OnboardingFormState();
}

class _OnboardingFormState extends State<OnboardingForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();
  TextEditingController experienceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Your text fields here
            
            ElevatedButton(
              onPressed: () {
                // Handle submit logic here
                // You can access the entered data using the controllers
                String name = nameController.text;
                String email = emailController.text;
                String phone = phoneController.text;
                String birthdate = birthdateController.text;
                String experience = experienceController.text;

                // Do something with the data (e.g., save to database)
                print('Name: $name');
                print('Email: $email');
                print('Phone: $phone');
                print('Birthdate: $birthdate');
                print('Experience: $experience');
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

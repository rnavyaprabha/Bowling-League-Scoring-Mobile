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

  String dropdownValue = 'Beginner'; // Default dropdown value

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
            // Form fields
            _buildTextField("Name", nameController),
            _buildTextField("Email", emailController),
            _buildTextField("Phone Number", phoneController),
            _buildTextField("Birthdate", birthdateController),
            
            // Dropdown for experience
            DropdownButtonFormField<String>(
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Beginner', 'Intermediate', 'Pro']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),

            SizedBox(height: 16.0),

            ElevatedButton(
              onPressed: () {
                // Implement logic to submit onboarding form data
                
                // Validate form fields
                if (_validate()) {
                  String name = nameController.text;
                  String email = emailController.text;
                  String phoneNumber = phoneController.text;
                  String birthdate = birthdateController.text;
                  String experience = dropdownValue;
                  
                  // Now you can use the collected data as needed
                  print("Name: $name");
                  print("Email: $email");
                  print("Phone Number: $phoneNumber");
                  print("Birthdate: $birthdate");
                  print("Experience at Game: $experience");
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (label == 'Name' && value != null) {
            if (value.isEmpty) {
              return 'Please enter your name';
            } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
              return 'Please enter a valid name';
            }
          } else if (label == 'Email' && value != null) {
            if (value.isEmpty) {
              return 'Please enter your email';
            } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
              return 'Please enter a valid email';
            }
          } else if (label == 'Phone Number' && value != null) {
            if (value.isEmpty) {
              return 'Please enter your phone number';
            } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
              return 'Please enter a valid phone number';
            }
          } else if (label == 'Birthdate' && value != null) {
            if (value.isEmpty) {
              return 'Please enter your birthdate';
            }
            // You can add additional validation for birthdate if needed
          }
          return null;
        },
      ),
    );
  }

  bool _validate() {
    // Validate all form fields
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        phoneController.text.isEmpty ||
        birthdateController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields')),
      );
      return false;
    }
    if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(nameController.text)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid name')),
      );
      return false;
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(emailController.text)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid email')),
      );
      return false;
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(phoneController.text)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid phone number')),
      );
      return false;
    }
    return true;
  }
}

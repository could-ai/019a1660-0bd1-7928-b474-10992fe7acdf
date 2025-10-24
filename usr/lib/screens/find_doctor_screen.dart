import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/specialist_card.dart';
import 'package:couldai_user_app/widgets/doctor_card.dart';

class FindDoctorScreen extends StatelessWidget {
  const FindDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find a Doctor'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Colors.black87,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello, User!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'How are you feeling today?',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for doctors, specialists...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Specialists',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  SpecialistCard(
                    specialty: 'Cardiology',
                    icon: Icons.favorite,
                    color: Colors.red,
                  ),
                  SpecialistCard(
                    specialty: 'Neurology',
                    icon: Icons.psychology,
                    color: Colors.purple,
                  ),
                  SpecialistCard(
                    specialty: 'Pediatrics',
                    icon: Icons.child_friendly,
                    color: Colors.orange,
                  ),
                  SpecialistCard(
                    specialty: 'Dermatology',
                    icon: Icons.healing,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Top Doctors',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const DoctorCard(
              name: 'Dr. John Doe',
              specialty: 'Cardiologist',
              rating: 4.9,
              imageIcon: Icons.person,
            ),
            const DoctorCard(
              name: 'Dr. Jane Smith',
              specialty: 'Neurologist',
              rating: 4.8,
              imageIcon: Icons.person_2,
            ),
            const DoctorCard(
              name: 'Dr. Emily Jones',
              specialty: 'Pediatrician',
              rating: 4.9,
              imageIcon: Icons.person_3,
            ),
          ],
        ),
      ),
    );
  }
}

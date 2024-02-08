import 'package:flutter/material.dart';

class OurService extends StatefulWidget {
  const OurService({super.key});

  // const OurService({super.key});

  @override
  State<OurService> createState() => _OurServiceState();
}

class _OurServiceState extends State<OurService> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Our Services',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.calendar_today,
                          size: 28, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text('Appointment')
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: Image.asset(
                        'assets/images/IconServices/doctor.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text('Our Doctors')
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: Image.asset(
                        'assets/images/IconServices/treatments.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text('Treatments')
              ],
            ),
          ],
        ),
      ],
    );
  }
}

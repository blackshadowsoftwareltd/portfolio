import 'package:flutter/material.dart';

class CalenderWindow extends StatelessWidget {
  CalenderWindow({super.key});

  final List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 5 / 5.5,
          crossAxisCount: 4, // 3 months per row
          crossAxisSpacing: 50,
          mainAxisSpacing: 10,
        ),
        itemCount: months.length,
        itemBuilder: (context, index) {
          return MonthWidget(month: months[index], monthIndex: index);
        },
      ),
    );
  }
}

class MonthWidget extends StatelessWidget {
  final String month;
  final int monthIndex;

  const MonthWidget({required this.month, required this.monthIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          month,
          style: const TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        // Day labels
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: ["S", "M", "T", "W", "T", "F", "S"]
                .map((day) => Text(
                      day,
                      style: const TextStyle(color: Colors.grey),
                    ))
                .toList(),
          ),
        ),
        const SizedBox(height: 5),
        // Days grid
        Flexible(
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(), // Disable scrolling inside
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7, // 7 days a week
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemCount: getDaysInMonth(monthIndex + 1), // Getting days in the month
            itemBuilder: (context, index) {
              final isToday = monthIndex == 9 && index + 1 == 16; // October 16th
              return Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isToday ? Colors.red : Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: isToday ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }

  // Function to get number of days in a month
  int getDaysInMonth(int month) {
    List<int> daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    return daysInMonth[month - 1];
  }
}

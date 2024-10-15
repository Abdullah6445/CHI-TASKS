import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Search in List',
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  List<String> names = [
    'My name is Abdullah',
    'My name is Ahmed',
    'My name is Fatima',
    'My name is Ayesha',
    'My name is Hassan',
    'My name is Zainab',
    'My name is Ali',
    'My name is Umar',
    'Abdullah is my name',
    'My name is Maryam',
    'My name is Usman',
    'My name is Sara',
    'My name is Ibrahim'
  ];

  List<String> searchedNames = [];

  @override
  void initState() {
    super.initState();
    searchedNames = names; // Display all names initially
  }

  searchFunction(String value) {
    setState(() {
      searchedNames = names
          .where(
              (element) => element.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search in List"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: searchController,
              onFieldSubmitted: (value) => searchFunction(value),
              decoration: InputDecoration(
                hintText: "Search text",
                suffixIcon: IconButton(
                  onPressed: () =>
                      searchFunction(searchController.text), // Corrected
                  icon: const Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
          searchedNames.isEmpty
              ? Text("no data found")
              : Expanded(
                  child: ListView.builder(
                    itemCount: searchedNames.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(searchedNames[index]),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Search in List',
//       home: SearchScreen(),
//     );
//   }
// }

// class SearchScreen extends StatefulWidget {
//   const SearchScreen({super.key});

//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }

// class _SearchScreenState extends State<SearchScreen> {
//   TextEditingController searchController = TextEditingController();
//   List<String> names = [
//     'My name is Abdullah',
//     'My name is Ahmed',
//     'My name is Fatima',
//     'My name is Ayesha',
//     'My name is Hassan',
//     'My name is Zainab',
//     'My name is Ali',
//     'My name is Umar',
//     'My name is Maryam',
//     'My name is Usman',
//     'My name is Sara',
//     'My name is Ibrahim'
//   ];

//   List<String> searchedNames = [];

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     searchedNames = names;
//   }

//   searchFunction(String value) {
//     searchedNames = names.where(
//       (element) {
//         return element.toLowerCase().contains(value.toLowerCase());
//       },
//     ).toList();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("searching"),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               controller: searchController,
//               onFieldSubmitted: (newValue) =>
//                   searchFunction(searchController.text),
//               decoration: InputDecoration(
//                   hintText: "search text",
//                   suffix: IconButton(
//                       onPressed: searchFunction(searchController.text),
//                       icon: Icon(
//                         Icons.search,
//                         color: Colors.red,
//                       ))),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: searchedNames.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(searchedNames[index]),
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// // class SearchList extends StatefulWidget {
// //   const SearchList({super.key});

// //   @override
// //   _SearchListState createState() => _SearchListState();
// // }

// // class _SearchListState extends State<SearchList> {
// //   final List<String> items = [
// //     'i am aApple',
// //     'Banana',
// //     'Orange',
// //     'Mango',
// //     'Watermelon',
// //     'Pineapple',
// //     'Strawberry',
// //     'Blueberry',
// //     'Raspberry'
// //   ];

// //   List<String> filteredItems = [];
// //   String searchTerm = '';

// //   @override
// //   void initState() {
// //     super.initState();
// //     filteredItems = items; // Initialize with all items
// //   }

// //   void searchItems() {
// //     setState(() {
// //       if (searchTerm.isEmpty) {
// //         filteredItems = items; // If search term is empty, show all items
// //       } else {
// //         filteredItems = items
// //             .where(
// //                 (item) => item.toLowerCase().contains(searchTerm.toLowerCase()))
// //             .toList(); // Filter items containing search term
// //       }
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Search List'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           children: [
// //             // Search field
// //             TextField(
// //               onChanged: (value) {
// //                 setState(() {
// //                   searchTerm = value;
// //                 });
// //               },
// //               decoration: InputDecoration(
// //                 labelText: 'Search',
// //                 suffixIcon: IconButton(
// //                   icon: Icon(Icons.search),
// //                   onPressed: searchItems,
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 20),
// //             // Display filtered items
// //             Expanded(
// //               child: ListView.builder(
// //                 itemCount: filteredItems.length,
// //                 itemBuilder: (context, index) {
// //                   final String item = filteredItems[index];
// //                   return buildHighlightedText(item, searchTerm);
// //                 },
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   // Highlight the search term in the list item
// //   Widget buildHighlightedText(String text, String searchTerm) {
// //     if (searchTerm.isEmpty) {
// //       return ListTile(
// //         title: Text(text),
// //       );
// //     } else {
// //       List<TextSpan> spans = [];
// //       int start = 0;
// //       String lowerText = text.toLowerCase();
// //       String lowerSearchTerm = searchTerm.toLowerCase();

// //       while (start < text.length) {
// //         int index = lowerText.indexOf(lowerSearchTerm, start);
// //         if (index == -1) {
// //           spans.add(TextSpan(text: text.substring(start)));
// //           break;
// //         }
// //         if (index > start) {
// //           spans.add(TextSpan(text: text.substring(start, index)));
// //         }
// //         spans.add(TextSpan(
// //             text: text.substring(index, index + searchTerm.length),
// //             style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)));
// //         start = index + searchTerm.length;
// //       }

// //       return ListTile(
// //         title: RichText(
// //           text: TextSpan(
// //             style: TextStyle(color: Colors.black),
// //             children: spans,
// //           ),
// //         ),
// //       );
// //     }
// //   }
// // }

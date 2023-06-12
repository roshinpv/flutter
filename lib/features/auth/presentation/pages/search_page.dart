import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/item_widget.dart';

class SearchScreen extends StatefulWidget {
  static const String id = "search_page";
  
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = TextEditingController();
  final List<String> names = <String>['Aby', 'Aish', 'Ayan', 'Ben', 'Bob', 'Charlie', 'Cook', 'Carline'];
  final List<int> msgCount = <int>[2, 0, 10, 6, 52, 4, 0, 2];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              TextField(
                controller: searchController,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 45,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFFFF1F3),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5)),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    hintText: "My Requests"),
                obscureText: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

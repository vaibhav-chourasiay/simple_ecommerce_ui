// ignore: file_names
import 'package:flutter/material.dart';

Container searchBar() => Container(
      width: 270.0,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.black26,
            width: 2.0,
          )),
      child: const Padding(
        padding: EdgeInsets.only(left: 15.0, bottom: 8.0),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Enter the product : 'books'",
          ),
        ),
      ),
    );

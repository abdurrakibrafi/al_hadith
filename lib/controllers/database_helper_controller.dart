import 'dart:io';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelperController extends GetxController {
  static Database? _db;
  var isLoading = true.obs;
  var sectionTitles = <Map<String, dynamic>>[].obs;
  var hadithList = <Map<String, dynamic>>[].obs;
  var chapter = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchSectionTitle();
    fetchHadith();
    fetchChapter();
  }

  Future<void> fetchSectionTitle() async {
    try {
      isLoading(true);
      Database? db = await database;
      List<Map<String, dynamic>> results =
          await db!.query('section', columns: ['title', 'preface', 'number']);
      sectionTitles.assignAll(results);
    } finally {
      isLoading(false);
    }
  }

  Future<void> fetchChapter() async {
    try {
      isLoading(true);
      Database? db = await database;
      List<Map<String, dynamic>> results =
          await db!.query('chapter', columns: ['title']);
      chapter.assignAll(results);
    } finally {
      isLoading(false);
    }
  }

  Future<void> fetchHadith() async {
    try {
      isLoading(true);
      Database? db = await database;
      List<Map<String, dynamic>> resultsOfHadith =
          await db!.query('hadith', columns: ['narrator', 'ar', 'bn']);
      hadithList.assignAll(resultsOfHadith);
    } finally {
      isLoading(false);
    }
  }

  Future<Database?> get database async {
    if (_db != null) return _db;

    _db = await _initDatabase();
    return _db;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'hadith_db.db');

    ByteData data = await rootBundle.load('assets/database/hadith_db.db');
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(path).writeAsBytes(bytes);

    // Open the database
    return await openDatabase(path);
  }
}

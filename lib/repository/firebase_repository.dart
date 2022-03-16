//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shiny_object_affliction/repository/repository.dart';

class FirebaseRepository extends RepositoryInterface {
  @override
  Future<String> getAbout() async {
    // TODO: implement getAbout
    // throw UnimplementedError();
    try {
      return await rootBundle.loadString('assets/docs/about.md');
    } catch (e) {
      return Future<String>.value('Error loading about.md');
    }
  }

  @override
  Future<void> getPost(String id) {
    // TODO: implement getPost
    throw UnimplementedError();
  }

  @override
  Future<void> getPosts() {
    // TODO: implement getPosts
    throw UnimplementedError();
  }

  @override
  Future<String> getWelcomeMessage() async {
    // TODO: implement getWelcomeMessage
    // throw UnimplementedError();
    try {
      return await rootBundle.loadString('assets/docs/welcome.md');
    } catch (e) {
      return Future<String>.value('Error loading welcome.md');
    }
  }
}

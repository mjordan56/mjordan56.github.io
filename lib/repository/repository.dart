//
// Copyright (c) 2022 Quiverware LLC
//
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class RepositoryInterface {
  Future<String> getAbout();

  Future<void> getPost(String id);

  Future<void> getPosts();

  Future<String> getWelcomeMessage();
}

//
// Copyright (c) 2022 Quiverware LLC
//

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shiny_object_affliction/repository/firebase_repository.dart';
import 'package:shiny_object_affliction/repository/repository.dart';

final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);

final repositoryProvider =
    Provider<RepositoryInterface>((ref) => FirebaseRepository());

final aboutProvider = FutureProvider<String>(((ref) {
  final repository = ref.read(repositoryProvider);
  return repository.getAbout();
}));

final welcomeMessageProvider = FutureProvider<String>(((ref) {
  final repository = ref.read(repositoryProvider);
  return repository.getWelcomeMessage();
}));

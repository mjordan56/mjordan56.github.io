//
// Copyright (c) 2022 Quiverware LLC
//
abstract class RepositoryInterface {
  Future<void> getAbout();

  Future<void> getPost(String id);

  Future<void> getPosts();
}

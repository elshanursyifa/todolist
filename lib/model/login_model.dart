class ModelLogin{
  String?     username;
  String?     password;

  ModelLogin({
    this.username,
    this.password
  });

  factory ModelLogin.fromJson(Map<String, dynamic> parsedJson) {
    return ModelLogin (
      username       : parsedJson['username']         ?? null,
      password       : parsedJson['password']         ?? null,
    );
  }
}

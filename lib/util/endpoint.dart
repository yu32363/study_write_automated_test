class Endpoint {
  static Uri listUsers() {
    return Uri.parse('https://jsonplaceholder.typicode.com/users');
  }

  static Uri listTodos() {
    return Uri.parse('https://jsonplaceholder.typicode.com/todos');
  }
}

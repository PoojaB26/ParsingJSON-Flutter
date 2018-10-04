# Parsing complex JSON in Flutter

Gives a detailed explanation of working with simple and complex JSON structures using dart:convert library in Flutter along with a sample project with 6+ examples to experiment with.

## Tutorial 

Read the Medium article [here](https://medium.com/flutter-community/parsing-complex-json-in-flutter-747c46655f51)

## Types of JSON structures
* Simple map
* Simple structure with arrays
* Simple nested structures
* Nested structure with Lists
* List of maps
* Complex nested structures
* Simple structure with Nested Maps [parsed using json_serializable library]
* Demo for Network Calls with examples for GET, POST methods along with FutureBuilder and .then() 


## How to work with Network Calls?
*Not covered in the article*

Let's take [this](https://jsonplaceholder.typicode.com/posts) API as an example. 

Take a look at [post_model.dart]() for the model class and utility methods. I produced it using this [converter tool](https://app.quicktype.io/)

#### GET allPosts

```dart
//services.dart
Future<List<Post>> getAllPosts() async {
  final response = await http.get(url);
  return allPostsFromJson(response.body);
}
```

```dart
// As a part of your UI widget, e.g body of Scaffold widget
FutureBuilder<Post>(
            future: getAllPosts(),
            builder: (context, snapshot) {
              if(snapshot.hasData)
                return Text('Title from Post JSON : ${snapshot.data[0].title}');
              else
                return CircularProgressIndicator();
            }
        )
```

#### GET POST{id}

```dart
//services.dart
Future<Post> getPost() async{
  final response = await http.get('$url/1');
  return postFromJson(response.body);
}
```

```dart
// As a part of your UI widget, e.g body of Scaffold widget
FutureBuilder<Post>(
            future: getPost(),
            builder: (context, snapshot) {
              if(snapshot.hasData)
                return Text('Title from Post JSON : ${snapshot.data.title}');
              else
                return CircularProgressIndicator();
            }
        )
```


import 'package:flutter/material.dart';

void main() {
  runApp(PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PhotoGalleryScreen(),
    );
  }
}

class PhotoGalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for photos',
                  border: OutlineInputBorder(),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showSnackBar(context, 'Clicked on photo 1!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 8.0),
                        Text('Photo 1'),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showSnackBar(context, 'Clicked on photo 2!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg?w=2000',
                          width: 100,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 8.0),
                        Text('Photo 2'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showSnackBar(context, 'Clicked on photo 3!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_1280.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 8.0),
                        Text('Photo 3'),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showSnackBar(context, 'Clicked on photo 4!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 8.0),
                        Text('Photo 4'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showSnackBar(context, 'Clicked on photo 5!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHHCESEcwOWQWG9FLDSOe50jLVDRpSkgbCyQ&usqp=CAU',
                          width: 100,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 8.0),
                        Text('Photo 5'),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showSnackBar(context, 'Clicked on photo 6!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBC1F66EwirdF6kpYfY7zb292dTYqeLjzLww&usqp=CAU',
                          width: 100,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 8.0),
                        Text('Photo 6'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Photo 1'),
                  subtitle: Text('Description for Photo 1'),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Photo 2'),
                  subtitle: Text('Description for Photo 2'),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Photo 3'),
                  subtitle: Text('Description for Photo 3'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSnackBar(context, 'Photos Uploaded Successfully!');
        },
        child: Icon(Icons.upload),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}

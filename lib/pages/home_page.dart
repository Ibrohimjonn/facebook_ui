import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text('facebook', style: TextStyle(color: Colors.blueAccent,
            fontSize: 28,
            fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.grey[300],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey[300],
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          // #Post Create
          Container(
            height: 120,
            color: Colors.black,
            padding: EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              children: [
                // #Avatar and #TextField
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/user_5.jpeg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 46,
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                                width: 1,
                                color: Colors.grey[500]
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // #Live #Photo #Location
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.video_call, color: Colors.red,),
                            SizedBox(width: 5,),
                            Text('Live'),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        width: 1,
                        color: Colors.grey[500],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.photo, color: Colors.green,),
                            SizedBox(width: 5,),
                            Text('Photo'),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        width: 1,
                        color: Colors.grey[500],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on, color: Colors.red,),
                            SizedBox(width: 5,),
                            Text('Check In'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // #Post Stories
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            margin: EdgeInsets.only(top: 10),
            height: 200,
            color: Colors.black,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                makeStory(
                    storyImage: 'assets/images/story_3.jpeg',
                    userImage: 'assets/images/user_5.jpeg',
                    userName: 'Linda'
                ),
                makeStory(
                    storyImage: 'assets/images/story_2.jpeg',
                    userImage: 'assets/images/user_4.jpeg',
                    userName: 'Amanda'
                ),
                makeStory(
                    storyImage: 'assets/images/story_5.jpeg',
                    userImage: 'assets/images/user_3.jpeg',
                    userName: 'John'
                ),
                makeStory(
                    storyImage: 'assets/images/story_4.jpeg',
                    userImage: 'assets/images/user_2.jpeg',
                    userName: 'David'
                ),
                makeStory(
                    storyImage: 'assets/images/story_1.jpeg',
                    userImage: 'assets/images/user_1.jpeg',
                    userName: 'Selena'
                ),
              ],
            ),
          ),

          // #Post Feed
          makeFeed(
            userName: 'User Two',
            userImage: 'assets/images/user_2.jpeg',
            feedTime: '2 week ago',
            feedText: 'All the Lorem Ipsum generators on the internet tend to repeat predefined.',
            feedImage: 'assets/images/story_4.jpeg',
          ),
          makeFeed(
            userName: 'User Two',
            userImage: 'assets/images/user_3.jpeg',
            feedTime: '24 minute ago',
            feedText: 'All the Lorem Ipsum generators on the internet tend to repeat predefined.',
            feedImage: 'assets/images/story_3.jpeg',
          ),
          makeFeed(
            userName: 'User Two',
            userImage: 'assets/images/user_4.jpeg',
            feedTime: '2 day ago',
            feedText: 'All the Lorem Ipsum generators on the internet tend to repeat predefined.',
            feedImage: 'assets/images/story_4.jpeg',
          ),
          makeFeed(
            userName: 'User Two',
            userImage: 'assets/images/user_5.jpeg',
            feedTime: '1 hours ago',
            feedText: 'All the Lorem Ipsum generators on the internet tend to repeat predefined.',
            feedImage: 'assets/images/story_5.jpeg',
          ),
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.1),
                ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(userName, style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        children: [
          // #Header
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        children: [
                          // #User Image
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(userImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                              children: [
                                Text(userName, style: TextStyle(
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),),
                                SizedBox(height: 3,),
                                Text(feedTime, style: TextStyle(fontSize: 15),)

                              ]
                          ),
                        ]
                    ),
                    IconButton(icon: Icon(
                      Icons.more_horiz, size: 30, color: Colors.grey[300],),
                        onPressed: () {}),
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText, style: TextStyle(fontSize: 15,
                    color: Colors.grey[300],
                    height: 1.5,
                    letterSpacing: .7),),
                SizedBox(height: 16,),
              ],
            ),
          ),
          // #Photo
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 240,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(feedImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 240,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(userImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // #Likes
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(offset: Offset(-5, 0),
                      child: makeLove(),
                    ),
                    SizedBox(width: 5,),
                    Text('2.5K',
                      style: TextStyle(color: Colors.grey[800], fontSize: 15),)
                  ],
                ),
                Text('400 Comment',style: TextStyle(fontSize: 13,color: Colors.grey[800]),)
              ],
            ),
          ),
          // #Like,Comment,Share
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive:true),
              makeCommentButtom(),
              makeShareButtom(),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up,size: 18,color: isActive? Colors.blue: Colors.grey,),
            SizedBox(width: 5,),
            Text('Like',style: TextStyle(color: isActive? Colors.blue: Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeCommentButtom() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat,size: 18,color: Colors.grey,),
            SizedBox(width: 5,),
            Text('Comment',style: TextStyle(color: Colors.grey),),
          ],
        ),
      ),
    );
  }

  Widget makeShareButtom() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share,size: 18,color: Colors.grey,),
            SizedBox(width: 5,),
            Text('Share',style: TextStyle(color: Colors.grey),),
          ],
        ),
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white,),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white,),
      ),
    );
  }
}

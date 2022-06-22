import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/models/core/recipe.dart';
import 'package:hungry/views/screens/full_screen_image.dart';
import 'package:hungry/views/utils/AppColor.dart';
import 'package:hungry/views/widgets/ingridient_tile.dart';
import 'package:hungry/views/widgets/step_tile.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class RecipeDetailPage extends StatefulWidget {
  final Recipe data;
  RecipeDetailPage({@required this.data});

  @override
  _RecipeDetailPageState createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage>
    with TickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;
  bool _isShown = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController(initialScrollOffset: 0.0);
    _scrollController.addListener(() {
      changeAppBarColor(_scrollController);
    });
  }

  Color appBarColor = Colors.transparent;
  final db = FirebaseFirestore.instance;
  String value;

  changeAppBarColor(ScrollController scrollController) {
    if (scrollController.position.hasPixels) {
      if (scrollController.position.pixels > 2.0) {
        setState(() {
          appBarColor = AppColor.primary;
        });
      }
      if (scrollController.position.pixels <= 2.0) {
        setState(() {
          appBarColor = Colors.transparent;
        });
      }
    } else {
      setState(() {
        appBarColor = Colors.transparent;
      });
    }
  }

  // fab to write review
  showFAB(TabController tabController) {
    int reviewTabIndex = 2;
    if (tabController.index == reviewTabIndex) {
      return true;
    }
    return false;
  }

  // void _delete(BuildContext context) {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext ctx) {
  //         return AlertDialog(
  //           title: const Text('Please Confirm'),
  //           content: const Text('Are you sure to remove the box?'),
  //           actions: [
  //             // The "Yes" button
  //             TextButton(
  //                 onPressed: () {
  //                   db.collection('reviews').doc(documentSnapshot.id).delete();
  //                   setState(() {
  //                     _isShown = false;
  //                   });

  //                   // Close the dialog
  //                   Navigator.of(context).pop();
  //                 },
  //                 child: const Text('Yes')),
  //             TextButton(
  //                 onPressed: () {
  //                   // Close the dialog
  //                   Navigator.of(context).pop();
  //                 },
  //                 child: const Text('No'))
  //           ],
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AnimatedContainer(
          color: appBarColor,
          duration: Duration(milliseconds: 200),
          child: AppBar(
            backgroundColor: Colors.transparent,
            brightness: Brightness.dark,
            elevation: 0,
            centerTitle: true,
            title: Text('Tìm kiếm công thức',
                style: TextStyle(
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 16)),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    db.collection('listfav').add({
                      'title': widget.data.title,
                      'photo': widget.data.photo,
                      'calories': widget.data.calories,
                      'time': widget.data.time,
                      'description': widget.data.description
                    });
                  },
                  icon: SvgPicture.asset('assets/icons/bookmark.svg',
                      color: Colors.white)),
            ],
          ),
        ),
      ),
      // Post Review FAB
      floatingActionButton: Visibility(
        visible: showFAB(_tabController),
        child: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return showReviewList(context, false, null);
                });
          },
          child: Icon(Icons.edit),
          backgroundColor: AppColor.primary,
        ),
      ),
      body: ListView(
        controller: _scrollController,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Recipe Image
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FullScreenImage(
                      image:
                          Image.asset(widget.data.photo, fit: BoxFit.cover))));
            },
            child: Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.data.photo), fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(gradient: AppColor.linearBlackTop),
                height: 280,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          // Section 2 - Recipe Info
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 20, bottom: 30, left: 16, right: 16),
            color: AppColor.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Recipe Calories and Time
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/fire-filled.svg',
                      color: Colors.white,
                      width: 16,
                      height: 16,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        widget.data.calories,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.alarm, size: 16, color: Colors.white),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        widget.data.time,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                // Recipe Title
                Container(
                  margin: EdgeInsets.only(bottom: 12, top: 16),
                  child: Text(
                    widget.data.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'inter'),
                  ),
                ),
                // Recipe Description
                Text(
                  widget.data.description,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 14,
                      height: 150 / 100),
                ),
              ],
            ),
          ),
          // Tabbar ( Ingridients, Tutorial, Reviews )
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            color: AppColor.secondary,
            child: TabBar(
              controller: _tabController,
              onTap: (index) {
                setState(() {
                  _tabController.index = index;
                });
              },
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black.withOpacity(0.6),
              labelStyle:
                  TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w500),
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Công thức',
                ),
                Tab(
                  text: 'Hướng dẫn',
                ),
                Tab(
                  text: 'Bình luận',
                ),
              ],
            ),
          ),
          // IndexedStack based on TabBar index
          IndexedStack(
            index: _tabController.index,
            children: [
              // Ingridients
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: widget.data.ingridients.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return IngridientTile(
                    data: widget.data.ingridients[index],
                  );
                },
              ),
              // Tutorials
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: widget.data.tutorial.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return StepTile(
                    data: widget.data.tutorial[index],
                  );
                },
              ),

              //Reviews
              // ListView.builder(
              //   shrinkWrap: true,
              //   padding: EdgeInsets.zero,
              //   itemCount: widget.data.reviews.length,
              //   physics: NeverScrollableScrollPhysics(),
              //   itemBuilder: (context, index) {
              //     return ReviewTile(data: widget.data.reviews[index]);
              //   },
              // )

              StreamBuilder(
                stream: db.collection('reviews').snapshots(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 10),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: snapshot.data?.docs?.length,
                    itemBuilder: (context, int index) {
                      DocumentSnapshot documentSnapshot =
                          snapshot.data.docs[index];
                      return ListTile(
                        title: Text(documentSnapshot['user']),
                        subtitle: Text(documentSnapshot['review']),
                        // onTap: () {
                        //   showDialog(
                        //       context: context,
                        //       builder: (BuildContext ctx) {
                        //         return AlertDialog(
                        //           title: const Text('Please Confirm'),
                        //           content: const Text(
                        //               'Are you sure to remove the box?'),
                        //           actions: [
                        //             // The "Yes" button
                        //             TextButton(
                        //                 onPressed: () {
                        //                   db
                        //                       .collection('reviews')
                        //                       .doc(documentSnapshot.id)
                        //                       .delete();
                        //                   setState(() {
                        //                     _isShown = false;
                        //                   });

                        //                   // Close the dialog
                        //                   Navigator.of(context).pop();
                        //                 },
                        //                 child: const Text('Yes')),
                        //             TextButton(
                        //                 onPressed: () {
                        //                   // Close the dialog
                        //                   Navigator.of(context).pop();
                        //                 },
                        //                 child: const Text('No'))
                        //           ],
                        //         );
                        //       });
                        // },
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.delete_outline,
                          ),
                          onPressed: () {
                            // Here We Will Add The Delete Feature
                            _isShown == true
                                ? showDialog(
                                    context: context,
                                    builder: (BuildContext ctx) {
                                      return AlertDialog(
                                        title: const Text('Vui lòng xác nhận'),
                                        content: const Text(
                                            'Bạn có chắc muốn xóa bình luận này?'),
                                        actions: [
                                          // The "Yes" button
                                          TextButton(
                                              onPressed: () {
                                                db
                                                    .collection('reviews')
                                                    .doc(documentSnapshot.id)
                                                    .delete();
                                                setState(() {
                                                  _isShown = false;
                                                });

                                                // Close the dialog
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('Có')),
                                          TextButton(
                                            onPressed: () {
                                              // Close the dialog
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Hủy'),
                                            style: TextButton.styleFrom(
                                                primary: Colors.grey,
                                                textStyle: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14)),
                                          ),
                                        ],
                                      );
                                    })
                                : _isShown = true;
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget showReviewList(
      BuildContext context, bool isUpdate, DocumentSnapshot documentSnapshot) {
    return AlertDialog(
      content: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        color: Colors.white,
        child: TextField(
          keyboardType: TextInputType.multiline,
          minLines: 6,
          decoration: InputDecoration(
            hintText: 'Viết cảm nghĩ ở đây...',
          ),
          onChanged: (String _val) {
            value = _val;
          },
          maxLines: null,
        ),
      ),
      actions: [
        Row(
          children: [
            Container(
              width: 120,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Hủy'),
                style: TextButton.styleFrom(
                  primary: Colors.grey[600],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
                    if (isUpdate) {
                      db
                          .collection('reviews')
                          .doc(documentSnapshot?.id)
                          .update({
                        'review': value,
                      });
                    } else {
                      db
                          .collection('reviews')
                          .add({'user': 'NamLe', 'review': value});
                    }
                    Navigator.pop(context);
                  },
                  child: Text('Bình luận'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColor.primary,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

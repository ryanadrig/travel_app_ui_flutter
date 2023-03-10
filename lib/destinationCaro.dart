import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_places_ui/destinationDetail.dart';

List<Map> destinationdata = [
  {
    "destinationName": "Paris",
    "activityCount": "5 Activites",
    "description":
        "Paris is a city unlike any other. It is overflowing with culture, history, and beauty. And while people travel to Paris to see the Louvre",
    "img_path": "assets/images/paris_travel.webp",
    "activities": [{"activity_name": "hiking",
      "activity_type":"outdoors", "activity_price": 20,
      "img_path":"assets/images/paris_travel.webp", "num_stars": 4, "times_list":["8:00", "9:00"] },
      {"activity_name": "hiking",
        "activity_type":"outdoors", "activity_price": 20,
        "img_path":"assets/images/paris_travel.webp", "num_stars": 4, "times_list":["8:00", "9:00"] },
      {"activity_name": "hiking",
        "activity_type":"outdoors", "activity_price": 20,
        "img_path":"assets/images/paris_travel.webp", "num_stars": 4, "times_list":["8:00", "9:00"] },
      {"activity_name": "hiking",
        "activity_type":"outdoors", "activity_price": 20,
        "img_path":"assets/images/paris_travel.webp", "num_stars": 4, "times_list":["8:00", "9:00"] },
      {"activity_name": "hiking",
        "activity_type":"outdoors", "activity_price": 20,
        "img_path":"assets/images/paris_travel.webp", "num_stars": 4, "times_list":["8:00", "9:00"] }]
  },
  {
    "destinationName": "New York",
    "activityCount": "4 Activites",
    "description":
        "Cool, cosmopolitan, crowded, constantly evolving … the Big Apple blends big city splendor with small-town charm. Amid New York's iconic landmarks and towering skyscrapers",
    "img_path": "assets/images/paris_travel.webp",
    "activities": [{"activity_name": "hiking",
      "activity_type":"outdoors", "activity_price": 20,
      "img_path":"assets/images/paris_travel.webp", "num_stars": 4, "times_list":["8:00", "9:00"] },
      {"activity_name": "hiking",
        "activity_type":"outdoors", "activity_price": 20,
        "img_path":"assets/images/paris_travel.webp", "num_stars": 4, "times_list":["8:00", "9:00"] },
      {"activity_name": "hiking",
        "activity_type":"outdoors", "activity_price": 20,
        "img_path":"assets/images/paris_travel.webp", "num_stars": 4, "times_list":["8:00", "9:00"] },
      {"activity_name": "hiking",
        "activity_type":"outdoors", "activity_price": 20,
        "img_path":"assets/images/paris_travel.webp", "num_stars": 4, "times_list":["8:00", "9:00"] }]
  },
  {
    "destinationName": "Tokyo",
    "activityCount": "2 Activites",
    "description":
        "Today, Tokyo offers a seemingly unlimited choice of shopping, entertainment, culture and dining to its visitors. The city's history can be",
    "img_path": "assets/images/paris_travel.webp",
    "activities": [{"activity_name": "hiking",
      "activity_type":"outdoors", "activity_price": 20,
      "img_path":"assets/images/paris_travel.webp", "num_stars": 4, "times_list":["8:00", "9:00"] },
      {"activity_name": "hiking",
        "activity_type":"outdoors", "activity_price": 20,
        "img_path":"assets/images/paris_travel.webp", "num_stars": 4, "times_list":["8:00", "9:00"] }]
  }
];

class DestinationCarousel extends StatefulWidget {
  const DestinationCarousel({Key? key}) : super(key: key);

  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  @override
  Widget build(BuildContext context) {
    var ss = MediaQuery.of(context).size;
    return Container(
        child: Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: ss.width * .04),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text("Top Destinations",
                  style: TextStyle(fontSize: ss.width * .05,
                      fontWeight: FontWeight.w600)),
              GestureDetector(
                onTap: () {
                  print("push see all");
                },
                child: Text("See All",
                    style: Theme.of(context)
                        .copyWith(
                            textTheme: TextTheme(
                                bodySmall: TextStyle(color: Colors.lightBlue)))
                        .textTheme
                        .bodySmall),
              )
            ])),
        SizedBox(
            height: ss.height * .43,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: destinationdata.length,
                itemBuilder: (BuildContext context, destinations_idx) {
                  return Padding(
                      padding: EdgeInsets.fromLTRB(
                          ss.width * .02, ss.width * .02, ss.width * .02, 0.0),
                      child: GestureDetector(
                        onTap: () {
                          print("get dest indx" + destinations_idx.toString());
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return DestinationDetail(
                                destinationdata[destinations_idx]);
                          }));
                        },
                        child: Container(
                            width: ss.width * .64,
                          decoration: BoxDecoration(
                            // color: Colors.black,
                              color:
                              Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: BorderRadius.circular(
                                  ss.height * .03)),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Positioned(
                                    bottom: ss.height * .01,
                                    child: Container(
                                        height: ss.width * .33,
                                        width: ss.width * .58,
                                        decoration: BoxDecoration(
                                            // color: Colors.black,
                                            color:
                                                Theme.of(context).canvasColor,
                                            borderRadius: BorderRadius.circular(
                                                ss.height * .03)),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        Container(
                                        // height: ss.height * (.53 - .48 -.02),
                                            padding: EdgeInsets.only(bottom:ss.width * .01, left: ss.width * .01,  right: ss.width * .01, top:ss.width * .12),
                                            child: Text(
                                              destinationdata[destinations_idx]
                                                  ["activityCount"],
                                            style: TextStyle(fontWeight: FontWeight.w700),
                                            )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom:ss.width * .01, left: ss.width * .02,  right: ss.width * .01),
                                                    child:
                                            SizedBox(
                                                height: ss.width * .12,
                                                width: ss.width * .44,
                                                child:
                                                    Text(
                                              destinationdata[destinations_idx]
                                                  ["description"],
                                              // overflow: TextOverflow.ellipsis,
                                              softWrap: true,
                                              style: TextStyle(fontSize: ss.width * .035,
                                                                fontWeight: FontWeight.w200) ,
                                            ))
                                            )
                                          ],
                                        ))),
                                Container(
                                  height: ss.width * .46,
                                  width: ss.width * .55,
                                  child: Stack(children: [
                                    Hero(
                                      tag: destinationdata[destinations_idx]
                                          ["destinationName"],
                                      child: Container(
                                          height: ss.width * .46,
                                          width: ss.width * .55,
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ss.width * .04),
                                              child: Image.asset(
                                                  destinationdata[
                                                          destinations_idx]
                                                      ["img_path"],
                                                  height: ss.width * .33,
                                                  width: ss.width * .55,
                                                  fit: BoxFit.fill))),
                                    ),
                                    Container(
                                        height: ss.height * .25,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                                destinationdata[
                                                        destinations_idx]
                                                    ["destinationName"],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: ss.width * .06))
                                          ],
                                        ))
                                  ]),
                                )
                              ],
                            )),
                      ));
                }))
      ],
    ));
  }
}

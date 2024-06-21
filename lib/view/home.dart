import 'package:flutter/material.dart';
import 'package:news_snack/controller/fetchNews.dart';
import 'package:news_snack/view/widgets/NewsContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    FetchNews.fetchNews();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : PageView.builder(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
          itemCount: 10 ,
          itemBuilder: (context,index){
return NewsContainer(imgUrl: "https://images.unsplash.com/photo-1508921340878-ba53e1f016ec?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", newsHead: "Gaming Era", newsDes: "At GDC 2024,  Glaire Anderson, historian, games consultant, and founder of the Digital Lab for Islamic Visual Culture & Collections, hosted a panel examining the current state of representation of Middle Eastern and North African (MENA) cultures in gaming. Highlighting her work as a history consultant on Assassin's Creed Mirage and its recreation of ancient Baghdad, she explained how much has changed in recent years with current Diversity, Equity, and Inclusion (DEI) initiatives from gaming companies.", newsUrl: "https://www.gamedeveloper.com/design/assassin-s-creed-mirage-s-consulting-historian-explains-why-authenticity-is-so-crucial-for-games");
      }),
    );
  }
}

part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
//// HEADER
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "FoodMarket",
                        style: blackFontStyle,
                      ),
                      Text(
                        "Let's get some foods",
                        style: greyFontStyle.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://2.bp.blogspot.com/-2TQetb34eT4/XDRmUaoE9sI/AAAAAAAABlE/WkfOuJOJF68W_vDhypibC5Sw_12CRtN9wCLcBGAs/s1600/Jennie-BLACKPINK-Berhasil-Raih-Trofi-Pertama-Untuk-Lagu-SOLO-di-Hari-Debut-Solo-Stage-2.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
//// LIST OF FOOD
            Container(
              height: 258,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: mockFoods
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                  right: defaultMargin,
                                  left: (e == mockFoods.first)
                                      ? defaultMargin
                                      : 0),
                              child: FoodCard(e),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
//// LIST OF FOOD (TABS)
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: [
                      "New Taste",
                      "Popular",
                      "Rcommended",
                    ],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Builder(builder: (_) {
                    String body = (selectedIndex == 0)
                        ? "New Taste Body"
                        : (selectedIndex == 1)
                            ? "Popular Body"
                            : "Recommended Body";

                    return Center(
                      child: Text(
                        body,
                        style: blackFontStyle2,
                      ),
                    );
                  }),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

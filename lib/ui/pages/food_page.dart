part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
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
                        "Food Market",
                        style: blackFontStyle,
                        // style: GoogleFonts.poppins(
                        //   color: Colors.black,
                        //   fontSize: 22,
                        //   fontWeight: FontWeight.w500,
                        // ),
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
            )
          ],
        )
      ],
    );
  }
}

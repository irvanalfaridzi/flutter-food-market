part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  final User user;

  ProfilePage({this.user});
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int initialTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: "FAFAFC".toColor(),
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultMargin,
                      ),
                      width: double.infinity,
                      height: 232,
                      color: Colors.white,
                      child: Column(
                        children: [
// Photos
                          Container(
                            width: 110,
                            height: 110,
                            margin: EdgeInsets.only(top: 26),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/photo_border.png",
                                ),
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://2.bp.blogspot.com/-2TQetb34eT4/XDRmUaoE9sI/AAAAAAAABlE/WkfOuJOJF68W_vDhypibC5Sw_12CRtN9wCLcBGAs/s1600/Jennie-BLACKPINK-Berhasil-Raih-Trofi-Pertama-Untuk-Lagu-SOLO-di-Hari-Debut-Solo-Stage-2.jpg",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          //// Nama
                          Text(
                            widget.user.name,
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            widget.user.email,
                            style: greyFontStyle,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: defaultMargin,
                      width: double.infinity,
                    ),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          CustomTabBar(
                            titles: [
                              "Account",
                              "FoodMarket",
                            ],
                            onTap: (index) {
                              setState(() {
                                initialTab = index;
                              });
                            },
                            selectedIndex: initialTab,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          (initialTab == 0)
                              ? Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: defaultMargin,
                                        left: defaultMargin,
                                        bottom: 16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Edit Profile",
                                            style: blackFontStyle3,
                                          ),
                                          Image.asset(
                                            "assets/right_arrow.png",
                                            width: 24,
                                            height: 24,
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: defaultMargin,
                                        left: defaultMargin,
                                        bottom: 16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Home Address",
                                            style: blackFontStyle3,
                                          ),
                                          Image.asset(
                                            "assets/right_arrow.png",
                                            width: 24,
                                            height: 24,
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: defaultMargin,
                                        left: defaultMargin,
                                        bottom: 16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Security",
                                            style: blackFontStyle3,
                                          ),
                                          Image.asset(
                                            "assets/right_arrow.png",
                                            width: 24,
                                            height: 24,
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: defaultMargin,
                                        left: defaultMargin,
                                        bottom: 16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Payments",
                                            style: blackFontStyle3,
                                          ),
                                          Image.asset(
                                            "assets/right_arrow.png",
                                            width: 24,
                                            height: 24,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: defaultMargin,
                                        left: defaultMargin,
                                        bottom: 16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Rate App",
                                            style: blackFontStyle3,
                                          ),
                                          Image.asset(
                                            "assets/right_arrow.png",
                                            width: 24,
                                            height: 24,
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: defaultMargin,
                                        left: defaultMargin,
                                        bottom: 16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Help Center",
                                            style: blackFontStyle3,
                                          ),
                                          Image.asset(
                                            "assets/right_arrow.png",
                                            width: 24,
                                            height: 24,
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: defaultMargin,
                                        left: defaultMargin,
                                        bottom: 16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Privacy & Policy",
                                            style: blackFontStyle3,
                                          ),
                                          Image.asset(
                                            "assets/right_arrow.png",
                                            width: 24,
                                            height: 24,
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: defaultMargin,
                                        left: defaultMargin,
                                        bottom: 16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Terms & Conditions",
                                            style: blackFontStyle3,
                                          ),
                                          Image.asset(
                                            "assets/right_arrow.png",
                                            width: 24,
                                            height: 24,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

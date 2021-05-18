part of 'pages.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  String dropdownValue = 'Surabaya';
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController houseNumController = TextEditingController();
    TextEditingController cityController = TextEditingController();

    return GeneralPage(
      title: "Address",
      subtitile: "Make sure it's valid",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
// Phone No
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              defaultMargin,
              26,
              defaultMargin,
              6,
            ),
            child: Text(
              "Phone No.",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyFontStyle,
                hintText: 'Type your phone number',
              ),
            ),
          ),
// Address
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              defaultMargin,
              16,
              defaultMargin,
              6,
            ),
            child: Text(
              "Address",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyFontStyle,
                hintText: 'Type your address',
              ),
            ),
          ),
// House No
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              defaultMargin,
              16,
              defaultMargin,
              6,
            ),
            child: Text(
              "House No.",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: houseNumController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyFontStyle,
                hintText: 'Type your house number',
              ),
            ),
          ),
// City
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              defaultMargin,
              16,
              defaultMargin,
              6,
            ),
            child: Text(
              "City",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: DropdownButton<String>(
              value: dropdownValue,
              isExpanded: true,
              underline: SizedBox(),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>['Surabaya', 'Jakarta', 'Bandung', 'Jogjakarta']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
// Button Sign In
          Container(
            width: double.infinity,
            height: 45,
            margin: EdgeInsets.only(top: 24),
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: RaisedButton(
              onPressed: () {},
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: mainColor,
              child: Text(
                "Sign Up Now",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:Medicare/themeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountListOpt extends StatefulWidget {
  @override
  _AccountListOptState createState() => _AccountListOptState();
}

class _AccountListOptState extends State<AccountListOpt> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(children: [
              SizedBox(height: defaultPadding),
              AccountInfo(),
              SizedBox(height: defaultPadding),
            ])));
  }
}

class AccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white10, //please search for grey ish I think dunno
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/images/user_2.png'),
              ),
              SizedBox(
                width: 15,
              ),
              Text('Lalisa Manoban',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ))
            ]),
            Row(
              children: [
                Text('Membership Gold',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                    )),
                Icon(Icons.navigate_next)
              ],
            )
          ]),
    );
  }
}

class ListDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          ListMenuAccount(),
          ListMenuAccount(),
          ListMenuAccount(),
          ListMenuAccount(),
          ListMenuAccount()
        ],
      ),
    );
  }
}

class ListMenuAccount extends StatelessWidget {
  const ListMenuAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(Radius.circular(defaultPadding)),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 20,
            width: 20,
            // child: Image.asset(''), for Account Photos
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Name',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTheme.Name,
                ),
                Text(
                  'Membership',
                  style: AppTheme.Title,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

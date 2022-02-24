import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:guess_number/InfoModel.dart';
import 'package:guess_number/comment.dart';
import 'package:guess_number/login_page.dart';
import 'package:guess_number/test_page.dart';
import 'comment.dart';
import 'game.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // callback method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 22.0,
            //fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      home: Test(),
    );
  }
}
class Test extends StatelessWidget {
  Test({Key? key}) : super(key: key);

  final List<InfoModel> InfoReportLIst = [
    InfoModel(username: 'mudeng', imgProfile: 'mudeng.jpg', imgPost: 'plaichawak.png' , detail: '💢เย็นวันนี้มีเมนูในใจรึยัง..? \n.\n.\nให้น้ำพริกปลาจวักเป็นส่วนหนึ่งในมื้ออาหารของคุณสิ ❤️‍🔥\nนอกจากจะมีความเเซ่บเเละกลมกล่อม ยังเป็นเมนูที่ชช่วยลดน้ำหนักให้คุณได้ด้วย 🥬🥦🥒🫑🌶\n',
        cm: [comment(username: 'bobo', text: 'หิวจังกั้บ ขอที่อยู่แม่ค้าหน่อย'),comment(username: 'asurakai', text: 'มีน้ำพริกอะไรบ้างคะ พอดีจะเอามาจิ้มกับตัวเอง เผื่อจะได้แซ่บขึ้น'),comment(username: 'mudeng', text: '@asurakai inbox มาเพิ่มความแซ่บได้เลยค่า😉')]),
    InfoModel(username: 'bobo', imgProfile: 'bo.jpg', imgPost: 'bo2.jpg' , detail: 'เบื่อการนั่งบนชักโครก อยากลองเข้าไปนั่งในใจเธอ',
        cm: [comment(username: 'mudeng', text: 'น่ารักจังเลยค่ะ ขอไลน์หน่อย'),comment(username: 'wanwan', text: 'นั่งบนกระทะในนรก'),comment(username: 'putyourhansup', text: '@wanwan ทำไมวั่นต้องว่าเพื่อนด้วยอะ แย่มาก!')] ),
     InfoModel(username: 'wanwan', imgProfile: 'wan.jpg', imgPost: 'carrot.jpg' , detail: 'นี่คือโมเม้นตอนวั่นไปขโมยแครอทสวนป้าข้างบ้านมากั้บ🥕',
         cm: [comment(username: 'bobo', text: 'จะแจ้งตำหนวดค่ะ!'),comment(username: 'mudeng', text: 'กินแครอทเปล่าเฉยๆจะแซ่บหรอคะ นี่เลยดีกว่าค่ะขอแนะนำ\n“น้ำพริก” อร่อยครบเครื่อง รสชาติครบรส กินคู่กับอะไรก็ลงตัว\n👉🏻 ซื้อครบ 3 กระปุก รับไปเลยถุงผ้าหูรูด \n🌶️ 1 กระปุก\nปริมาณ 100 กรัม\n>> ราคากระปุกละ 79.-\n>> 3 กระปุก 200.-\n🚛 จัดส่งฟรีเมื่อซื้อครบ 600.-')]),
     InfoModel(username: 'asurakai', imgProfile: 'kai.jpg', imgPost: 'kaichon.jpg' , detail: 'เบื่อเป็นไก่บ้าน อยากเป็นไก่ชน',
         cm: [comment(username: 'wanwan', text: 'อยากกินตีนไก่'),comment(username: 'mudeng', text: 'ออกกำลังบ่อยขนาดนี้คงเหนื่อยน่าดู แวะมาเติมพลังและความแซ่บกับน้ำพริกปลายจวักของเราสิคะ🔥 💢โปร 3ชิ้นเเถม ถุงผ้าหูรูดปลายจวัก ยังมีอยู่ สนใจ inbox ได้เลยค่า')]),
     InfoModel(username: 'putyourhandsup', imgProfile: 'fern.jpg', imgPost: 'muaythai.jpg' , detail: 'วันนี้ น้องหมีเฟินมาเรียนมวยไทยค่ะ 🥊\nว่าจะหัดไว้เตะอัดหน้าว่าน',
         cm: [comment(username: 'asurakai', text: 'ขอท่าหนุมานถวายแหวน'), comment(username: 'bobo', text: 'ขอท่าอัคคีสาดแสง /แกว่งไม้'),
           comment(username: 'wanwan', text: 'ใจเยนๆนะข่ะขุนพรี่😢'), comment(username: 'mudeng', text: 'จะรำมวยใส่หน้าเพื่อนทั้งทีจะให้มันธรรมดาไปได้ยังไง นี่ดีกว่าค่ะขอแนะนำตัวเพิ่มความแซ่บ ให้น้ำพริกปลาจวักเป็นส่วนหนึ่งในมื้ออาหารของคุณสิ ❤️‍🔥\nสนใจ inbox ได้เลยค่าา')]),
    InfoModel(username: 'moimoi', imgProfile: 'moi.jpg', imgPost: 'moimoi2.jpg' , detail: 'ในที่สุดวันนี้เลาก็ได้ทำการใหญ่ \nเลาได้ตัดสินใจซื้อไม้เบสบอลมา\nเผื่อเวลาวั่นกวนตีนเลาจะเอาไปฟาดหัววั่น😡',
        cm: [comment(username: 'putyourhandsup', text: 'ตัดสินใจถุกแร้วค่ะ น้องหมีเฟินก็พึ่งไปเรียนมวยเพื่อวั่นเลย'),comment(username: 'mudeng', text: 'จะมีแรงไปตีหัวเพื่อนได้ยังไงถ้าตัวเรายังไม่เฟิร์ม ใครที่กำลังมองหา เมนูลดน้ำหนักมื้อเย็นแบบง่ายๆ แคลอรี่ต่ำ กินเยอะพุงไม่ยื่น แต่ยังคงคอนเซ็ปความแซ่บไว้อยู่ 🥦 เราขอแนะนำ อาหารลดน้ำหนักชั้นดี น้ำพริกปลายจวัก กินกับผัดสด อร่อยได้ไม่มีเบื่อ สนใจ inbox ได้เลยค่า'),comment(username: 'bobo', text: '@mudeng แม่ค้าคนนี้เค้าขายเก่งจังค่า♥')]),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InyourHeart')),
      body: ListView.builder(
          itemCount: InfoReportLIst.length,
          itemBuilder: (context, index) =>
              MyCard(info: InfoReportLIst[index])),
    );
  }
}

class MyCard extends StatefulWidget {
  final InfoModel info;

   MyCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  String result='';
  bool addFavorite = false;
  final TextEditingController _textController = new TextEditingController();
  String str(){
    result='';
    for (var i = 0; i < widget.info.cm.length; i++) {
      result+=widget.info.cm[i].username+' '+widget.info.cm[i].text+'\n';
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),

      ),
      elevation: 5,
      margin: EdgeInsets.all(20),
      child:Expanded(
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: ExactAssetImage('assets/images/${widget.info.imgProfile}'),
                        )
                    )),
                ),
                Text(widget.info.username),
                Expanded(
                  child: Container(
                    width: 50,
                  ),
                ),
                IconButton(
                  iconSize: 25,
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),

          Row(
            children: [
              Expanded(
                 child: Image.asset('assets/images/${widget.info.imgPost}', width: 250.0, fit: BoxFit.fill,),
              ),
            ],
          ),

        Row(
              children: [
                Expanded(
                  child: Padding(

                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.info.detail),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(str(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: _textController,
                  textAlign: TextAlign.start,
                  decoration: new InputDecoration(
                    prefixIcon:IconButton(
                        icon: Icon(addFavorite ? Icons.favorite : Icons.favorite_border),
                        onPressed: () {
                          setState(() {
                            addFavorite = !addFavorite;
                          });
                        }),
                    hintText: "Add a comment..",
                  ),
                  onSubmitted: (String str){
                    setState((){
                      widget.info.addComment('flutter', str);
                      _textController.clear();
                    });
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}


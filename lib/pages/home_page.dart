import 'package:flutter/material.dart';
import 'package:practice_4/components/item_note.dart';
import 'package:practice_4/model/flowers.dart';

final List<Flowers> flowers = [
  Flowers(
    0,
    "Тюльпаны",
    "Тюльпа́н — род многолетних травянистых луковичных растений семейства Лилейные, в современных систематиках включающий более 80 видов. Центр происхождения и наибольшего разнообразия видов тюльпанов — горы северного Ирана, Памиро-Алай и Тянь-Шань.",
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.L-ZQ0V8yKQqOhi6RDA_tTQHaE7%26pid%3DApi&f=1&ipt=319c3a7b61f91869c8cc1b397e349b0e7880fc10cd325c1e5306dba721603044&ipo=images",
    '120 рублей за шт.',
    '2893702'
  ),
  Flowers(
      1,
      "Розы",
      "Ро́за — собирательное название видов и сортов представителей рода Шипо́вник, выращиваемых человеком и растущих в дикой природе. Бо́льшая часть сортов роз получена в результате длительной селекции путём многократных повторных скрещиваний и отбора. Некоторые сорта являются формами дикорастущих видов.",
      "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fdachnaya-zhizn.ru%2Fimages%2Fdacha%2Fgolovna-1.jpg&f=1&nofb=1&ipt=fa90346231b9774390d031819da8daba76a73bdae92892d0ce2d4c40b0fce955&ipo=images",
    '130 рублей за шт.',
    '1787351'
  ),
  Flowers(
      2,
      "Лилии",
      "Ли́лия — род растений семейства Лилейные. Многолетние травы, снабжённые луковицами, состоящими из мясистых низовых листьев, расположенных черепитчато, белого, розоватого или желтоватого цвета.",
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fgreensotka.ru%2Fwp-content%2Fuploads%2F2019%2F09%2Fris-1.-1.jpg&f=1&nofb=1&ipt=f0eaaf881f083ad71e458a26a8e5b5e80524eb2eefd21ad31299353af4388c2a&ipo=images",
  '140 рублей за шт.',
    '87164187'
  ),
  Flowers(
      3,
      "Ромашки",
      "Рома́шка — род однолетних цветковых растений семейства астровые, или сложноцветные, по современной классификации объединяет около 70 видовневысоких пахучих трав, цветущих с первого года жизни.",
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Frastenievod.com%2Fwp-content%2Fuploads%2F2017%2F04%2F3-17.jpg&f=1&nofb=1&ipt=2066e10ba3ebfc9d70c4cc9e44d0e7f2f0eb3ba33198815c4ddcaf5078fa328f&ipo=images",
    '160 рублей за шт.',
    '86231896'
  ),
  Flowers(
      4,
      "Фиалки",
      "Фиалка душистая"
      "Однолетник, у которого заложение зачатков стеблей происходит в год, предшествующий их росту. После созревания тонкие плодоножки опускают корзинки-соцветия к земле. Таким образом, зрелые семена лежат под кустом.",
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fgreensotka.ru%2Fwp-content%2Fuploads%2F2019%2F12%2F2-raznovidnost-fialki-senpolija.jpg&f=1&nofb=1&ipt=5bf80c8cafa44f55ec563816d8bd72bb1dfd027134008d91e35a79750cc63fc1&ipo=images",
      "100 рублей за шт.",
      "9813649"
  ),
  Flowers(
    5,
    "Пионы",
    "Пио́н — род травянистых многолетников и листопадных кустарников. Единственный род семейства Пионовые, ранее род относили к семейству Лютиковых. Пионы цветут в конце весны, ценятся садоводами за пышную листву, эффектные цветы и декоративные плоды.",
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fflo.discus-club.ru%2Fimages%2Fstories%2Ffoto-cvetov%2Fpeony%2Fpeony1.jpg&f=1&nofb=1&ipt=4ca2ab6b51c47e78af9ec6f615ef1b2b01e3390b0b5be58b25331df395c04da6&ipo=images",
    "380 рублей за шт.",
    "43223687"
  ),
  Flowers(
    6,
    "Маки",
    "Маки — потрясающе красивые растения, покорившие сердца многих садоводов. Но не все так просто. Среди этих пламенных красавцев есть такие виды, которые запрещено выращивать в частных садах. Давайте разбираться вместе.",
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimg.7dach.ru%2Fimage%2F1200%2F00%2F00%2F48%2F2017%2F02%2F28%2F49cb68.jpg&f=1&nofb=1&ipt=bea0afa32038da81e043d3a24fd0cb961fe9d9d377b9cf945b5d78571ae5fb2f&ipo=images",
    "200 рублей за шт.",
    "41337060"
  ),
  Flowers(
    7,
    "Гипсофилы",
    "Такое травянистое растение как гипсофила (Gypsophila) еще именуют качим, перекати-поле, гипсолюбка.",
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fdari-cvety.com%2Fassets%2Fimages%2Fproducts%2F1347%2F5-sinih-gipsofil-2.jpeg&f=1&nofb=1&ipt=084209b26043d02a2e6d2ebd9e00c67fff1ad1699f8fa35ff2411ef0efa31a3f&ipo=images",
    "230 рублей за шт.",
    "81273447"
  ),
  Flowers(
    8,
    "Люпины",
    "Люпи́н, или волчий боб — род растений из семейства Бобовые. Представлен однолетними и многолетними травянистыми растениями, полукустарничками, полукустарниками, кустарниками.",
    "https://duckduckgo.com/i/b15a6fbd4875f984.jpg",
    "160 рублей за шт.",
    "89370190"
  ),
  Flowers(
    9,
    "Орхидеи",
    "Орхи́дные, или Ятры́шниковые, также Орхиде́и — крупнейшее семейство однодольных растений. Более чем для 10 % представителей семейства характерен CAM-фотосинтез. Орхидные — древнее семейство, появившееся в позднемеловую эпоху. ",
    "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fmegaogorod.com%2Ffiles%2Ffield%2Fimage%2Fu2169%2F2_251.jpg&f=1&nofb=1&ipt=653d4d89807910266d58a34b0631556c95c21704aa87995842dbbbd1bd5835b9&ipo=images",
    "145 рублей за шт.",
    "59247291"
  )
];


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Метод для добавления нового цветка через окно ввода
  void _addFlower(BuildContext context) {
    final _titleController = TextEditingController();
    final _descriptionController = TextEditingController();
    final _imageUrlController = TextEditingController();
    final _costController = TextEditingController();
    final _articleController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Добавить новый цветок"),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: "Название"),
                ),
                TextField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(labelText: "Описание"),
                ),
                TextField(
                  controller: _imageUrlController,
                  decoration: const InputDecoration(labelText: "Ссылка на фото"),
                ),
                TextField(
                  controller: _costController,
                  decoration: const InputDecoration(labelText: "Стоимость"),
                ),
                TextField(
                  controller: _articleController,
                  decoration: const InputDecoration(labelText: "Артикул"),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Отмена"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  flowers.add(Flowers(
                    flowers.length,
                    _titleController.text,
                    _descriptionController.text,
                    _imageUrlController.text,
                    _costController.text,
                    _articleController.text,
                  ));
                });
                Navigator.pop(context);
              },
              child: const Text("Добавить"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Цветы'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: flowers.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemNote(flowers: flowers[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addFlower(context), // Вызов метода с модальным окном
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}

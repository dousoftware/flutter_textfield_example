import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  late TextEditingController mailController;
  late FocusNode focusnode;
  int maxLineCount = 1;

  @override
  void initState() {
    super.initState();
    mailController = TextEditingController(text: 'dousoftware@gmail.com');
    focusnode = FocusNode();
    focusnode.addListener(() {
      setState(() {
        if (focusnode.hasFocus) {
        maxLineCount = 3;
      } else {
        maxLineCount = 1;
      }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    mailController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          //! Kullanıcıdan veri alma işlemleri için kullanılır.
          //! Kayıt ol, giriş yap sayfalarında sık sık karşımıza çıkar.
          TextField(
            focusNode: focusnode,
            controller: mailController,
            //! İlgili TextFieldin klavyesini otomatik olarak açar
            autofocus: true,
            //! Klavye türünü belirlememizi sağlar.
            keyboardType: TextInputType.number,
            //! İmleç rengini ayarlar.
            cursorColor: Colors.black,
            //! TextFieldin maksimum satır sayısını belirler.
            maxLines: maxLineCount,
            
            //! TextFieldin maksimum karakter sayısını belirler.
            maxLength: 25,
            decoration: InputDecoration(
                //! TextField içerisine ipucu ekler.
                hintText: 'E-Mail',
                border: OutlineInputBorder()),
          ),
          TextField(
            //! Filtreleme alanlarında kullanılabilir bir özellik.
            onChanged: (String deger) {
              print('TextFieldden gelen değer onChanged: ' + '$deger');
            },
            onSubmitted: (String deger) {
              print('TextFieldden gelen değer onSubmitted: ' + '$deger');
            },
            decoration: const InputDecoration(
                //! TextField içerisine ipucu ekler.
                hintText: 'Şifre',
                border: OutlineInputBorder()),
          ),

          Text(mailController.text),
          FloatingActionButton(
            child: const Icon(Icons.forward),
            onPressed: () {
              setState(() {
                mailController.text = 'dcaglakpinar@gmail.com';
              });
            },
          )
        ],
      ),
    );
  }
}

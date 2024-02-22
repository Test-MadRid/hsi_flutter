import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.plusJakartaSansTextTheme()),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profil',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          actions: [
            Text(
              'v.2402-1601',
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(
              width: 8,
            )
          ],
        ),
        body: ListView(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: Image.asset('assets/hsi_logo.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('MUHAMMAD RIDWAN',
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      Text('ARN212-28202'),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 308,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.my_library_books_outlined),
                    label: Text('Ubah'),
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontWeight: FontWeight.w700),
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          'assets/whatsapp.png',
                          color: Colors.blue[900],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Nomer Whatsapp',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Text('62-895384005988')
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.home,
                          color: Colors.blue[900],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alamat',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Text('Kelurahan Meteseh, Kecamatan Tembalang')
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.location_on_outlined,
                          color: Colors.blue[900],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kabupaten/Kota, Provinsi, Kode Pos',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Text('KOTA SEMARANG, JAWA TENGAH, 50271')
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          'assets/ring.png',
                          color: Colors.blue[900],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Status Pernikahan/Jumlah Anak',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Text('Belum Menikah/0')
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: 4,
                          ),
                          child: Icon(
                            Icons.headset_mic,
                            color: Colors.blue[900],
                          ),
                        ),
                        Text(
                          'List Admin',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  listMentor(
                    namaMentor: 'Kurnia Adhiwibowo',
                    nipMentor: 'ARN151-0358',
                    title: 'PLACEMENT TEST SANDBOX 3',
                    grup: 'CALON PESERTA ARN',
                    kelas: 'SANDBOX',
                  ),
                  listMentor(
                    namaMentor: 'Diah R.I.S',
                    nipMentor: 'ARN171-15037',
                    title: 'PLACEMENT TEST SANDBOX 3',
                    grup: 'CALON PESERTA ARN',
                    kelas: 'SANDBOX',
                  ),
                  listMentor(
                    namaMentor: 'Irfan Abu Alif',
                    nipMentor: 'ARN201-49155',
                    title:
                        'Silsilah Ilmiyyah Pembahasan Kitab Al Usul Ats Tsalatsah Bagian Pertama',
                    grup: 'ARN212-15',
                    kelas: 'Program Reguler',
                  ),
                  listMentor(
                    namaMentor: 'Naufal Rabbani',
                    nipMentor: 'ARN201-29119',
                    title:
                        'Silsilah Ilmiyyah Pembahasan Kitab Al Usul Ats Tsalatsah Bagian Pertama',
                    grup: 'ARN212-15',
                    kelas: 'Program Reguler',
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 4,
                          ),
                          child: Icon(
                            Icons.error,
                            color: Colors.blue[900],
                          ),
                        ),
                        Text(
                          'Info Lainya',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Ganti Password'),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      icon: Icon(Icons.lock_open_rounded),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(1),
                          shape: RoundedRectangleBorder()),
                    ),
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Bantuan'),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      icon: Icon(Icons.question_mark),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(1),
                          shape: RoundedRectangleBorder()),
                    ),
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Kebijakan Privasi'),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      icon: Icon(Icons.privacy_tip_outlined),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(1),
                          shape: RoundedRectangleBorder()),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: MediaQuery.of(context).size.width,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Keluar',
                      ),
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.red),
                          foregroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class listMentor extends StatelessWidget {
  const listMentor({
    super.key,
    required this.namaMentor,
    required this.nipMentor,
    required this.title,
    required this.grup,
    required this.kelas,
  });
  final String namaMentor;
  final String nipMentor;
  final String title;
  final String grup;
  final String kelas;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 3),
            child: Row(
              children: [
                Text(
                  '$namaMentor  ',
                ),
                Text(
                  '($nipMentor)',
                  style: TextStyle(color: Colors.grey[600]),
                )
              ],
            ),
          ),
          Text(title),
          Row(
            children: [Text('Grup: '), Text(grup)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                kelas,
                style: TextStyle(color: Colors.purple[900]),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Hubungi',
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 25,
                        child: Image.asset('assets/whatsapp-white-icon.png'))
                  ],
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.green[300])),
              )
            ],
          )
        ],
      ),
    );
  }
}

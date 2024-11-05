import 'package:flutter/material.dart';

class NotificationManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifikasi', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daftar Notifikasi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: 5, // Jumlah notifikasi (contoh 5 notifikasi)
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.notifications, color: Colors.blue),
                    title: Text('Notifikasi ${index + 1}'),
                    subtitle: Text(
                      'Deskripsi singkat untuk notifikasi ini. Klik untuk informasi lebih lanjut.',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {
                      // Aksi ketika notifikasi diklik
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

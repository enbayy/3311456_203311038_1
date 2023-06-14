import 'package:flutter/material.dart';
import '../models/users_model.dart';
import '../services/users_services.dart';

class UsersView extends StatefulWidget {
  const UsersView({super.key});

  @override
  _UsersViewState createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {
  late Future<List<kullanici>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kullanıcı Bilgileri'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: FutureBuilder<List<kullanici>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<kullanici> data = snapshot.data!;
              return ListView.separated(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 450,
                    height: 160,
                    color: Colors.green.shade400,
                    constraints:  const BoxConstraints(maxHeight: 200),
                    child:
                    Row(
                      children: [
                        Flexible(
                          child: Text('''                         
                            ID: ${data[index].id} 
                            İsim: ${data[index].name} 
                            Kullanıcı adı: ${data[index].username}  
                            Email: ${data[index].email}  
                            Adres: ${data[index].address}  
                            Telefon: ${data[index].phone}
                            Website: ${data[index].website}
                            Şirket: ${data[index].company}''',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold),),
                        ),
                      ],
                  ),
                    );
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
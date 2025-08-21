import 'package:flutter/material.dart';

class MoneyManager extends StatefulWidget {
  const MoneyManager({super.key});

  @override
  State<MoneyManager> createState() => _MoneyManagerState();
}

class _MoneyManagerState extends State<MoneyManager> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  List<Map<String,dynamic>> _expense=[];
  List<Map<String,dynamic>> _earning=[];
  double get totalExpense =>_expense.fold(0, (sum,item)=>sum+item['amount']);
  double get totalEarning =>_earning.fold(0, (sum,item)=>sum+item['amount']);
  double get balance =>totalEarning-totalExpense;

  void _addEntry(String title, double amount, DateTime date, bool isEarning){
    setState(() {
      if(isEarning){
        _earning.add(
            {
              'title':title,
              'amount':amount,
              'date':date
        });
      }else{
        _expense.add({
          'title':title,
          'amount':amount,
          'date':date
        });
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     _tabController=TabController(length: 2, vsync: this);
  }
  void _ButtonOption(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade900
              ),
                onPressed: (){
                Navigator.pop(context);
                _showForm(isEarning:true);
                }, child: Text('Add Earning')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade900
                ),
                onPressed: (){
                  Navigator.pop(context);
                  _showForm(isEarning: false);
                }, child: Text('Add Expense')),

          ],
        ),
      );
    });
  }
  void _showForm({required bool isEarning}){
    TextEditingController titleController=TextEditingController();
    TextEditingController amountController=TextEditingController();
    DateTime entryDate=DateTime.now();
    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              isEarning ? 'Add Earning' : 'Add Expense',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isEarning ? Colors.orange : Colors.red
              ),
                onPressed: (){
                if(titleController.text.isNotEmpty && amountController.text.isNotEmpty){
                  _addEntry(titleController.text, double.parse(amountController.text), entryDate, isEarning);
                  Navigator.pop(context);
                }
                }, child: Text(
              isEarning ? 'Add Earning':'Add Expense'
            ))
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent, // keep transparent
        flexibleSpace: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              'https://i.pinimg.com/736x/96/bb/2d/96bb2d709796dbf1f14d7e87e4c78c02.jpg',
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black.withOpacity(0.3), // optional dark overlay for contrast
            ),
          ],
        ),
        title: Text(
          'Money Meter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,  // make text bold
            fontSize: 16,
          ),
            tabs: [
            Tab(text: 'Earning',icon: Icon(Icons.arrow_upward),),
              Tab(text: 'Expense',icon: Icon(Icons.arrow_downward),)
                  ],
        ),
      ),
      //body
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                'https://i.pinimg.com/736x/96/bb/2d/96bb2d709796dbf1f14d7e87e4c78c02.jpg',
              ),
          fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _CardWidget(title: "Earning",value: totalEarning,color: Colors.orange),
                _CardWidget(title: "Expense",value: totalExpense,color: Colors.red),
                _CardWidget(title: "Balance",value: balance,color: Colors.purple),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                  children: [
                _buildList(_earning, Colors.orange, true),
                _buildList(_expense, Colors.red, false)

              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: ()=>_ButtonOption(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
Widget _CardWidget({required String title,required double value,required Color color}) {
  return Card(
    color: color,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          Text(
            value.toString(),
            style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildList(List<Map<String,dynamic>>items,Color color,bool isEarning){
  return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context,index){
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: color.withOpacity(0.2),
              child: Icon(isEarning ? Icons.arrow_upward : Icons.arrow_downward),
            ),
            title: Text(items[index]['title']),
            subtitle: Text(items[index]['date'].toString()),
            trailing: Text(
              '৳${items[index]['amount']}',
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        );
  });
}
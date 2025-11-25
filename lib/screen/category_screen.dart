import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  final String categoryKey;
  final String categoryTitle;

  const CategoryScreen({
    Key? key,
    required this.categoryKey,
    required this.categoryTitle,
  }) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late List<Map<String, dynamic>> items;

  List<Map<String, dynamic>> _itemsFor(String key) {
    switch (key) {
      case 'makeup':
        return [
          {
            'name': 'أحمر شفاه كلاسيك',
            'price': '40 ريال',
            'image': 'Images/pc11.jpg',
            'fav': false,
          },
          {
            'name': 'ماسكرا فخمة',
            'price': '50 ريال',
            'image': 'Images/mc.jpg',
            'fav': false,
          },
          {
            'name': 'بلاش وردي',
            'price': '30 ريال',
            'image': 'Images/pink.jpg',
            'fav': false,
          },
          {
            'name': 'كونسيلر سائل',
            'price': '40 ريال',
            'image': 'Images/co1.jpg',
            'fav': false,
          },
        ];
      case 'creams':
        return [
          {
            'name': 'كريم مرطب يومي',
            'price': '45 ريال',
            'image': 'Images/pc8.jpg',
            'fav': false,
          },
          {
            'name': 'كريم نهاري بعامل حماية',
            'price': '60 ريال',
            'image': 'Images/c1.jpg',
            'fav': false,
          },
          {
            'name': 'كريم تبييض',
            'price': '70 ريال',
            'image': 'Images/fn.jpg',
            'fav': false,
          },
          {
            'name': 'سيروم مرطب',
            'price': '70 ريال',
            'image': 'Images/ser1.jpg',
            'fav': false,
          },
        ];
      case 'cleansers':
        return [
          {
            'name': 'غسول يومي لطيف',
            'price': '30 ريال',
            'image': 'Images/w3.jpg',
            'fav': false,
          },
          {
            'name': 'غسول مقشر',
            'price': '35 ريال',
            'image': 'Images/w2.jpg',
            'fav': false,
          },
          {
            'name': 'غسول للبشرة الدهنية',
            'price': '35 ريال',
            'image': 'Images/w1.jpg',
            'fav': false,
          },
          {
            'name': 'غسول للبشرة الجافة',
            'price': '35 ريال',
            'image': 'Images/w4.jpg',
            'fav': false,
          },
        ];
      case 'masks':
        return [
          {
            'name': 'ماسك ترطيب عميق',
            'price': '55 ريال',
            'image': 'Images/m3.jpg',
            'fav': false,
          },
          {
            'name': 'ماسك  للتنظيف',
            'price': '48 ريال',
            'image': 'Images/m2.jpg',
            'fav': false,
          },
          {
            'name': 'ماسك ورقي مهدئ',
            'price': '20 ريال',
            'image': 'Images/m1.jpg',
            'fav': false,
          },
          {
            'name': 'الماسك الدهبي',
            'price': '20 ريال',
            'image': 'Images/pc4.jpg',
            'fav': false,
          },
        ];
      default:
        return [
          {
            'name': 'منتج تجريبي',
            'price': '25 ريال',
            'image': 'assets/images/demo.jpg',
            'fav': false,
          },
        ];
    }
  }

  @override
  void initState() {
    super.initState();
    items = _itemsFor(widget.categoryKey);
  }

  void toggleFav(int index) {
    setState(() {
      items[index]['fav'] = !items[index]['fav'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            final it = items[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.24),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.asset(
                        it['image'],
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            it['name'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            it['price'],
                            style: const TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(
                                  it['fav']
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Colors.red,
                                ),
                                onPressed: () => toggleFav(index),
                              ),
                              IconButton(
                                icon: const Icon(Icons.shopping_cart),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


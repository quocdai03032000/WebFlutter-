import 'package:hungry/models/core/recipe.dart';

class RecipeHelper {
  static List<Recipe> featuredRecipe = featuredRecipeRawData
      .map((data) => Recipe(
            title: data['title'],
            photo: data['photo'],
            calories: data['calories'],
            time: data['time'],
            description: data['description'],
            reviews: Review.toList(data['reviews']),
            tutorial: TutorialStep.toList(data['tutorial']),
            ingridients: Ingridient.toList(data['ingridients']),
          ))
      .toList();

  static List<Recipe> recommendationRecipe = recommendationRecipeRawData
      .map((data) => Recipe(
            title: data['title'],
            photo: data['photo'],
            calories: data['calories'],
            time: data['time'],
            description: data['description'],
            reviews: Review.toList(data['reviews']),
            tutorial: TutorialStep.toList(data['tutorial']),
            ingridients: Ingridient.toList(data['ingridients']),
          ))
      .toList();

  static List<Recipe> newlyPostedRecipe = newlyPostedRecipeRawData
      .map((data) => Recipe(
            title: data['title'],
            photo: data['photo'],
            calories: data['calories'],
            time: data['time'],
            description: data['description'],
            reviews: Review.toList(data['reviews']),
            tutorial: TutorialStep.toList(data['tutorial']),
            ingridients: Ingridient.toList(data['ingridients']),
          ))
      .toList();

  static List<Recipe> sweetFoodRecommendationRecipe =
      sweetFoodRecommendationRecipeRawData
          .map((data) => Recipe(
                title: data['title'],
                photo: data['photo'],
                calories: data['calories'],
                time: data['time'],
                description: data['description'],
                reviews: Review.toList(data['reviews']),
                tutorial: TutorialStep.toList(data['tutorial']),
                ingridients: Ingridient.toList(data['ingridients']),
              ))
          .toList();

  static Recipe popularRecipe = Recipe(
    title: popularRecipeRawData['title'],
    photo: popularRecipeRawData['photo'],
    calories: popularRecipeRawData['calories'],
    time: popularRecipeRawData['time'],
    description: popularRecipeRawData['description'],
    reviews: Review.toList(popularRecipeRawData['reviews']),
    tutorial: TutorialStep.toList(popularRecipeRawData['tutorial']),
    ingridients: Ingridient.toList(popularRecipeRawData['ingridients']),
  );

  static List<Recipe> sarchResultRecipe = recipeSearchResultRawData
      .map((data) => Recipe(
            title: data['title'],
            photo: data['photo'],
            calories: data['calories'],
            time: data['time'],
            description: data['description'],
            reviews: Review.toList(data['reviews']),
            tutorial: TutorialStep.toList(data['tutorial']),
            ingridients: Ingridient.toList(data['ingridients']),
          ))
      .toList();

  static List<Recipe> bookmarkedRecipe = bookmarkedRecipeRawData
      .map((data) => Recipe(
            title: data['title'],
            photo: data['photo'],
            calories: data['calories'],
            time: data['time'],
            description: data['description'],
            reviews: Review.toList(data['reviews']),
            tutorial: TutorialStep.toList(data['tutorial']),
            ingridients: Ingridient.toList(data['ingridients']),
          ))
      .toList();
}

var popularRecipeRawData = {
  'title': 'Green Healthy Meat & Vegetable Pizza.',
  'photo': 'assets/images/popularnowpizza.jpg',
  'calories': '1500 Cal',
  'time': '25 phút',
  'description':
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  'ingridients': [
    {
      'name': 'Spinach',
      'size': '250 g',
    },
    {
      'name': 'Noodles',
      'size': '1000 g',
    },
    {
      'name': 'Chili',
      'size': '50 g',
    },
    {
      'name': 'Chocolatte',
      'size': '1000 g',
    },
    {
      'name': 'Brocolli',
      'size': '150 g',
    }
  ],
  'tutorial': [
    {
      'step': '1. Tuangkan Air.',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    },
    {
      'step': '2. Masukkan Mie.',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    },
    {
      'step': '3. Cuci Piringnya.',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    },
    {
      'step': '4. Tambahkan Nasi.',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    },
    {
      'step': '5. Buang semua isi piring.',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    },
  ],
  'reviews': [
    {
      'username': 'Quốc Đại',
      'review':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
    {
      'username': 'Nam Lê',
      'review':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
    {
      'username': 'Tây Trương',
      'review':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
    {
      'username': 'Cao Tè',
      'review':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
  ]
};

var featuredRecipeRawData = [
  {
    'title': 'Cá kho tiêu mẹ nấu ngon xuất xắc',
    'photo': 'assets/images/featured2.jpg',
    'calories': '1500 Cal',
    'time': '25 phút',
    'description':
        'Cá kho tiêu là món ngon dân dã của vùng quê, với nguyên liệu là các loại cá gần gũi với khí hậu Việt Nam. Ở mỗi miền, tùy khẩu vị khác nhau, người ta sẽ có cách chế biến món ngon này rất riêng, làm nên sự đa dạng của ẩm thực Việt.',
    'ingridients': [
      {
        'name': 'Cá lóc',
        'size': '300 g',
      },
      {
        'name': 'Nước mắm',
        'size': '2 g',
      },
      {
        'name': 'Hành lá',
        'size': '3 g',
      },
      {
        'name': 'Hành củ + tỏi khô',
        'size': '3 g',
      },
      {
        'name': 'Tiêu xay',
        'size': '1 g',
      },
      {
        'name': 'Đường cát',
        'size': '2 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Cách sơ chế cá lóc không bị tanh.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Cách sơ chế các nguyên liệu.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cách ướp cá lóc.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tiến hành kho tiêu.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Quang Lê',
        'review': 'Quaoooo! Đỉnh dữ',
      },
      {
        'username': 'Phượng Thị',
        'review': 'Kiến thức bổ ích quá',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Cảm ơn đã chia sẽ công thức này nhé',
      },
      {
        'username': 'Khoa Le',
        'review': 'Hay quá tác giả ơi',
      },
    ]
  },
  {
    'title': 'Làm gà nướng muối vàng ươm, thơm phức không cần lò nướng.',
    'photo': 'assets/images/featured1.jpg',
    'calories': '870 Cal',
    'time': '32 phút',
    'description':
        'Không cần lò nướng nhưng bạn vẫn có thể làm ra được món gà nướng mềm, thơm, hơn nữa lại không hề có dầu mỡ gây ngán.',
    'ingridients': [
      {
        'name': '1 con gà nhỏ',
        'size': '800 g',
      },
      {
        'name': 'Muối tinh',
        'size': '100 g',
      },
      {
        'name': 'Muối biển',
        'size': '2 kg',
      },
      {
        'name': 'Bột nghệ',
        'size': '5 g',
      },
      {
        'name': 'Bột gừng',
        'size': '5 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Sơ chế gà.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Tẩm ướp gia vị.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Chuẩn bị dụng cụ nấu.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Pha nước chấm.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Trang trí.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Cách nấu canh chua cá lóc chuẩn công thức mẹ nấu.',
    'photo': 'assets/images/list1.jpg',
    'calories': '1500 Cal',
    'time': '25 phút',
    'description':
        'Canh chua cá lóc là món ăn dân dã, dễ ăn, dễ ghiền,... khiến ai đã ăn đều phải tấm tắc khen ngon. Hãy cùng vào bếp với mình và học ngay cách nấu canh chua cá lóc đúng chuẩn mẹ nấu, ngon ngất ngây này nhé!.',
    'ingridients': [
      {
        'name': 'Cá lóc',
        'size': '500 g',
      },
      {
        'name': 'Thơm',
        'size': '200 g',
      },
      {
        'name': 'Cà chua',
        'size': '2 trái',
      },
      {
        'name': 'Đậu bắp',
        'size': '50 g',
      },
      {
        'name': 'Bạc hà',
        'size': '50 g',
      },
      {
        'name': 'Me vắt',
        'size': '20 g',
      },
      {
        'name': 'Giá đỗ',
        'size': '50 g',
      },
      {
        'name': 'Ngò gai',
        'size': '1 nhánh',
      }
    ],
    'tutorial': [
      {
        'step': '1. Sơ chế cá lóc.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Sơ chế rau ăn kèm.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Nấu nước cốt me.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Nấu canh.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Thành phẩm.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Làm salad hông nè?',
    'photo': 'assets/images/list2.jpg',
    'calories': '870 Cal',
    'time': '32 phút',
    'description':
        'Nếu như bạn đã chán với các mín ăn nhiều đạm, dầu mỡ và cần sự thanh lọc cho cơ thể của mình, thì salad là 1 lựa chọn rất tuyệt với. Để mình chỉ các bạn làm nhen.',
    'ingridients': [
      {
        'name': 'Rau xà lách',
        'size': '250 g',
      },
      {
        'name': 'dưa chuột',
        'size': '2 quả',
      },
      {
        'name': 'Cà chua',
        'size': '1 quả',
      },
      {
        'name': 'Đường',
        'size': '0.5 g',
      },
      {
        'name': 'Dầu mè',
        'size': '1 thìa',
      },
      {
        'name': 'Sốt mayonnaise',
        'size': '2 thìa',
      },
      {
        'name': 'Muối',
        'size': '0.5 thìa',
      },
      {
        'name': 'Giấm',
        'size': '0.3 thìa',
      }
    ],
    'tutorial': [
      {
        'step': '1. Sơ chế nguyên liệu.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Pha nước sốt và trộn salad.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Trang trí và thưởng thức.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Eat clean hông?',
    'photo': 'assets/images/list3.jpg',
    'calories': '870 Cal',
    'time': '5 phút',
    'description':
        'Hôm nay mình sẽ chỉ cho các bạn làm 1 bữa sáng Eatclean tốt cho sức khoẻ nhaa.',
    'ingridients': [
      {
        'name': 'Chuối',
        'size': '2 trái',
      },
      {
        'name': 'Yến mạch',
        'size': '50 g',
      },
      {
        'name': 'Sữa chua',
        'size': '1 hủ',
      },
      {
        'name': 'Hạt ngũ cốc',
        'size': '50 g',
      },
    ],
    'tutorial': [
      {
        'step': '1. Cách nhận biết ngũ cốc yến mạch ăn liền.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Chế biến món ăn.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  }
];

var recommendationRecipeRawData = [
  {
    'title': 'Làm bún đậu mắm tôm ngon ngất ngây nè',
    'photo': 'assets/images/recom2.jpg',
    'calories': '1500 Cal',
    'time': '35 phút',
    'description':
        'Một mẹt bún đậu mắm tôm với đầy đủ các nguyên liệu hấp dẫn, sạch sẽ chắc hẳn là món ngon mà bất cứ ai cũng khó có thể chối từ. Bạn có thể chuẩn bị món ăn "siêu phẩm" này ngay tại nhà với công thức đơn giản sau đây! Cùng tham khảo và vào bếp ngay nhé!',
    'ingridients': [
      {
        'name': 'Bún lá (hoặc bún tươi loại thường)',
        'size': '200 g',
      },
      {
        'name': 'Đậu hũ',
        'size': '1 kg',
      },
      {
        'name': 'Phèo non',
        'size': '600 g',
      },
      {
        'name': 'Thịt ba rọi',
        'size': '300 g',
      },
      {
        'name': 'Các loại rau thơm (húng quế/ tía tô/ kinh giới/ diếp cá)',
        'size': '150 g',
      },
      {
        'name': 'Dạ dày',
        'size': '300 g',
      },
      {
        'name': 'Chanh (có thể thay bằng tắc)',
        'size': '3 trái',
      },
      {
        'name': 'Mắm tôm',
        'size': '500 g',
      },
    ],
    'tutorial': [
      {
        'step': '1. Sơ chế thịt, dạ dày và bộ lòng heo.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Luộc thịt, dạ dày và bộ lòng heo.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Chuẩn bị các nguyên liệu khác.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Làm ram thịt chiên.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Pha mắm tôm.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '6. Hoàn thành.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Bánh Hỏi Lá Lốt.',
    'photo': 'assets/images/recom1.jpg',
    'calories': '870 Cal',
    'time': '32 phút',
    'description':
        'Hông biết có bạn nào đã nghe qua món này chưa ta, để mình chỉ bạn làm món vừa lạ miệng vừa ngon này nha.',
    'ingridients': [
      {
        'name': 'Đậu Hủ Chiên',
        'size': '2 miếng',
      },
      {
        'name': 'Mì Căn',
        'size': '2 cây',
      },
      {
        'name': 'Đậu phộng rang',
        'size': '50 g',
      },
      {
        'name': 'Bánh hỏi',
        'size': '300 g',
      },
      {
        'name': 'Lá lốp',
        'size': '20 lá',
      },
      {
        'name': 'Đường',
        'size': '2 muỗng',
      },
      {
        'name': 'Tỏi ớt băm',
        'size': '5 g',
      },
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
];

var newlyPostedRecipeRawData = [
  {
    'title': 'Healthy Vege Green Egg.',
    'photo': 'assets/images/list6.jpg',
    'calories': '1500 Cal',
    'time': '25 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Delicious Salad by Ron.',
    'photo': 'assets/images/list2.jpg',
    'calories': '870 Cal',
    'time': '32 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Breakfast Delimenu.',
    'photo': 'assets/images/list3.jpg',
    'calories': '870 Cal',
    'time': '32 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Basil Leaves & Avocado Bread.',
    'photo': 'assets/images/list4.jpg',
    'calories': '1200 Cal',
    'time': '40 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Healthy Beef & Egg.',
    'photo': 'assets/images/list5.jpg',
    'calories': '1100 Cal',
    'time': '30 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Meats and Vegetables Bowl.',
    'photo': 'assets/images/list6.jpg',
    'calories': '1450 Cal',
    'time': '120 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Pancake with Honey.',
    'photo': 'assets/images/sweetfood1.jpg',
    'calories': '1500 Cal',
    'time': '25 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Chocolate Pancake.',
    'photo': 'assets/images/sweetfood2.jpg',
    'calories': '870 Cal',
    'time': '32 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
];

var sweetFoodRecommendationRecipeRawData = [
  {
    'title': 'Pancake with Honey.',
    'photo': 'assets/images/sweetfood1.jpg',
    'calories': '1500 Cal',
    'time': '25 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Chocolate Pancake.',
    'photo': 'assets/images/sweetfood2.jpg',
    'calories': '870 Cal',
    'time': '32 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
];

var popularRecipeKeyword = [
  'Mì Ý',
  'Bánh cuốn',
  'Bánh kem',
  'Gà kho gừng',
  'Vịt om sấu',
  'Lẩu mắm',
  'Gà chiên nước mắm',
  'Cơm trộn',
  'Kem bơ',
  'Bánh flan',
  'Salad',
  'Món âu'
];

var recipeSearchResultRawData = [
  {
    'title': 'Healthy Vege Green Egg.',
    'photo': 'assets/images/list1.jpg',
    'calories': '1500 Cal',
    'time': '25 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Delicious Salad by Ron.',
    'photo': 'assets/images/list2.jpg',
    'calories': '870 Cal',
    'time': '32 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Basil Leaves & Avocado Bread.',
    'photo': 'assets/images/list4.jpg',
    'calories': '1200 Cal',
    'time': '40 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Healthy Beef & Egg.',
    'photo': 'assets/images/list5.jpg',
    'calories': '1100 Cal',
    'time': '30 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Meats and Vegetables Bowl.',
    'photo': 'assets/images/list6.jpg',
    'calories': '1450 Cal',
    'time': '120 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Breakfast Delimenu.',
    'photo': 'assets/images/list3.jpg',
    'calories': '870 Cal',
    'time': '32 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
];

var bookmarkedRecipeRawData = [
  {
    'title': 'Healthy Vege Green Egg.',
    'photo': 'assets/images/list1.jpg',
    'calories': '1500 Cal',
    'time': '25 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Delicious Salad by Ron.',
    'photo': 'assets/images/list2.jpg',
    'calories': '870 Cal',
    'time': '32 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Basil Leaves & Avocado Bread.',
    'photo': 'assets/images/list4.jpg',
    'calories': '1200 Cal',
    'time': '40 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Healthy Beef & Egg.',
    'photo': 'assets/images/list5.jpg',
    'calories': '1100 Cal',
    'time': '30 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Meats and Vegetables Bowl.',
    'photo': 'assets/images/list6.jpg',
    'calories': '1450 Cal',
    'time': '120 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
  {
    'title': 'Breakfast Delimenu.',
    'photo': 'assets/images/list3.jpg',
    'calories': '870 Cal',
    'time': '32 phút',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Nguyên liệu 1',
        'size': '250 g',
      },
      {
        'name': 'Nguyên liệu 2',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 3',
        'size': '50 g',
      },
      {
        'name': 'Nguyên liệu 4',
        'size': '1000 g',
      },
      {
        'name': 'Nguyên liệu 5',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Bước 1.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Bước 2.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Bước 3.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Bước 4.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Bước 5.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': 'Đại nè',
        'review': 'Thật tuyệt vời!',
      },
      {
        'username': 'Nam Lê',
        'review': 'Hay quá tác giả ơiii',
      },
      {
        'username': 'Tây Trương',
        'review': 'Cảm ơn bạn đã chia sẽ công thức này',
      },
      {
        'username': 'Quốc Đại',
        'review': 'Quá dữ luôn',
      },
    ]
  },
];

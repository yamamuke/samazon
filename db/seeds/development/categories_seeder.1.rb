# このシーダーは、先にmajor_categories_seeder.rbで親カテゴリを作成しておかないと動作しない
major_category_names_and_ids = MajorCategory.major_category_name_and_id

book_categories = ["ビジネス", "文学・評論", "人文・思想", "スポーツ",
                    "コンピュータ・IT", "資格・検定・就職", "絵本・児童書", "写真集",
                    "ゲーム攻略本", "雑誌", "アート・デザイン", "ノンフィクション"]
cd_categories = ["ジャズ", "フュージョン", "ポップス", "クラシック", "ロック"]
others_categories = ["電気製品", "化粧品", "アクセサリ"]

major_category_names_and_ids.each do |major_category_name,major_category_id|
  if major_category_name == "本"


    book_categories.each do |book_category|
      Category.create(
        name: book_category,
        description: book_category,
        major_category_name: major_category_name,
        major_category_id: major_category_id
      )
    end
  elsif major_category_name == "CD / DVD"
    computer_categories.each do |cd_category|
      Category.create(
        name: cd_category,
        description: cd_category,
        major_category_name: major_category_name,
        major_category_id: major_category_id
      )
    end
  elsif major_category_name == "その他"
    display_categories.each do |others_category|
      Category.create(
        name: others_category,
        description: othres_category,
        major_category_name: major_category_name,
        major_category_id: major_category_id
      )
    end
  end
end

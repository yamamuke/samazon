major_category_names = ["本", "CD / DVD", "その他"]

major_category_names.each do |major_category_name|
  MajorCategory.create(
    name: major_category_name,
    description: major_category_name,
  )
end

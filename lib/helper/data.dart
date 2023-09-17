import 'package:news/models/categori_model.dart';

List<CategoryModel> getCategories(){

  List<CategoryModel> category = [];
  CategoryModel categoryModel = CategoryModel();

  categoryModel.categoeryName = "Business";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80";
  category.add(categoryModel);

 categoryModel = new CategoryModel();

   categoryModel = new CategoryModel();
  categoryModel.categoeryName = "Entertainment";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1599999904186-6a3104b3c125?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1331&q=80";
  category.add(categoryModel);

 
  categoryModel = new CategoryModel();
  categoryModel.categoeryName = "General";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80";
  category.add(categoryModel);

  
  categoryModel = new CategoryModel();
  categoryModel.categoeryName = "Health";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1406&q=80";
  category.add(categoryModel);

  
  categoryModel = new CategoryModel();
  categoryModel.categoeryName = "Science";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1518152006812-edab29b069ac?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80";
  category.add(categoryModel);

  
  categoryModel = new CategoryModel();
  categoryModel.categoeryName = "Sports";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1530549387789-4c1017266635?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80";
  category.add(categoryModel);

  
  categoryModel = new CategoryModel();
  categoryModel.categoeryName = "Technology";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80";
  category.add(categoryModel);

  return category;

}
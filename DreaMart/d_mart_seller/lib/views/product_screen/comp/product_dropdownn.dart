import 'package:d_mart_seller/const/const.dart';
import 'package:d_mart_seller/controllers/product_controller.dart';

Widget productDropdown(hint,List<String> list, dropvalue,ProductController controller) {
  return Obx(()=>
    DropdownButtonHideUnderline(
      child: DropdownButton(
          hint: normalText(text: "$hint", color: fontGrey),
          value: dropvalue.value == '' ? null : dropvalue.value,
          isExpanded: true,
          items: list.map((e) {
            return 
            DropdownMenuItem(
              child: e.toString().text.make(),
              value: e,
            )
            ;
          }).toList(),
          onChanged: (newValue) {
            if(hint=="Category"){
    
              controller.subcategoryvalue.value = '';
    
              controller.populatedSubCategory(newValue.toString());
    
            }
            dropvalue.value = newValue.toString();
                    }),
    )
        .box
        .white
        .roundedSM
        .padding(const EdgeInsets.symmetric(horizontal: 4))
        .make(),
  );
}

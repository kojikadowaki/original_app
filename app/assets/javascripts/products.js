$(document).on('turbolinks:load', ()=> {
  const buildFileField = (index)=> {
    const html = `<div data-index="${index}" class="js-file_group">
                    <input class="js-file" type="file"
                    name="restaurant[menu_images_attributes][${index}][url]"
                    id="restaurant_menu_images_attributes_${index}_url"><br>
                    <div class="js-remove">削除</div>
                  </div>`;
    return html;
  }

  let fileIndex = [1,2,3];

  $('#menu_images').on('change', '.js-file', function(e) {
    $('#menu_images').append(buildFileField(fileIndex[0]));
    fileIndex.shift();
    fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
  });

  $('#menu_images').on('click', '.js-remove', function() {
    $(this).parent().remove();
    if ($('.js-file').length == 0) $('#menu_images').append(buildFileField(fileIndex[0]));
  });
});

// $(function(){
//   let fileIndex = 1
//   const buildFileField = (num)=> {
//     const html = `<div class="js-file_group" data-index="${num}">
//                     <input class="js-file" type="file"
//                     name="restaurant[menu_images_attributes][${num}][image]"
//                     id="restaurant_menu_images_attributes_${num}_image">
//                     <span class="js-remove">削除</span>
//                   </div>`;
//     fileIndex += 1
//     return html;
//   }

//   const buildImg = (index, url)=> {
//     const html = `<img data-index="${index}" url="${url}" width="100px" height="100px">`;
//     return html;
//   }

//   $('.hidden-destroy').hide();

//   $('#menu_images').on('change', '.js-file', function(e) {

//     const targetIndex = $(this).parent().data('index');
//     const file = e.target.files[0];


//     if(!file){
//       $(`.js-file_group[data-index=${targetIndex}]`).find(".js-remove").trigger("click");
//       return false;
//     }

//       var blobUrl = window.URL.createObjectURL(file);

//     if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
//       img.setAttribute('url', blobUrl);
//     } else {  
//       $('#previews').append(buildImg(targetIndex, blobUrl));
//     let limitFileField = $(".js-file_group:last").data("index");

//     if($(".js-file_group").length >= 10 ){
//       return false;
//     } else {
//       $('#menu_images').append(buildFileField(fileIndex));

//     }
//     }
//   });

//   $('#menu_images').on('click', '.js-remove', function() {
//     let limitFileField = $(".js-file_group:last").data("index");
//     const targetIndex = $(this).parent().data('index')
//     const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
//     if (hiddenCheck) hiddenCheck.prop('checked', true);
//     $(this).parent().remove();
//     $(`img[data-index="${targetIndex}"]`).remove();
//     if ((targetIndex == limitFileField ) || ($(".js-file_group").length >= 9)) ($('#menu_images').append(buildFileField(fileIndex)));
//   });
// });

// // function validator(){
// //   var name = document.getElementById("<%= form.text_field :name,{:class=>'form-control',:id=>'Name' } %>"); 

// //   if (name.value == "") {

// //     document.getElementById("Name").innerHTML = "Required Field cannot be left blank";

// //     document.getElementById("Name").focus();

// //     return false;
// //   }
// //     return true;
// // }


// $(function() {
  
//   $("form[name='registration']").validate({
    
//     rules: {
      
//       name: "required",
//       lastname: "required",
//       email: {
//         required: true,
        
//         email: true
//       },
//       password: {
//         required: true,
//         minlength: 5
//       }
//     },
//     messages: {
//       firstname: "Please enter your firstname",
//       lastname: "Please enter your lastname",
//       password: {
//         required: "Please provide a password",
//         minlength: "Your password must be at least 5 characters long"
//       },
//       email: "Please enter a valid email address"
//     },
    
//     submitHandler: function(form) {
//       form.submit();
//     }
//   });
// });


$(document).ready(function(){
  $('#article_form').validate()  
})
// show/hide password text
$(".toggle-password").click(function() {
    $(this).toggleClass("fa-eye fa-eye-slash");
    
    const password = $(".password");
    password.attr('type') === 'password' ? password.attr('type','text') : password.attr('type','password')
});


const labels = document.querySelectorAll('.label')
const formInputs = document.querySelectorAll('form div input')


formInputs.forEach(formInput => {

  formInput.addEventListener('mouseover',() => {
    formInput.previousElementSibling.classList.add('label-up')
  })

  formInput.addEventListener('mouseleave',() => {
    if(formInput.value !== ''){
      formInput.previousElementSibling.classList.add('label-up')
      return
    }
    if(document.activeElement === formInput){
      formInput.previousElementSibling.classList.add('label-up')
      return
    }
    formInput.previousElementSibling.classList.remove('label-up')
  })
  
   formInput.addEventListener('blur',() => {
     if(formInput.value !== ''){
       formInput.previousElementSibling.classList.add('label-up')
       return
     }
    formInput.previousElementSibling.classList.remove('label-up')
  })
  
})






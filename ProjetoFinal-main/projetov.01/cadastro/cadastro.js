'use strict'

const myForm = document.getElementById("signup");
myForm.addEventListener('submit',gravar);

function gravar(e){
    e.preventDefault();
    const formData = new FormData(this);
    const searchParams = new URLSearchParams();

    for(const par of formDate){
    searchParams.append(par[0],par[1]);
}
    fetch('login2.php',{
        method:'POST',
        body:formData
    }).then(function(response){
        document.getElementById('userName_usuario').value=" ";
        document.getElementById('nome_usuario').value=" ";
        document.getElementById('email_usuario').value=" ";
        document.getElementById('senha_usuario').value=" ";
        document.getElementById('telefone_usuario').value=" ";
        return alert('Dados gravados com sucesso!');
    }).catch(function(error){
        console.log(error);
    });
}
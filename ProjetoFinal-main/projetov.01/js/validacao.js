function logar(){
         /*Verifica se há valores inseridos nos campos da tela de login */
         var login = document.getElementById('login').value;
         var senha = document.getElementById('senha').value;
         
         /*Se login for preenchido com admin e senha admin, sucesso login efetuado */
         if(login == "admin" && senha == "admin"){
            alert('Login efetuado com sucesso');
            location.href="paginainicial.html";
         }

         /*Caso não seja preenchido corretamente */
         else{
            alert('Usuario ou senha incorretos')
         }
       }   
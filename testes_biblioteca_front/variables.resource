*** Variables ***
${URL}                    http://sistemas.t2mlab.com:3008/
${BROWSER}                chrome
${EMAIL}                  gestor_sb
${SENHA}                  123
${NOME_DOMINIO}           Teste Automatizado
${NOME_CATEGORIA}         Categoria testeee
# ${NOME}                   FakerLibrary.name

${LANDING_BUTTON}         xpath=//div[@title='Sistema de Biblioteca']//button
${DOMINIO_BUTTON}            xpath=//div[@class="sc-aXZVg jawhTA"]//button[text()="Domínio"] 
${CATEGORIA_BUTTON}            xpath=//div[@class="sc-aXZVg jawhTA"]//button[text()="Categoria"] 
${CADASTRAR_DOMINIO_BUTTON}       xpath=//div[@class="sc-aXZVg jawhTA"]//button[text()="Cadastrar Domínio"]
${CADASTRAR_CATEGORIA_BUTTON}       xpath=//div[@class="sc-aXZVg jawhTA"]//button[text()="Cadastrar Categoria"]
${BUSCAR_DOMINIO_BUTTON}       xpath=//div[@class="sc-aXZVg jawhTA"]//button[text()="Buscar Domínio"]
${MODAL_CONFIRM_BUTTON}   xpath=//div[@class="modal-footer"]//div[@class="sc-aXZVg bgiAWQ"]//button
${LOGOUT_BUTTON}          xpath=(//*[contains(text(), "Sair")])[2]
${LOGOUT_MODAL}           xpath=//*[contains(text(), "Sim")]

# Página de Login
&{LOGIN_PAGE}
...    EmailInput=id:formBasicEmail
...    PasswordInput=id:formBasicPassword
...    LoginButton=xpath=//div[@class='sc-aXZVg keSpkO']//button

&{CADASTRAR_DOMINIO_PAGE}
...    NameInput=id:nomeDominio
...    CadastrarButton=xpath=//div[@class="sc-aXZVg bgiAWQ"]//button

&{CADASTRAR_CATEGORIA_PAGE}
...    NameInput=xpath=//input[@id="nomeCategoria"]
...    DominioSelect=xpath=//select[@id="nomeCategoria"]
...    CadastrarButton=xpath=//div[@class="sc-aXZVg bgiAWQ"]//button
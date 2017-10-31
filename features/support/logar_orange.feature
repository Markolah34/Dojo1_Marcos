#language: pt
#utf-8
@site
Funcionalidade: Site Orange
 Eu como usuario de internet
 Quero me cadastrar no orange
 Para saber informacoes

 @cadastro	
  Cenario: Cadastrar novo empregado
    Dado que esteja no site orange
    Quando preencher as informacoes de cadastro
    Entao  criara novo cadastro 

  @editar
  Cenario: Editar empregado
  Dado que esteja na tela Employee Information	
  Quando editar as informações
  Então alteração efetuada com sucesso
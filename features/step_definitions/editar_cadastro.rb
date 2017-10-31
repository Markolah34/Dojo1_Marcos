Dado("que esteja na tela Employee Information") do
 visit 'http://opensource.demo.orangehrmlive.com/'
 fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
end

Quando("editar as informações") do
fill_in('empsearch_employee_name_empName', :with => 'Viviane')
click_button('searchBtn')
click_link('Viviane')
click_button('Edit')
fill_in('personal[txtEmpFirstName]', :with => 'Hernanes')
fill_in('personal[txtEmpLastName]', :with => 'Default')
click_button('btnSave')
end

Então("alteração efetuada com sucesso") do
assert_text('Successfully Saved')  
end
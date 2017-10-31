Dado("que esteja no site orange") do
  visit 'http://opensource.demo.orangehrmlive.com/'
end

Quando("preencher as informacoes de cadastro") do
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
  fill_in('firstName', :with => 'Viviane')
  fill_in('lastName', :with => 'Default')
  fill_in('employeeId', :with => '7589')
  click_button('btnSave')
end

Entao("criara novo cadastro") do
  assert_text('Personal Details')
  assert_text('Viviane Default')
end
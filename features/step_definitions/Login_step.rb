Quando("eu faço login com {string} e {string}") do |email, password|

  @login_page.go
  @login_page.with(email, password)
end
  

Então("devo ver {string} na área logada") do |expect_name|
  
  expect(@user_page.logged_user).to eql expect_name
end


Então("devo ver a mensagem de alerta {string}") do |expect_message|

  expect(@alert_page.alert).to eql expect_message
end
  
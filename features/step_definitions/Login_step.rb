

Quando("eu faço login com {string} e {string}") do |email, password|

    visit "/"
    find('#emailId').set email
    find('#passId').set password
    sleep 3
    click_button "Entrar"
end

Então("devo ser autenticado") do
pending # Write code here that turns the phrase above into concrete actions
end

Então("devo ver {string} na área logada") do |string|
pending # Write code here that turns the phrase above into concrete actions
end
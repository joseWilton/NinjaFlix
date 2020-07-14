Before do
    @login_page = LoginPage.new
    @user_page  = SidebarView.new
    @alert_page = LoginPage.new
    @movie_page = Movie_page.new
end

Before("@login") do

    user = CONFIG["users"]["cat_manager"]
    @login_page.go
    @login_page.with(user["email"],user["pass"])
end
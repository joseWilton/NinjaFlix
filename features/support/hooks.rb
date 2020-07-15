require 'report_builder'
require 'date'

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

After do

    temp_shot = page.save_screenshot("log/temp_shot.png")
    screenshot = Base64.encode64(File.open(temp_shot, "rb").read)
    embed(screenshot, "image/png", "Screenshot")
end

d = DateTime.now
@current_date = d.to_s.tr(":", "-")
at_exit do

    ReportBuilder.configure do |config|
        config.input_path = 'log/report.json'
        config.report_path = 'log/'+ @current_date
        config.report_types = [:retry, :html]
        config.report_title = 'NinjaFlix -WebApp'
        config.additional_info = {"App" => "Web", "Data de execução" => @current_date}
    end
    ReportBuilder.build_report
end

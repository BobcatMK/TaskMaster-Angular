require 'rails_helper'

    describe "Testing angular view home page",js: true do

        before(:each) do
            @tekst1 = "Welcome to TaskMaster"
            @tekst2 = "This application was made for you!"
            @tekst3 = "How do I know that?"
            @tekst4 = "Because you are human being and you have things to do. And since you have things to do on daily basis, you know how hard it is sometimes to remember every single thing."
            @tekst5 = "And this is where TaskMaster comes into game."
            @tekst6 = "Simply put, this app will help you organize your life."
            @tekst7 = "Have a great time using TaskMaster!"
        end

        it "root home page should have proper content" do
            visit "/"
            test_selector(
                "p[class='m-t-15 droid-sans color-337ab7 font-30-bold']",
                "button[class='btn btn-primary m-r-20']",
                "a[class='btn btn-primary btn-lg font-20 font-bold']"
            )
            test_page(
                "TaskMaster",
                "Log in",
                "Sign up",
                "Contact",
                [@tekst1,@tekst2,@tekst3,@tekst4,@tekst5,@tekst6,@tekst7],
                "Copyright © 2014 Matthew Kilan"
            )

        end

        it "unused route should always show home page" do
            visit "/#{rand(100)}"
            test_page(
                [@tekst1,@tekst2,@tekst3,@tekst4,@tekst5,@tekst6,@tekst7]
            )
        end

        it "should have fully responsive navbar" do
            visit "/"
            expect(page).not_to(have_css("button.m-t--50"))

            page.execute_script("$('button.m-t--50').css('display','inline')") # Making sure that button becomes visible for Capybara

            expect(page).to(have_css("button.m-t--50"))
            click_button("navbar_changer")
            expect(page).to(have_css("button.btn-block.m-t-10"))
            expect(page).not_to(have_css("button.btn.btn-primary.m-r-20"))
            click_button("navbar_changer")
            expect(page).to(have_css("button.btn.btn-primary.m-r-20"))
            expect(page).not_to(have_css("button.btn-block.m-t-10"))
            # expect(menu_changer).have_css("[]")
            # expect(menu_changer[:style]).to match(/display: none/) 
        end
    end

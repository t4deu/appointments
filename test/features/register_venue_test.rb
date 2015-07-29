require "test_helper"

feature "Register Venue" do
  scenario "User enters valid input" do
    visit "/venues/new"

    within "#new_venue" do
      fill_in "Name", with: "Aragorn"
      fill_in "Email", with: "robert@westeros.gov"
      fill_in "Phone",  with: "21142224"
      fill_in "Cell", with: "32224444"
      fill_in "Zapzap", with: "+55 6622 7771"
      fill_in "City", with: "Gondor"
      fill_in "State", with: "ME"
      fill_in "Zip", with: "1359"
      fill_in "Address", with: "Big white castle"

      click_button "Create Venue"
    end

    page.must_have_content "Venue was successfully created."
    page.wont_have_selector  "form#new_venue"
  end

 scenario "User enters invalid input" do
    visit "/venues/new"

    within "#new_venue" do
      fill_in "Name", with: "      "
      fill_in "Email", with: "robertwesteros.gov"
      fill_in "Phone",  with: "21!ww"
      fill_in "Cell", with: "322"
      fill_in "Zapzap", with: " "
      fill_in "City", with: ""
      fill_in "State", with: ""
      fill_in "Zip", with: "1359we "
      fill_in "Address", with: "   "

      click_button "Create Venue"
    end

    page.must_have_selector "form#new_venue"
    page.wont_have_content "Venue was successfully created."
  end

end

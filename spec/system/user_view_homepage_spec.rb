require 'rails_helper'

describe 'Usuário visita homepage' do
  it "e vê título da página" do
    
    visit root_path

    expect(page).to have_content "Projeto Star Wars"  
  end
  
  it "e vê planetas cadastrados" do

    visit root_path

    expect(page).to have_content "Tatooine"
    expect(page).to have_content "Alderaan"
    expect(page).to have_content "Yavin IV"
    expect(page).to have_content "Hoth"
    expect(page).to have_content "Dagobah"
    expect(page).to have_content "Naboo"
    
  end
  
  
end
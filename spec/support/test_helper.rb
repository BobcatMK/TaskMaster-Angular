module TestHelper
    def test_page(*a)
        a.each do |item|
            if item.is_a?(Array)
                item.each do |array_item|
                    expect(page).to(have_content(array_item))
                end
            else
                expect(page).to(have_content(item))
            end
        end
    end

    def test_selector(*a)
        a.each do |item|
            expect(page).to(have_selector(item))
        end
    end
end
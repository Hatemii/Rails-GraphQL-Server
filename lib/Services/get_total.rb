module Services
    class GetTotal

        def self.get_total(anValue)
            total = 0
            if anValue < 5
                total = anValue + 5
            
            elsif anValue > 5
                total = anValue + 10
            end

            total
        end
    end
end
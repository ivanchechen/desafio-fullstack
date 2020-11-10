class Project < ApplicationRecord
    has_many :activities


    def late
        date_now = Date.today
        if date_now > self.end_date
            return "Sim"
        else
            return "Não"
        end
    end 
    def complete
        finished = 0.0
        qtd_activities = self.activities.count
        self.activities.each do |activity| 
            if activity.finished  
                finished = finished + 1
            end
        end
        if qtd_activities != 0
            return "#{((finished / qtd_activities) * 100).round }%"
        else
            return "Sem atividades"
        end
        
    end 
end
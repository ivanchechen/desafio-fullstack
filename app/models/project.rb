class Project < ApplicationRecord
    has_many :activities

    def late
        Date.today > end_date ? "Sim" : "Não"
    end 

    def complete
        finished = 0.0
        qtd_activities = self.activities.count
        activities.each do |activity| 
            if activity.finished  
                finished = finished + 1
            end
        end

        qtd_activities != 0 ? "#{((finished / qtd_activities) * 100).round }%" : "Sem atividades"
      
    end 
end
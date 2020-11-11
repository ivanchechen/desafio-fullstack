class Activity < ApplicationRecord
  belongs_to :project

  validates  :id_project , :presence => { :message => "Id do projeto é obrigatório !"}
  validates  :name , :presence => { :message => "Nome da atividade é obrigatório !"}
  validates  :init_date , :presence => { :message => "Data de início da atividade é obrigatório !"}
  validates  :end_date , :presence => { :message => "Date de fim da atividade é obrigatório !"}
end

class Propostum < ActiveRecord::Base
     validates :nome, presence: {message: 'deve ser informado!'},
                     length: {in: 3..100, message: 'deve conter entre 3 e 100 caracteres!'}
     validates_presence_of :descricao, message: 'não pode ser deixado em branco'
     validates :valor,  :numericality => {:greater_than => 0,  message: 'deve ser informado e não pode ser zero ou negativo!' }
     validates_presence_of :inicio, message: 'não pode ser deixado em branco'
     validates_presence_of :fim, message: 'não pode ser deixado em branco'
     validates_presence_of :cidade, message: 'não pode ser deixado em branco'
     
     def cidade_name
          cidade.try(:name)
     end
     
     def cidade_name=(name)
          self.cidade = Cidade.find_or_create_by_name(name) if name.present?
     end
    
end

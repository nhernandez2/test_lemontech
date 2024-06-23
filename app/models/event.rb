class Event < ApplicationRecord
    belongs_to :user
    validate :expiration_date_cannot_be_in_the_past?
    validates :name, presence: { message: "El Nombre del evento es obligatorio." }
    validates :description, presence: { message: "La Descripción del evento es obligatoria." }
    validates :location, presence: { message: "La ubicación del evento es obligatoria." }
    validates :capacity, presence: { message: "La capacidad del evento no puede ser inferior a 1." }


    def expiration_date_cannot_be_in_the_past?
        if date.present? && date < Date.today
          errors.add(:date, "La fecha del evento no puede ser inferior a hoy. ")
        end
        if !date.present?
            errors.add(:date, "Debe ingresar una fecha.")
        end
    end
end

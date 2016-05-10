class MapPost < ActiveRecord::Base
    has_many :mapComments
end

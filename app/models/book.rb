class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  has_attached_file :image,  styles: { thumb: ["400x300#", :jpg],
                                       original: ['500x500>', :jpg] },
                    convert_options: { thumb: "-quality 75 -strip",
                                       original: "-quality 85 -strip" }


  validates_attachment :image,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end

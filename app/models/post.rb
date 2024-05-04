class Post < ApplicationRecord
    enum :status, { designing: 0, development: 1 , mobile: 2 }

end

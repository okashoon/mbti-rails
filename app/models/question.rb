class Question < ApplicationRecord
    enum dimension: {EI: 0, SN: 1, TF: 2, JP: 3}
    enum meaning: {E: 0, I: 1, S: 2, N: 3, T: 4, F: 5, J: 6, P:7}

    has_many :answers
    has_many :submissions
end

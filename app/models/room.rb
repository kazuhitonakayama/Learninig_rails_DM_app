class Room < ApplicationRecord
    has_many :messages, dependent: :destroy
    has_many :entries, dependent: :destroy
    # 通知機能
    has_many :notifications, dependent: :destroy
end

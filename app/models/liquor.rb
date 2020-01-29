class Liquor < ActiveHash::Base
  self.data = [
      {id: 1, name: '日本酒'},
      {id: 3, name: '焼酎'},
      {id: 2, name: 'ビール'},
      {id: 3, name: 'ワイン'},
      {id: 3, name: 'ウイスキー'},
      {id: 3, name: 'ブランデー'},
      {id: 3, name: 'カクテル各種'},
      {id: 3, name: 'その他'},
  ]
end
class Liquor < ActiveHash::Base
  self.data = [
      {id: 1, name: '日本酒'},
      {id: 2, name: '焼酎'},
      {id: 3, name: 'ビール'},
      {id: 4, name: 'ワイン'},
      {id: 5, name: 'ウイスキー'},
      {id: 6, name: 'ブランデー'},
      {id: 7, name: 'カクテル各種'},
      {id: 8, name: 'その他'},
  ]
end
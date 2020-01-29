class Taste < ActiveHash::Base
  self.data = [
      {id: 1, name: '甘口'},
      {id: 2, name: 'やや甘口'},
      {id: 3, name: '辛口'},
      {id: 4, name: 'やや辛口'},
      {id: 5, name: '飲みやすい'},
      {id: 6, name: '癖がある'},
      {id: 7, name: '香りが良い'},
      {id: 8, name: 'その他'},
  ]
end
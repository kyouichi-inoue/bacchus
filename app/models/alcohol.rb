class Alcohol < ActiveHash::Base
  self.data = [
      {id: 1, name: 'ノンアルコール'},
      {id: 2, name: '3％以下'},
      {id: 3, name: '5％'},
      {id: 4, name: '8％前後'},
      {id: 5, name: '12〜18％'},
      {id: 6, name: '19〜22％'},
      {id: 7, name: '25％前後'},
      {id: 8, name: '35％前後'},
      {id: 9, name: '40％以上'},
      {id: 10, name: '不明'},
  ]
end
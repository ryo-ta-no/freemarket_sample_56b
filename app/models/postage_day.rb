class PostageDay < ActiveHash::Base
  self.data = [ 
                {id: 1, postage_day: '1~2日で発送'},
                {id: 2, postage_day: '2~3日で発送'},
                {id: 3, postage_day: '4~7日で発送'}
  ]
end

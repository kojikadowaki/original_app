class MenuTax < ActiveHash::Base
  self.data = [
    {id: 1, menu_tax: '税込み'}, {id: 2, menu_tax: '税抜き'}
  ]
end
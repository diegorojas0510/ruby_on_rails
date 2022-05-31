class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    # raise 'Implement the BoutiqueInventory#item_names method'
    @items.map { |name| name[:name] }.sort # iteramos con un map, para que me devuelva un array de string y estos podemos ordenarlos con sort
  end

  def cheap
    #raise 'Implement the BoutiqueInventory#cheap method'
    @items.select { |key| key[:price] < 30 } # Se usa el select para retornar falso o verdade en una matriz
    # https://www.geeksforgeeks.org/ruby-array-select-function/
    # https://www.geeksforgeeks.org/ruby-hash-select-method-2/
  end

  def out_of_stock
    # raise 'Implement the BoutiqueInventory#out_of_stock method'
    @items.select { |key| key[:quantity_by_size] == {} }
  end

  def stock_for_item(name)
    # raise 'Implement the BoutiqueInventory#stock_for_item method'
    @items.find { |articule| articule[:name] == name }&.fetch(:quantity_by_size)
    # @items.each do |articule|
    #   articule[:name] == name
    #   fetch(:quantity_by_size)
    # end
  end

  def total_stock
    # raise 'Implement the BoutiqueInventory#total_stock method'
    @items.map { |total| total[:quantity_by_size].values }.flatten.sum # Se utiliza el map para iterar sobre el hash y traer el valor de esa llave al tener una matriz se utiliza el flaten para agrupar en un solo lugar u poder hacer la suma
    #buscar como funciona flatten para poderlo hacer
  end

  private
  attr_reader :items
end

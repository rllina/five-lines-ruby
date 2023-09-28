require 'ruby2d'

TILE_SIZE = 30
FPS = 30
SLEEP = 1000 / FPS

class Up
  def handle_input
    moveVertical(-1)
  end
end

class Down
  def handle_input
    moveVertical(1)
  end
end

class Left
  def handle_input
    moveHorizontal(-1)
  end
end

class Right
  def handle_input
    moveHorizontal(1)
  end
end

class Air
  def is_air?
    true
  end

  def is_flux?
    false
  end

  def is_unbreakable?
    false
  end

  def is_player?
    false
  end

  def is_stone?
    false
  end

  def is_falling_stone?
    false
  end

  def is_box?
    false
  end

  def is_falling_box?
    false
  end

  def is_key1?
    false
  end

  def is_lock1?
    false
  end

  def is_key2?
    false
  end

  def is_lock2?
    false
  end
end

class Flux
  def is_air?
    false
  end

  def is_flux?
    true
  end

  def is_unbreakable?
    false
  end

  def is_player?
    false
  end

  def is_stone?
    false
  end

  def is_falling_stone?
    false
  end

  def is_box?
    false
  end

  def is_falling_box?
    false
  end

  def is_key1?
    false
  end

  def is_lock1?
    false
  end

  def is_key2?
    false
  end

  def is_lock2?
    false
  end
end

class Unbreakable
  def is_air?
    false
  end

  def is_flux?
    false
  end

  def is_unbreakable?
    true
  end

  def is_player?
    false
  end

  def is_stone?
    false
  end

  def is_falling_stone?
    false
  end

  def is_box?
    false
  end

  def is_falling_box?
    false
  end

  def is_key1?
    false
  end

  def is_lock1?
    false
  end

  def is_key2?
    false
  end

  def is_lock2?
    false
  end
end

class Player
  def is_air?
    false
  end

  def is_flux?
    false
  end

  def is_unbreakable?
    false
  end

  def is_player?
    true
  end

  def is_stone?
    false
  end

  def is_falling_stone?
    false
  end

  def is_box?
    false
  end

  def is_falling_box?
    false
  end

  def is_key1?
    false
  end

  def is_lock1?
    false
  end

  def is_key2?
    false
  end

  def is_lock2?
    false
  end
end

class Stone
  def is_air?
    false
  end

  def is_flux?
    false
  end

  def is_unbreakable?
    false
  end

  def is_player?
    false
  end

  def is_stone?
    true
  end

  def is_falling_stone?
    false
  end

  def is_box?
    false
  end

  def is_falling_box?
    false
  end

  def is_key1?
    false
  end

  def is_lock1?
    false
  end

  def is_key2?
    false
  end

  def is_lock2?
    false
  end
end

class FallingStone
  def is_air?
    false
  end

  def is_flux?
    false
  end

  def is_unbreakable?
    false
  end

  def is_player?
    false
  end

  def is_stone?
    false
  end

  def is_falling_stone?
    true
  end

  def is_box?
    false
  end

  def is_falling_box?
    false
  end

  def is_key1?
    false
  end

  def is_lock1?
    false
  end

  def is_key2?
    false
  end

  def is_lock2?
    false
  end
end

class Box
  def is_air?
    false
  end

  def is_flux?
    false
  end

  def is_unbreakable?
    false
  end

  def is_player?
    false
  end

  def is_stone?
    false
  end

  def is_falling_stone?
    false
  end

  def is_box?
    true
  end

  def is_falling_box?
    false
  end

  def is_key1?
    false
  end

  def is_lock1?
    false
  end

  def is_key2?
    false
  end

  def is_lock2?
    false
  end
end

class FallingBox
  def is_air?
    false
  end

  def is_flux?
    false
  end

  def is_unbreakable?
    false
  end

  def is_player?
    false
  end

  def is_stone?
    false
  end

  def is_falling_stone?
    false
  end

  def is_box?
    false
  end

  def is_falling_box?
    true
  end

  def is_key1?
    false
  end

  def is_lock1?
    false
  end

  def is_key2?
    false
  end

  def is_lock2?
    false
  end
end

class Key1
  def is_air?
    false
  end

  def is_flux?
    false
  end

  def is_unbreakable?
    false
  end

  def is_player?
    false
  end

  def is_stone?
    false
  end

  def is_falling_stone?
    false
  end

  def is_box?
    false
  end

  def is_falling_box?
    false
  end

  def is_key1?
    true
  end

  def is_lock1?
    false
  end

  def is_key2?
    false
  end

  def is_lock2?
    false
  end
end

class Lock1
  def is_air?
    false
  end

  def is_flux?
    false
  end

  def is_unbreakable?
    false
  end

  def is_player?
    false
  end

  def is_stone?
    false
  end

  def is_falling_stone?
    false
  end

  def is_box?
    false
  end

  def is_falling_box?
    false
  end

  def is_key1?
    false
  end

  def is_lock1?
    true
  end

  def is_key2?
    false
  end

  def is_lock2?
    false
  end
end

class Key2
  def is_air?
    false
  end

  def is_flux?
    false
  end

  def is_unbreakable?
    false
  end

  def is_player?
    false
  end

  def is_stone?
    false
  end

  def is_falling_stone?
    false
  end

  def is_box?
    false
  end

  def is_falling_box?
    false
  end

  def is_key1?
    false
  end

  def is_lock1?
    false
  end

  def is_key2?
    true
  end

  def is_lock2?
    false
  end
end

class Lock2
  def is_air?
    false
  end

  def is_flux?
    false
  end

  def is_unbreakable?
    false
  end

  def is_player?
    false
  end

  def is_stone?
    false
  end

  def is_falling_stone?
    false
  end

  def is_box?
    false
  end

  def is_falling_box?
    false
  end

  def is_key1?
    false
  end

  def is_lock1?
    false
  end

  def is_key2?
    false
  end

  def is_lock2?
    true
  end
end

$playerx = 1
$playery = 1

$map = [
  [2, 2, 2, 2, 2, 2, 2, 2],
  [2, 3, 0, 1, 1, 2, 0, 2],
  [2, 4, 2, 6, 1, 2, 0, 2],
  [2, 8, 4, 1, 1, 2, 0, 2],
  [2, 4, 1, 1, 1, 9, 0, 2],
  [2, 2, 2, 2, 2, 2, 2, 2],
]


$tile_map = $map.map do |row|
  row.map do |tile_integer|
    case tile_integer
    when 0
      Air.new
    when 1
      Flux.new
    when 2
      Unbreakable.new
    when 3
      Player.new
    when 4
      Stone.new
    when 5
      FallingStone.new
    when 6
      Box.new
    when 7
      FallingBox.new
    when 8
      Key1.new
    when 9
      Lock1.new
    when 10
      Key2.new
    when 11
      Lock2.new
    else
      raise "Unknown tile type: #{tile_integer}"
    end
  end
end

@inputs = []

def remove(tile)
  for y in 0...$tile_map.length
    for x in 0...$tile_map[y].length
      if $tile_map[y][x].instance_of?(tile.class)
        $tile_map[y][x] = Air.new
      end
    end
  end
end

def moveToTile(newx, newy)
  $tile_map[$playery][$playerx] = Air.new
  $tile_map[newy][newx] = Player.new
  $playerx = newx
  $playery = newy
end

def moveHorizontal(dx)
  if ($tile_map[$playery][$playerx + dx].is_flux? ||
    $tile_map[$playery][$playerx + dx].is_air?)
    moveToTile($playerx + dx, $playery)
  elsif (($tile_map[$playery][$playerx + dx].is_stone? ||
    $tile_map[$playery][$playerx + dx].is_box?) &&
    $tile_map[$playery][$playerx + dx + dx].is_air? &&
    !$tile_map[$playery + 1][$playerx + dx].is_air?)
    $tile_map[$playery][$playerx + dx + dx] = $tile_map[$playery][$playerx + dx]
    moveToTile($playerx + dx, $playery)
  elsif ($tile_map[$playery][$playerx + dx].is_key1?)
    remove(Lock1.new)
    moveToTile($playerx + dx, $playery)
  elsif ($tile_map[$playery][$playerx + dx].is_key2?)
    remove(Lock2.new)
    moveToTile($playerx + dx, $playery)
  end
end

def moveVertical(dy)
  if ($tile_map[$playery + dy][$playerx].is_flux? ||
    $tile_map[$playery + dy][$playerx].is_air?)
    moveToTile($playerx, $playery + dy)
  elsif $tile_map[$playery + dy][$playerx].is_key1?
    remove(Lock1.new)
    moveToTile($playerx, $playery + dy)
  elsif $tile_map[$playery + dy][$playerx].is_key2?
    remove(Lock2.new)
    moveToTile($playerx, $playery + dy)
  end
end

def update_game
  handle_inputs
  update_tiles
end

def handle_inputs
  while @inputs.length > 0
    current = @inputs.pop
    current.handle_input
  end
end

def update_tiles
  for y in (0...$tile_map.length).to_a.reverse
    for x in 0...$tile_map[y].length
      if (($tile_map[y][x].is_stone? || $tile_map[y][x].is_falling_stone?) &&
        $tile_map[y + 1][x].is_air?)
        $tile_map[y + 1][x] = FallingStone.new
        $tile_map[y][x] = Air.new
      elsif (($tile_map[y][x].is_box? || $tile_map[y][x].is_falling_box?) &&
        $tile_map[y + 1][x].is_air?)
        $tile_map[y + 1][x] = FallingBox.new
        $tile_map[y][x] = Air.new
      elsif $tile_map[y][x].is_falling_stone?
        $tile_map[y][x] = Stone.new
      elsif $tile_map[y][x].is_falling_box?
        $tile_map[y][x] = Box.new
      end
    end
  end
end

def draw
  g = set_up_graphics

  draw_map(g)
  draw_player(g)
end

def set_up_graphics
  canvas = @document.getElementById("GameCanvas")
  g = canvas.getContext("2d")

  g.clearRect(0, 0, canvas.width, canvas.height)
  g
end

def draw_map(g)
  for y in 0...$tile_map.length
    for x in 0...$tile_map[y].length
      set_tile_color(g, x, y)
      draw_tile(g, x, y)
    end
  end
end

def set_tile_color(g, x, y)
  if $tile_map[y][x].is_flux?
    g.fillStyle = "#ccffcc"
  elsif $tile_map[y][x].is_unbreakable?
    g.fillStyle = "#999999"
  elsif $tile_map[y][x].is_stone? || $tile_map[y][x].is_falling_stone?
    g.fillStyle = "#0000cc"
  elsif $tile_map[y][x].is_box? || $tile_map[y][x].is_falling_box?
    g.fillStyle = "#8b4513"
  elsif $tile_map[y][x].is_key1? || $tile_map[y][x].is_lock1?
    g.fillStyle = "#ffcc00"
  elsif $tile_map[y][x].is_key2? || $tile_map[y][x].is_lock2?
    g.fillStyle = "#00ccff"
  end
end

def draw_tile(g, x, y)
  if !$tile_map[y][x].is_air? && !$tile_map[y][x].is_player?
    g.fillRect(x * TILE_SIZE, y * TILE_SIZE, TILE_SIZE, TILE_SIZE)
  end
end

def draw_player(g)
  g.fillStyle = "#ff0000"
  g.fillRect($playerx * TILE_SIZE, $playery * TILE_SIZE, TILE_SIZE, TILE_SIZE)
end

def gameLoop
  update_game
  draw
end

# ruby2d call to run the gameLoop
update do
  gameLoop
end

LEFT_KEY = "left"
UP_KEY = "up"
RIGHT_KEY = "right"
DOWN_KEY = "down"

on :key_down do |e|
  if e.key == LEFT_KEY || e.key == "a"
    @inputs.push(Left.new)
  elsif e.key == UP_KEY || e.key == "w"
    @inputs.push(Up.new)
  elsif e.key == RIGHT_KEY || e.key == "d"
    @inputs.push(Right.new)
  elsif e.key == DOWN_KEY || e.key == "s"
    @inputs.push(Down.new)
  elsif e.key == "escape"
    close
  end
end

# Hacks to make the ruby2d API look/act similar to the JS canvas/context/graphics API
class GraphicsObject
  attr_accessor :fillStyle

  def initialize
    @fillStyle = ""
  end

  def clearRect(x, y, width, height)
    Window.clear
    Rectangle.new(x: x, y: y, width: width, height: height, color: 'white')
  end

  def fillRect(x, y, width, height)
    Rectangle.new(x: x, y: y, width: width, height: height, color: @fillStyle)
  end

end

@document = Object.new

def @document.getElementById(id)
  canvas = Object.new

  def canvas.getContext(context)
    GraphicsObject.new
  end

  def canvas.width
    Window.width
  end

  def canvas.height
    Window.height
  end

  canvas
end

if __FILE__ == $PROGRAM_NAME
  # ruby2d call to make it all work
  show
end

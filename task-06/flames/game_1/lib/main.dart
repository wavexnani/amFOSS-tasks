import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(GameWidget(game: Keys()));
}

class Keys extends FlameGame with KeyboardEvents {
  SpriteComponent bunny = SpriteComponent();
  SpriteComponent background = SpriteComponent();

  @override
  Future<void> onLoad() async {
    add(background
      ..sprite = await loadSprite('background.png')
      ..size = size * 2.5
      ..position = Vector2(0, 0));

    bunny
      ..sprite = await loadSprite('bunny.png')
      ..size = Vector2(180, 180)
      ..position = Vector2(250, 200);
    add(bunny);
  }

  void moveBackground(Vector2 delta) {
    background.position.add(delta);

    background.position.clamp(
      Vector2(-background.size.x + size.x, -background.size.y + size.y),
      Vector2.zero(),
    );
  }

  void moveUp() {
    moveBackground(Vector2(0, 20));
  }

  void moveDown() {
    moveBackground(Vector2(0, -20));
  }

  void moveLeft() {
    moveBackground(Vector2(20, 0));
  }

  void moveRight() {
    moveBackground(Vector2(-20, 0));
  }

  // ...
  @override
  KeyEventResult onKeyEvent(
    KeyEvent event,
    Set<LogicalKeyboardKey> keysPressed,
  ) {
    if (keysPressed.contains(LogicalKeyboardKey.arrowUp)) {
      moveUp();
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowDown)) {
      moveDown();
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowLeft)) {
      moveLeft();
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowRight)) {
      moveRight();
    }

    return KeyEventResult.ignored;
  }
}

import 'dart:io';
import 'dart:math';

int getMaxBalls(int numPegs, Map<int, List<int>> lookUp) {
  if (lookUp.containsKey(numPegs)) return lookUp[numPegs]!.reduce(max);

  var (List<int> currentState, int currentBall) = _loadLastState(lookUp);
  while (currentState.length <= numPegs) {
    currentBall += 1;
    if (!_updateCurrentState(currentBall, currentState)) {
      _saveCurrentState(currentState, lookUp);
      currentState.add(currentBall);
    }
  }
  return currentBall - 1;
}

bool _updateCurrentState(int currentBall, List<int> currentState) {
  for (var (int peg, int lastBall) in currentState.indexed) {
    bool isSquareNumber = (pow(lastBall + currentBall, 0.5) % 1) == 0;
    if (isSquareNumber) {
      currentState[peg] = currentBall;
      return true;
    }
  }
  return false;
}

(List<int>, int) _loadLastState(Map<int, List<int>> lookUp) {
  List<int> lastState = lookUp.isNotEmpty ? lookUp[lookUp.keys.reduce(max)]! : [];
  int lastBall = lastState.isNotEmpty ? lastState.reduce(max) : 0;
  return (lastState, lastBall);
}

void _saveCurrentState(List<int> currentState, Map<int, List<int>> lookUp) {
  lookUp[currentState.length] = [...currentState];
}

void main() {
  Map<int, List<int>> lookUp = {};
  int t = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < t; times++) {
    int numPegs = int.parse(stdin.readLineSync()!);
    print(getMaxBalls(numPegs, lookUp));
  }
}

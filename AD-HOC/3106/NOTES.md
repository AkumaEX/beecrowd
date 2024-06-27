# Notas

### Problemas

A versão para Dart não funciona. Há um número inválido na entrada de teste do **beecrowd**.
```
Unhandled exception:
FormatException: Invalid number (at character 1)

^

#0      int._handleFormatError (dart:core-patch/integers_patch.dart:124)
#1      int.parse (dart:core-patch/integers_patch.dart:50)
#2      MappedListIterable.elementAt (dart:_internal/iterable.dart:415)
#3      ListIterator.moveNext (dart:_internal/iterable.dart:344)
#4      new _GrowableList._ofEfficientLengthIterable (dart:core-patch/growable_array.dart:189)
#5      new _GrowableList.of (dart:core-patch/growable_array.dart:150)
#6      new List.of (dart:core-patch/array_patch.dart:47)
#7      Iterable.toList (dart:core/iterable.dart:494)
#8      main (file:///judge/judge-83a6d29d23534ae48ac9bb42d9fece35.d/Main.dart:5)
#9      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:294)
#10     _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:189)
```
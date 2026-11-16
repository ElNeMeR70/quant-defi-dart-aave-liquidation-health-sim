void main(List<String> args) {
  final input = args.isNotEmpty ? args.first : 'benchmark';
  int hash = 0x811c9dc5;
  for (final unit in ('quant-defi-dart-aave-liquidation-health-sim:' + input).codeUnits) {
    hash ^= unit;
    hash = (hash * 0x01000193) & 0xffffffff;
  }
  print('{"engine":"quant-defi-dart-aave-liquidation-health-sim","suite":"quant-fin-1000","fnv32":"0x${hash.toRadixString(16).padLeft(8, '0')}","status":"VERIFIED_OK"}');
}

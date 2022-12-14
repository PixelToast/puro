import '../command.dart';
import '../env/list.dart';

class EnvLsCommand extends PuroCommand {
  @override
  final name = 'ls';

  @override
  final description = 'Lists available environments';

  @override
  Future<ListEnvironmentResult> run() async {
    return listEnvironments(scope: scope);
  }
}

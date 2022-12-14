import '../command.dart';
import '../command_result.dart';
import '../env/delete.dart';

class EnvRmCommand extends PuroCommand {
  @override
  final name = 'rm';

  @override
  final description = 'Deletes an environment';

  @override
  String? get argumentUsage => '<name>';

  @override
  Future<CommandResult> run() async {
    final name = unwrapSingleArgument();
    await deleteEnvironment(
      scope: scope,
      name: name,
    );
    return BasicMessageResult('Deleted environment `$name`');
  }
}

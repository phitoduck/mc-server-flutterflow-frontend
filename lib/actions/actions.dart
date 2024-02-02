import '/backend/api_requests/api_calls.dart';
import 'package:flutter/material.dart';

Future serverStatus(BuildContext context) async {
  ApiCallResponse? serverStatusFromActionBlock;

  serverStatusFromActionBlock = await MinecraftPlatformAsAServiceAPIGroup
      .getMinecraftServerDeploymentStatusMinecraftServerStatusGetCall
      .call();
  if (MinecraftPlatformAsAServiceAPIGroup
          .getMinecraftServerDeploymentStatusMinecraftServerStatusGetCall
          .serverStatus(
        (serverStatusFromActionBlock.jsonBody ?? ''),
      ) ==
      'SERVER_ONLINE') {
    return;
  }

  return;
}

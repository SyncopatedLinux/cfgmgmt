# linting

Use of 'ignore_errors' is discouraged. Consider using 'failed_when' instead.

Task does not enforce a state. Use 'creates' or 'removes' parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the 'changed_when' keyword to inform Ansible when the state changed. The last resort is adding a 'when' clause to the task or converting the current task into a handler.

Use of 'with_items' is discouraged. Consider using 'loop' instead.

Use of parameter 'dest' is deprecated in module 'lineinfile'. Parameter 'path' is a new alternative.

Parameter 'validate_certs' coerced from 'str' to 'bool' in module 'rpm_key'. This may cause unexpected behaviour.

Use of parameter 'dest' is deprecated in module 'lineinfile'. Parameter 'path' is a new alternative.

Use of parameter 'port' is deprecated in module 'ufw'. Parameter 'to_port' is a new alternative.

Use of parameter 'port' is deprecated in module 'ufw'. Parameter 'to_port' is a new alternative.

Parameter 'enabled' coerced from 'str' to 'bool' in module 'systemd'. This may cause unexpected behaviour.

Parameter 'daemon_reload' coerced from 'str' to 'bool' in module 'systemd'. This may cause unexpected behaviour.

Use of parameter 'name' is deprecated in module 'apt'. Parameter 'package' is a new alternative.

Use of parameter 'dest' is deprecated in module 'lineinfile'. Parameter 'path' is a new alternative.

Use of parameter 'dest' is deprecated in module 'file'. Parameter 'path' is a new alternative.



Inline passing of parameters is not good practice.

For module 'lineinfile', consider explicitly using the 'mode' parameter as a best practice.


Inline module parameters used in module 'stat' also use Jinja expression. Will not be checked further.

Required collection 'community.general' is missing from requirements.yml or requirements.yml is missing.

Inline module parameters used in module 'file' also use Jinja expression. Will not be checked further.

Tasks should always be named using the name parameter.

Inline module parameters used in module 'yum' also use Jinja expression. Will not be checked further.

Mode '{{ ssl_certs_mode }}' in module 'file' contains variables, which is not considered good practice.

Mode '{{ ssl_certs_mode }}' in module 'copy' contains variables, which is not considered good practice.

For module 'copy', consider explicitly using the 'mode' parameter as a best practice.

For module 'file', consider explicitly using the 'mode' parameter as a best practice.

For module 'template', consider explicitly using the 'mode' parameter as a best practice.

Use of module 'debug' is discouraged in production.

# spotter scan --profile full --include-values ~/Workspace/ohmannium >> linting.md

For module 'blockinfile', consider explicitly using the 'mode' parameter as a best practice.
:0:0: ERROR: [E2101] Use community.general.yaml for stdout_callback instead of yaml.
base.yml:26:7: HINT: [H805] For module ansible.builtin.file, consider explicitly using the mode parameter as a best practice.
base.yml:26:7: WARNING: [W003] Use of parameter dest is deprecated in module ansible.builtin.file. Parameter path is a new alternative.
base.yml:26:7: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
base.yml:33:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
base.yml:55:11: HINT: [H500] Use of module debug is discouraged in production.
base.yml:60:11: WARNING: [W1800] Default value for follow parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
base.yml:60:11: WARNING: [W1800] Default value for get_md5 parameter changed between module versions 2.4.6 and 2.9.0 from "yes" to false. Consider setting value of the parameter explicitly.
base.yml:60:11: WARNING: [W1800] Default value for get_mime parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
base.yml:60:11: WARNING: [W1800] Default value for get_checksum parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
base.yml:60:11: WARNING: [W1800] Default value for get_attributes parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
base.yml:60:11: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
base.yml:65:11: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
base.yml:65:11: HINT: [H2203] The playbook contains local actions or delegate_to: localhost, resulting in its execution on the controller. This means that it runs inside the Execution Environment within AAP.
base.yml:90:11: HINT: [H805] For module ansible.builtin.copy, consider explicitly using the mode parameter as a best practice.
base.yml:98:11: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
base.yml:108:11: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
base.yml:108:11: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
base.yml:183:9: HINT: [E_SHOULD_BE_REMOVED_000] Inline parameters used in module ansible.builtin.script - parameters would not be checked.
base.yml:189:9: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
nas.yml:31:7: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
nas.yml:41:7: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
nvidia.yml:9:7: WARNING: [W003] Use of parameter name is deprecated in module ansible.builtin.apt. Parameter package is a new alternative.
nvidia.yml:9:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
nvidia.yml:9:7: WARNING: [W1800] Default value for autoclean parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
nvidia.yml:9:7: WARNING: [W1800] Default value for autoremove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
nvidia.yml:9:7: WARNING: [W1800] Default value for allow_unauthenticated parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
nvidia.yml:17:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
nvidia.yml:22:7: WARNING: [W003] Use of parameter name is deprecated in module ansible.builtin.apt. Parameter package is a new alternative.
nvidia.yml:22:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
nvidia.yml:22:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
nvidia.yml:22:7: WARNING: [W1800] Default value for autoclean parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
nvidia.yml:22:7: WARNING: [W1800] Default value for autoremove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
nvidia.yml:22:7: WARNING: [W1800] Default value for allow_unauthenticated parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
nvidia.yml:30:7: HINT: [H805] For module ansible.builtin.blockinfile, consider explicitly using the mode parameter as a best practice.
nvidia.yml:30:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
nvidia.yml:40:7: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
nvidia.yml:46:7: WARNING: [W003] Use of parameter name is deprecated in module ansible.builtin.apt. Parameter package is a new alternative.
nvidia.yml:46:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
nvidia.yml:46:7: WARNING: [W1800] Default value for autoclean parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
nvidia.yml:46:7: WARNING: [W1800] Default value for autoremove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
nvidia.yml:46:7: WARNING: [W1800] Default value for allow_unauthenticated parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
nvidia.yml:56:11: WARNING: [W1800] Default value for force parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
nvidia.yml:56:11: WARNING: [W1800] Default value for use_proxy parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
nvidia.yml:56:11: WARNING: [W1800] Default value for validate_certs parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
nvidia.yml:56:11: WARNING: [W1800] Default value for force_basic_auth parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/handlers/main.yml:3:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/applications/tasks/main.yml:3:3: HINT: [H500] Use of module debug is discouraged in production.
roles/applications/tasks/main.yml:7:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/applications/tasks/main.yml:7:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/applications/tasks/main.yml:19:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/applications/tasks/main.yml:32:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/applications/tasks/main.yml:39:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/applications/tasks/main.yml:44:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/applications/tasks/main.yml:49:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/applications/tasks/main.yml:54:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/applications/tasks/main.yml:59:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/applications/tasks/mixxx.yml:3:3: HINT: [H805] For module ansible.builtin.lineinfile, consider explicitly using the mode parameter as a best practice.
roles/applications/tasks/mixxx.yml:3:3: WARNING: [W003] Use of parameter dest is deprecated in module ansible.builtin.lineinfile. Parameter path is a new alternative.
roles/applications/tasks/pulsar.yml:4:7: ERROR: [E900] Cannot find module aur information in the database. Is this a custom module not published on Ansible Galaxy?.
roles/applications/tasks/pulsar.yml:10:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/applications/tasks/pulsar.yml:10:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/applications/tasks/reaper.yml:3:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/applications/tasks/reaper.yml:3:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/reaper.yml:3:3: WARNING: [W1800] Default value for get_md5 parameter changed between module versions 2.4.6 and 2.9.0 from "yes" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/reaper.yml:3:3: WARNING: [W1800] Default value for get_mime parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/reaper.yml:3:3: WARNING: [W1800] Default value for get_checksum parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/reaper.yml:3:3: WARNING: [W1800] Default value for get_attributes parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/reaper.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/applications/tasks/reaper.yml:9:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/applications/tasks/reaper.yml:19:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/reaper.yml:19:7: WARNING: [W1800] Default value for use_proxy parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/reaper.yml:19:7: WARNING: [W1800] Default value for validate_certs parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/reaper.yml:19:7: WARNING: [W1800] Default value for force_basic_auth parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/reaper.yml:32:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/applications/tasks/sonicannotator.yml:3:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/applications/tasks/sonicannotator.yml:3:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/sonicannotator.yml:3:3: WARNING: [W1800] Default value for get_md5 parameter changed between module versions 2.4.6 and 2.9.0 from "yes" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/sonicannotator.yml:3:3: WARNING: [W1800] Default value for get_mime parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/sonicannotator.yml:3:3: WARNING: [W1800] Default value for get_checksum parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/sonicannotator.yml:3:3: WARNING: [W1800] Default value for get_attributes parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/sonicannotator.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/applications/tasks/sonicannotator.yml:10:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/sonicannotator.yml:10:7: WARNING: [W1800] Default value for use_proxy parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/sonicannotator.yml:10:7: WARNING: [W1800] Default value for force_basic_auth parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/sonicannotator.yml:16:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/applications/tasks/soniclineup.yml:3:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/applications/tasks/soniclineup.yml:3:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/soniclineup.yml:3:3: WARNING: [W1800] Default value for get_md5 parameter changed between module versions 2.4.6 and 2.9.0 from "yes" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/soniclineup.yml:3:3: WARNING: [W1800] Default value for get_mime parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/soniclineup.yml:3:3: WARNING: [W1800] Default value for get_checksum parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/soniclineup.yml:3:3: WARNING: [W1800] Default value for get_attributes parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/soniclineup.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/applications/tasks/soniclineup.yml:10:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/soniclineup.yml:10:7: WARNING: [W1800] Default value for use_proxy parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/soniclineup.yml:10:7: WARNING: [W1800] Default value for force_basic_auth parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/soniclineup.yml:16:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/applications/tasks/termpdf.yml:4:7: HINT: [H1003] Inline module parameters used in module ansible.builtin.stat also use Jinja expression. Will not be checked further.
roles/applications/tasks/tony.yml:3:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/applications/tasks/tony.yml:3:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/tony.yml:3:3: WARNING: [W1800] Default value for get_md5 parameter changed between module versions 2.4.6 and 2.9.0 from "yes" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/tony.yml:3:3: WARNING: [W1800] Default value for get_mime parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/tony.yml:3:3: WARNING: [W1800] Default value for get_checksum parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/tony.yml:3:3: WARNING: [W1800] Default value for get_attributes parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/tony.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/applications/tasks/tony.yml:10:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/tony.yml:10:7: WARNING: [W1800] Default value for use_proxy parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/tony.yml:10:7: WARNING: [W1800] Default value for force_basic_auth parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/tony.yml:16:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/applications/tasks/touchosc.yml:3:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/applications/tasks/touchosc.yml:3:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:3:3: WARNING: [W1800] Default value for get_md5 parameter changed between module versions 2.4.6 and 2.9.0 from "yes" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:3:3: WARNING: [W1800] Default value for get_mime parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:3:3: WARNING: [W1800] Default value for get_checksum parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:3:3: WARNING: [W1800] Default value for get_attributes parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/applications/tasks/touchosc.yml:10:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:10:7: WARNING: [W1800] Default value for use_proxy parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:10:7: WARNING: [W1800] Default value for validate_certs parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:10:7: WARNING: [W1800] Default value for force_basic_auth parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:15:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/applications/tasks/touchosc.yml:25:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/applications/tasks/touchosc.yml:25:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:25:3: WARNING: [W1800] Default value for get_md5 parameter changed between module versions 2.4.6 and 2.9.0 from "yes" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:25:3: WARNING: [W1800] Default value for get_mime parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:25:3: WARNING: [W1800] Default value for get_checksum parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:25:3: WARNING: [W1800] Default value for get_attributes parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:25:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/applications/tasks/touchosc.yml:32:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:32:7: WARNING: [W1800] Default value for use_proxy parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:32:7: WARNING: [W1800] Default value for validate_certs parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:32:7: WARNING: [W1800] Default value for force_basic_auth parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/touchosc.yml:37:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/applications/tasks/vamp.yml:3:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/applications/tasks/vamp.yml:3:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/vamp.yml:3:3: WARNING: [W1800] Default value for get_md5 parameter changed between module versions 2.4.6 and 2.9.0 from "yes" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/vamp.yml:3:3: WARNING: [W1800] Default value for get_mime parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/vamp.yml:3:3: WARNING: [W1800] Default value for get_checksum parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/vamp.yml:3:3: WARNING: [W1800] Default value for get_attributes parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/vamp.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/applications/tasks/vamp.yml:11:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/vamp.yml:11:7: WARNING: [W1800] Default value for use_proxy parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/vamp.yml:11:7: WARNING: [W1800] Default value for validate_certs parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/vamp.yml:11:7: WARNING: [W1800] Default value for force_basic_auth parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/applications/tasks/vamp.yml:17:7: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/applications/tasks/vamp.yml:17:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/applications/tasks/vamp.yml:25:7: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/audio/handlers/main.yml:3:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/audio/handlers/main.yml:9:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/audio/handlers/main.yml:15:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/audio/handlers/main.yml:15:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/audio/tasks/jack.yml:24:3: HINT: [H805] For module ansible.builtin.copy, consider explicitly using the mode parameter as a best practice.
roles/audio/tasks/jack.yml:38:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/audio/tasks/main.yml:3:3: HINT: [H500] Use of module debug is discouraged in production.
roles/audio/tasks/main.yml:7:3: HINT: [H805] For module ansible.builtin.lineinfile, consider explicitly using the mode parameter as a best practice.
roles/audio/tasks/main.yml:7:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/audio/tasks/main.yml:15:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/audio/tasks/main.yml:19:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/audio/tasks/main.yml:23:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/audio/tasks/pulseaudio.yml:3:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/audio/tasks/pulseaudio.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/audio/tasks/pulseaudio.yml:18:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/audio/tasks/pulseaudio.yml:25:3: HINT: [H805] For module ansible.builtin.lineinfile, consider explicitly using the mode parameter as a best practice.
roles/audio/tasks/pulseaudio.yml:25:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/audio/tasks/tuning.yml:3:3: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/audio/tasks/tuning.yml:3:3: WARNING: [W1800] Default value for remove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/audio/tasks/tuning.yml:3:3: WARNING: [W1800] Default value for system parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/audio/tasks/tuning.yml:3:3: WARNING: [W1800] Default value for move_home parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/audio/tasks/tuning.yml:3:3: WARNING: [W1800] Default value for non_unique parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/audio/tasks/tuning.yml:29:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/audio/tasks/tuning.yml:37:7: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/audio/tasks/tuning.yml:49:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/audio/tasks/tuning.yml:61:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/audio/tasks/tuning.yml:72:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/audio/tasks/tuning.yml:82:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/audio/tasks/tuning.yml:94:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/audio/tasks/tuning.yml:102:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/audio/tasks/tuning.yml:112:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/base/handlers/main.yml:14:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/base/handlers/main.yml:14:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/base/tasks/autologin.yml:4:7: HINT: [H805] For module ansible.builtin.file, consider explicitly using the mode parameter as a best practice.
roles/base/tasks/autologin.yml:4:7: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/base/tasks/autologin.yml:4:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/base/tasks/autologin.yml:11:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/autologin.yml:23:7: ERROR: [E900] Cannot find module aur information in the database. Is this a custom module not published on Ansible Galaxy?.
roles/base/tasks/autologin.yml:36:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/base/tasks/autologin.yml:36:7: WARNING: [W1800] Default value for remove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/base/tasks/autologin.yml:36:7: WARNING: [W1800] Default value for system parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/base/tasks/autologin.yml:36:7: WARNING: [W1800] Default value for move_home parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/base/tasks/autologin.yml:36:7: WARNING: [W1800] Default value for non_unique parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/base/tasks/autologin.yml:42:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/autologin.yml:51:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/autologin.yml:60:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/base/tasks/autologin.yml:60:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/filesystem.yml:15:3: ERROR: [E900] Cannot find module aur information in the database. Is this a custom module not published on Ansible Galaxy?.
roles/base/tasks/filesystem.yml:26:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/filesystem.yml:45:7: WARNING: [W008] Parameter daemon_reload coerced from str to bool in module ansible.builtin.systemd. This may cause unexpected behaviour.
roles/base/tasks/filesystem.yml:45:7: WARNING: [W008] Parameter enabled coerced from str to bool in module ansible.builtin.systemd. This may cause unexpected behaviour.
roles/base/tasks/filesystem.yml:45:7: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/base/tasks/filesystem.yml:57:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/base/tasks/filesystem.yml:57:7: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/base/tasks/firewall.yml:10:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead. View docs at https://docs.steampunk.si/plugins/ansible/posix/1.5.2/module/firewalld.html.
roles/base/tasks/firewall.yml:10:7: WARNING: [W2602] Unknown Python imports in module ansible.posix.firewalld: [firewall.client].
roles/base/tasks/firewall.yml:22:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead. View docs at https://docs.steampunk.si/plugins/ansible/posix/1.5.2/module/firewalld.html.
roles/base/tasks/firewall.yml:22:7: WARNING: [W2602] Unknown Python imports in module ansible.posix.firewalld: [firewall.client].
roles/base/tasks/firewall.yml:59:7: WARNING: [W003] Use of parameter port is deprecated in module community.general.ufw. Parameter to_port is a new alternative. View docs at https://docs.steampunk.si/plugins/community/general/6.6.0/module/ufw.html.
roles/base/tasks/firewall.yml:59:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead. View docs at https://docs.steampunk.si/plugins/community/general/6.6.0/module/ufw.html.
roles/base/tasks/firewall.yml:71:7: WARNING: [W003] Use of parameter port is deprecated in module community.general.ufw. Parameter to_port is a new alternative. View docs at https://docs.steampunk.si/plugins/community/general/6.6.0/module/ufw.html.
roles/base/tasks/firewall.yml:71:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead. View docs at https://docs.steampunk.si/plugins/community/general/6.6.0/module/ufw.html.
roles/base/tasks/firewall.yml:82:7: WARNING: [W003] Use of parameter port is deprecated in module community.general.ufw. Parameter to_port is a new alternative. View docs at https://docs.steampunk.si/plugins/community/general/6.6.0/module/ufw.html.
roles/base/tasks/firewall.yml:82:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead. View docs at https://docs.steampunk.si/plugins/community/general/6.6.0/module/ufw.html.
roles/base/tasks/grub.yml:4:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/grub.yml:10:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/grub.yml:35:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/base/tasks/logging.yml:3:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/base/tasks/logging.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/logging.yml:14:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/logging.yml:22:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/main.yml:7:3: HINT: [H805] For module ansible.builtin.template, consider explicitly using the mode parameter as a best practice.
roles/base/tasks/main.yml:7:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/main.yml:15:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/base/tasks/main.yml:19:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/base/tasks/main.yml:23:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/base/tasks/main.yml:27:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/base/tasks/main.yml:31:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/base/tasks/main.yml:35:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/base/tasks/main.yml:35:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/base/tasks/main.yml:40:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/base/tasks/main.yml:40:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/base/tasks/main.yml:45:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/base/tasks/nvidia.yml:4:7: ERROR: [E900] Cannot find module aur information in the database. Is this a custom module not published on Ansible Galaxy?.
roles/base/tasks/nvidia.yml:16:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/nvidia.yml:22:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/base/tasks/nvidia.yml:22:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/updatedb.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/base/tasks/updatedb.yml:13:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/base/tasks/updatedb.yml:13:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/base/tasks/utils.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment. View docs at https://docs.steampunk.si/plugins/ansible/posix/1.5.2/module/synchronize.html.
roles/base/tasks/utils.yml:17:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/base/tasks/utils.yml:17:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/base/tasks/zshell.yml:3:3: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/base/tasks/zshell.yml:3:3: WARNING: [W1800] Default value for append parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/base/tasks/zshell.yml:3:3: WARNING: [W1800] Default value for remove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/base/tasks/zshell.yml:3:3: WARNING: [W1800] Default value for system parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/base/tasks/zshell.yml:3:3: WARNING: [W1800] Default value for move_home parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/base/tasks/zshell.yml:3:3: WARNING: [W1800] Default value for non_unique parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/base/tasks/zshell.yml:9:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment. View docs at https://docs.steampunk.si/plugins/ansible/posix/1.5.2/module/synchronize.html.
roles/base/tasks/zshell.yml:23:3: HINT: [H805] For module ansible.builtin.file, consider explicitly using the mode parameter as a best practice.
roles/base/tasks/zshell.yml:23:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/base/tasks/zshell.yml:23:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/distro/tasks/distro/Archlinux.yml:6:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/distro/tasks/distro/Archlinux.yml:10:7: HINT: [H500] Use of module debug is discouraged in production.
roles/distro/tasks/distro/Archlinux.yml:28:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/distro/tasks/distro/Archlinux.yml:44:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/distro/tasks/distro/Archlinux.yml:60:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/distro/tasks/distro/Archlinux.yml:60:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/distro/tasks/distro/Archlinux.yml:60:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/distro/tasks/distro/Archlinux.yml:75:3: WARNING: [W2602] Unknown Python imports in module community.general.pacman: [collections].
roles/distro/tasks/distro/Archlinux.yml:81:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Archlinux.yml:81:3: WARNING: [W1800] Default value for get_md5 parameter changed between module versions 2.4.6 and 2.9.0 from "yes" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Archlinux.yml:81:3: WARNING: [W1800] Default value for get_mime parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Archlinux.yml:81:3: WARNING: [W1800] Default value for get_checksum parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Archlinux.yml:81:3: WARNING: [W1800] Default value for get_attributes parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Archlinux.yml:81:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/distro/tasks/distro/Archlinux.yml:89:7: WARNING: [W2602] Unknown Python imports in module community.general.pacman: [collections].
roles/distro/tasks/distro/Archlinux.yml:123:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/distro/tasks/distro/Archlinux.yml:128:3: HINT: [H500] Use of module debug is discouraged in production.
roles/distro/tasks/distro/Archlinux.yml:128:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/distro/tasks/distro/Archlinux.yml:136:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/distro/tasks/distro/Archlinux.yml:145:3: WARNING: [W2602] Unknown Python imports in module community.general.pacman: [collections].
roles/distro/tasks/distro/Archlinux.yml:152:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/distro/tasks/distro/Archlinux.yml:152:3: WARNING: [W2602] Unknown Python imports in module community.general.pacman: [collections].
roles/distro/tasks/distro/Archlinux.yml:152:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/distro/tasks/distro/Archlinux.yml:164:7: ERROR: [E900] Cannot find module aur information in the database. Is this a custom module not published on Ansible Galaxy?.
roles/distro/tasks/distro/Archlinux.yml:173:7: ERROR: [E900] Cannot find module aur information in the database. Is this a custom module not published on Ansible Galaxy?.
roles/distro/tasks/distro/Archlinux.yml:180:7: ERROR: [E900] Cannot find module aur information in the database. Is this a custom module not published on Ansible Galaxy?.
roles/distro/tasks/distro/Archlinux.yml:192:7: HINT: [H500] Use of module debug is discouraged in production.
roles/distro/tasks/distro/Archlinux.yml:196:7: HINT: [H500] Use of module debug is discouraged in production.
roles/distro/tasks/distro/Archlinux.yml:201:7: ERROR: [E102] Cannot determine module name. Is the playbook syntax correct?.
roles/distro/tasks/distro/Archlinux.yml:205:7: HINT: [H500] Use of module debug is discouraged in production.
roles/distro/tasks/distro/Debian.yml:4:7: WARNING: [W003] Use of parameter name is deprecated in module ansible.builtin.apt. Parameter package is a new alternative.
roles/distro/tasks/distro/Debian.yml:4:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:4:7: WARNING: [W1800] Default value for autoclean parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:4:7: WARNING: [W1800] Default value for autoremove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:4:7: WARNING: [W1800] Default value for allow_unauthenticated parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:10:7: WARNING: [W1800] Default value for validate_certs parameter changed between module versions 2.4.6 and 2.5.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:15:7: WARNING: [W1800] Default value for update_cache parameter changed between module versions 2.4.6 and 2.5.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:15:7: WARNING: [W1800] Default value for validate_certs parameter changed between module versions 2.4.6 and 2.5.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:15:7: WARNING: [W1800] Default value for install_python_apt parameter changed between module versions 2.4.6 and 2.5.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:21:7: WARNING: [W1800] Default value for validate_certs parameter changed between module versions 2.4.6 and 2.5.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:26:7: WARNING: [W003] Use of parameter name is deprecated in module ansible.builtin.apt. Parameter package is a new alternative.
roles/distro/tasks/distro/Debian.yml:26:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:26:7: WARNING: [W1800] Default value for autoclean parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:26:7: WARNING: [W1800] Default value for autoremove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:26:7: WARNING: [W1800] Default value for allow_unauthenticated parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:35:7: WARNING: [W003] Use of parameter name is deprecated in module ansible.builtin.apt. Parameter package is a new alternative.
roles/distro/tasks/distro/Debian.yml:35:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:35:7: WARNING: [W1800] Default value for autoclean parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:35:7: WARNING: [W1800] Default value for autoremove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/distro/Debian.yml:35:7: WARNING: [W1800] Default value for allow_unauthenticated parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/distro/tasks/main.yml:3:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.include_tasks also use Jinja expression. Will not be checked further.
roles/network/handlers/main.yml:8:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/network/handlers/main.yml:8:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/network/handlers/main.yml:12:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/network/tasks/autofs.yml:8:7: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/network/tasks/autofs.yml:8:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/network/tasks/autofs.yml:14:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/network/tasks/autofs.yml:14:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/network/tasks/interfaces.yml:8:3: WARNING: [W1800] Default value for hairpin parameter changed between module versions 4.7.0 and 7.0.0 from true to false. Consider setting value of the parameter explicitly. View docs at https://docs.steampunk.si/plugins/community/general/latest/module/nmcli.html.
roles/network/tasks/interfaces.yml:24:3: WARNING: [W1800] Default value for hairpin parameter changed between module versions 4.7.0 and 7.0.0 from true to false. Consider setting value of the parameter explicitly. View docs at https://docs.steampunk.si/plugins/community/general/latest/module/nmcli.html.
roles/network/tasks/interfaces.yml:42:3: WARNING: [W1800] Default value for hairpin parameter changed between module versions 4.7.0 and 7.0.0 from true to false. Consider setting value of the parameter explicitly. View docs at https://docs.steampunk.si/plugins/community/general/latest/module/nmcli.html.
roles/network/tasks/interfaces.yml:53:3: WARNING: [W1800] Default value for hairpin parameter changed between module versions 4.7.0 and 7.0.0 from true to false. Consider setting value of the parameter explicitly. View docs at https://docs.steampunk.si/plugins/community/general/latest/module/nmcli.html.
roles/network/tasks/interfaces.yml:66:3: WARNING: [W1800] Default value for hairpin parameter changed between module versions 4.7.0 and 7.0.0 from true to false. Consider setting value of the parameter explicitly. View docs at https://docs.steampunk.si/plugins/community/general/latest/module/nmcli.html.
roles/network/tasks/main.yml:3:3: HINT: [H500] Use of module debug is discouraged in production.
roles/network/tasks/main.yml:7:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/network/tasks/main.yml:11:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/network/tasks/main.yml:16:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/network/tasks/main.yml:16:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/network/tasks/main.yml:21:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/network/tasks/main.yml:21:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/network/tasks/main.yml:26:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/network/tasks/main.yml:26:3: ERROR: [E2702] If you are using Ansible 2.5 or higher, the use of jinja test with filter syntax is deprecated or removed.
roles/network/tasks/nas/musikcube.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/network/tasks/nas/nfs.yml:11:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/network/tasks/nas/nfs.yml:11:7: WARNING: [W1800] Default value for append parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/network/tasks/nas/nfs.yml:11:7: WARNING: [W1800] Default value for remove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/network/tasks/nas/nfs.yml:11:7: WARNING: [W1800] Default value for move_home parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/network/tasks/nas/nfs.yml:11:7: WARNING: [W1800] Default value for non_unique parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/network/tasks/nas/nfs.yml:20:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/network/tasks/nas/nfs.yml:20:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/network/tasks/nas/nfs.yml:30:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/network/tasks/nas/nfs.yml:41:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead. View docs at https://docs.steampunk.si/plugins/ansible/posix/1.5.2/module/firewalld.html.
roles/network/tasks/nas/nfs.yml:41:7: WARNING: [W2602] Unknown Python imports in module ansible.posix.firewalld: [firewall.client].
roles/network/tasks/nas/rsyncd.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/network/tasks/networkmanager.yml:8:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/network/tasks/networkmanager.yml:15:3: HINT: [H805] For module ansible.builtin.copy, consider explicitly using the mode parameter as a best practice.
roles/nginx/handlers/main.yml:3:3: HINT: [H500] Use of module debug is discouraged in production.
roles/nginx/handlers/main.yml:11:3: HINT: [H500] Use of module debug is discouraged in production.
roles/nginx/handlers/main.yml:30:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.service also use Jinja expression. Will not be checked further.
roles/nginx/handlers/main.yml:34:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.service also use Jinja expression. Will not be checked further.
roles/nginx/tasks/configuration.yml:2:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.template also use Jinja expression. Will not be checked further.
roles/nginx/tasks/configuration.yml:8:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.template also use Jinja expression. Will not be checked further.
roles/nginx/tasks/configuration.yml:13:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.template also use Jinja expression. Will not be checked further.
roles/nginx/tasks/configuration.yml:20:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.file also use Jinja expression. Will not be checked further.
roles/nginx/tasks/configuration.yml:27:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.template also use Jinja expression. Will not be checked further.
roles/nginx/tasks/configuration.yml:34:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.template also use Jinja expression. Will not be checked further.
roles/nginx/tasks/ensure-dirs.yml:2:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.file also use Jinja expression. Will not be checked further.
roles/nginx/tasks/ensure-dirs.yml:12:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.file also use Jinja expression. Will not be checked further.
roles/nginx/tasks/fancyindex.yml:3:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/nginx/tasks/fancyindex.yml:3:3: WARNING: [W1800] Default value for lock_timeout parameter changed between module versions 2.8.2 and 2.8.3 from 0 to 30. Consider setting value of the parameter explicitly.
roles/nginx/tasks/fancyindex.yml:15:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead. View docs at https://docs.steampunk.si/plugins/community/general/6.6.0/module/pacman.html.
roles/nginx/tasks/fancyindex.yml:15:3: WARNING: [W2602] Unknown Python imports in module community.general.pacman: [collections].
roles/nginx/tasks/fancyindex.yml:28:3: WARNING: [W1800] Default value for force parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/fancyindex.yml:28:3: WARNING: [W1800] Default value for use_proxy parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/nginx/tasks/fancyindex.yml:28:3: WARNING: [W1800] Default value for force_basic_auth parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/fancyindex.yml:49:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/nginx/tasks/fancyindex.yml:55:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/nginx/tasks/installation.packages.yml:2:3: WARNING: [W1800] Default value for exclude parameter changed between module versions 2.4.6 and 2.7.0 from null to []. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.packages.yml:2:3: WARNING: [W1800] Default value for security parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.packages.yml:2:3: WARNING: [W1800] Default value for skip_broken parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.packages.yml:2:3: WARNING: [W1800] Default value for lock_timeout parameter changed between module versions 2.8.2 and 2.8.3 from 0 to 30. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.packages.yml:2:3: WARNING: [W1800] Default value for update_cache parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.packages.yml:2:3: WARNING: [W1800] Default value for validate_certs parameter changed between module versions 2.4.6 and 2.5.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.packages.yml:2:3: WARNING: [W1800] Default value for allow_downgrade parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.packages.yml:2:3: WARNING: [W1800] Default value for disable_gpg_check parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.packages.yml:2:3: WARNING: [W1800] Default value for install_repoquery parameter changed between module versions 2.4.6 and 2.5.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.packages.yml:16:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.yum also use Jinja expression. Will not be checked further.
roles/nginx/tasks/installation.packages.yml:29:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.yum also use Jinja expression. Will not be checked further.
roles/nginx/tasks/installation.packages.yml:38:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.yum also use Jinja expression. Will not be checked further.
roles/nginx/tasks/installation.source.yml:3:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/nginx/tasks/installation.source.yml:3:3: WARNING: [W1800] Default value for lock_timeout parameter changed between module versions 2.8.2 and 2.8.3 from 0 to 30. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.source.yml:15:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead. View docs at https://docs.steampunk.si/plugins/community/general/6.6.0/module/pacman.html.
roles/nginx/tasks/installation.source.yml:15:3: WARNING: [W2602] Unknown Python imports in module community.general.pacman: [collections].
roles/nginx/tasks/installation.source.yml:34:3: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.source.yml:34:3: WARNING: [W1800] Default value for append parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.source.yml:34:3: WARNING: [W1800] Default value for remove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.source.yml:34:3: WARNING: [W1800] Default value for move_home parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.source.yml:34:3: WARNING: [W1800] Default value for non_unique parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.source.yml:41:3: WARNING: [W1800] Default value for force parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.source.yml:41:3: WARNING: [W1800] Default value for use_proxy parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.source.yml:41:3: WARNING: [W1800] Default value for force_basic_auth parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/installation.source.yml:62:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/nginx/tasks/installation.source.yml:68:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/nginx/tasks/nginx-official-repo.yml:3:3: WARNING: [W1800] Default value for validate_certs parameter changed between module versions 2.4.6 and 2.5.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/nginx/tasks/nginx-official-repo.yml:9:3: HINT: [H805] For module ansible.builtin.template, consider explicitly using the mode parameter as a best practice.
roles/nginx/tasks/nginx-official-repo.yml:9:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/nginx/tasks/passenger-phusion-repo.yml:2:3: WARNING: [W008] Parameter validate_certs coerced from str to bool in module ansible.builtin.rpm_key. This may cause unexpected behaviour.
roles/nginx/tasks/passenger-phusion-repo.yml:9:3: HINT: [H805] For module ansible.builtin.template, consider explicitly using the mode parameter as a best practice.
roles/nginx/tasks/passenger-phusion-repo.yml:9:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/nginx/tasks/passenger-phusion-repo.yml:16:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/nginx/tasks/remove-defaults.yml:2:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.file also use Jinja expression. Will not be checked further.
roles/nginx/tasks/remove-defaults.yml:8:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.file also use Jinja expression. Will not be checked further.
roles/nginx/tasks/remove-extras.yml:8:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.file also use Jinja expression. Will not be checked further.
roles/nginx/tasks/remove-extras.yml:23:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.file also use Jinja expression. Will not be checked further.
roles/nginx/tasks/remove-unwanted.yml:2:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.file also use Jinja expression. Will not be checked further.
roles/nginx/tasks/remove-unwanted.yml:11:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.file also use Jinja expression. Will not be checked further.
roles/nginx/tasks/remove-unwanted.yml:18:3: HINT: [H1003] Inline module parameters used in module ansible.builtin.file also use Jinja expression. Will not be checked further.
roles/nginx/tasks/selinux.yml:4:7: WARNING: [W2602] Unknown Python imports in module community.general.sefcontext: [selinux, seobject].
roles/nginx/tasks/selinux.yml:10:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/nginx/tasks/selinux.yml:17:7: WARNING: [W2602] Unknown Python imports in module community.general.sefcontext: [selinux, seobject].
roles/nginx/tasks/selinux.yml:23:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/nginx/tasks/ssl/ssl.yml:2:5: WARNING: [W1800] Default value for exclude parameter changed between module versions 2.4.6 and 2.7.0 from null to []. Consider setting value of the parameter explicitly.
roles/nginx/tasks/ssl/ssl.yml:2:5: WARNING: [W1800] Default value for security parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/ssl/ssl.yml:2:5: WARNING: [W1800] Default value for skip_broken parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/ssl/ssl.yml:2:5: WARNING: [W1800] Default value for lock_timeout parameter changed between module versions 2.8.2 and 2.8.3 from 0 to 30. Consider setting value of the parameter explicitly.
roles/nginx/tasks/ssl/ssl.yml:2:5: WARNING: [W1800] Default value for update_cache parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/ssl/ssl.yml:2:5: WARNING: [W1800] Default value for validate_certs parameter changed between module versions 2.4.6 and 2.5.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/nginx/tasks/ssl/ssl.yml:2:5: WARNING: [W1800] Default value for allow_downgrade parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/ssl/ssl.yml:2:5: WARNING: [W1800] Default value for disable_gpg_check parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/nginx/tasks/ssl/ssl.yml:2:5: WARNING: [W1800] Default value for install_repoquery parameter changed between module versions 2.4.6 and 2.5.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/nginx/tasks/ssl/ssl.yml:9:5: HINT: [H804] Mode {{ ssl_certs_mode }} in module ansible.builtin.file contains variables, which is not considered good practice.
roles/nginx/tasks/ssl/ssl.yml:9:5: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/nginx/tasks/ssl/ssl.yml:9:5: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/nginx/tasks/ssl/ssl.yml:18:5: ERROR: [E102] Cannot determine module name. Is the playbook syntax correct?.
roles/nginx/tasks/ssl/ssl.yml:23:5: ERROR: [E102] Cannot determine module name. Is the playbook syntax correct?.
roles/nginx/tasks/ssl/ssl.yml:28:5: HINT: [H1003] Inline module parameters used in module ansible.builtin.fail also use Jinja expression. Will not be checked further.
roles/nginx/tasks/ssl/ssl.yml:33:5: HINT: [H1003] Inline module parameters used in module ansible.builtin.fail also use Jinja expression. Will not be checked further.
roles/nginx/tasks/ssl/ssl.yml:45:5: HINT: [H804] Mode {{ ssl_certs_mode }} in module ansible.builtin.copy contains variables, which is not considered good practice.
roles/nginx/tasks/ssl/ssl.yml:45:5: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/nginx/tasks/ssl/ssl.yml:45:5: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/nginx/tasks/ssl/ssl.yml:60:5: HINT: [H804] Mode {{ ssl_certs_mode }} in module ansible.builtin.copy contains variables, which is not considered good practice.
roles/nginx/tasks/ssl/ssl.yml:60:5: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/system/tasks/home.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/home.yml:16:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/system/tasks/home.yml:16:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/home.yml:32:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/system/tasks/home.yml:32:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/home.yml:53:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/system/tasks/home.yml:53:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/home.yml:70:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/home.yml:83:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/home.yml:96:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/system/tasks/home.yml:96:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/home.yml:118:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/system/tasks/home.yml:118:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/system/tasks/home.yml:125:3: HINT: [H805] For module ansible.builtin.file, consider explicitly using the mode parameter as a best practice.
roles/system/tasks/home.yml:125:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/system/tasks/home.yml:125:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/system/tasks/home.yml:132:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/system/tasks/input-remapper.yml:9:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/system/tasks/input-remapper.yml:9:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/system/tasks/input-remapper.yml:9:3: WARNING: [W1800] Default value for get_md5 parameter changed between module versions 2.4.6 and 2.9.0 from "yes" to false. Consider setting value of the parameter explicitly.
roles/system/tasks/input-remapper.yml:9:3: WARNING: [W1800] Default value for get_mime parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/system/tasks/input-remapper.yml:9:3: WARNING: [W1800] Default value for get_checksum parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/system/tasks/input-remapper.yml:9:3: WARNING: [W1800] Default value for get_attributes parameter changed between module versions 2.3.3 and 2.4.0, 2.7.18 and 2.8.0 from true to "yes", from "yes" to true. Consider setting value of the parameter explicitly.
roles/system/tasks/input-remapper.yml:9:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/system/tasks/input-remapper.yml:17:7: WARNING: [W1800] Default value for editable parameter changed between module versions 2.3.3 and 2.4.0 from true to false. Consider setting value of the parameter explicitly.
roles/system/tasks/input-remapper.yml:23:7: WARNING: [W1800] Default value for editable parameter changed between module versions 2.3.3 and 2.4.0 from true to false. Consider setting value of the parameter explicitly.
roles/system/tasks/input-remapper.yml:38:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/system/tasks/main.yml:8:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/main.yml:20:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/system/tasks/main.yml:24:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/system/tasks/main.yml:28:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/system/tasks/main.yml:32:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/system/tasks/main.yml:36:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/system/tasks/main.yml:40:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/system/tasks/main.yml:44:3: HINT: [H805] For module ansible.builtin.copy, consider explicitly using the mode parameter as a best practice.
roles/system/tasks/main.yml:59:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/main.yml:67:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/system/tasks/main.yml:67:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/main.yml:77:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/system/tasks/menu.yml:16:3: ERROR: [E802] Mode preserve in module ansible.builtin.template is in unknown format.
roles/system/tasks/menu.yml:16:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/system/tasks/menu.yml:16:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/skel.yml:7:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/system/tasks/skel.yml:7:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/system/tasks/skel.yml:20:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/skel.yml:33:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/skel.yml:47:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/skel.yml:61:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/skel.yml:75:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/skel.yml:88:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/skel.yml:101:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/skel.yml:114:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/skel.yml:127:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/system/tasks/skel.yml:127:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/system/tasks/skel.yml:127:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/system/tasks/skel.yml:137:3: HINT: [H805] For module ansible.builtin.file, consider explicitly using the mode parameter as a best practice.
roles/system/tasks/skel.yml:137:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/system/tasks/skel.yml:137:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/system/tasks/skel.yml:146:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/system/tasks/theme.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/theme.yml:11:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/theme.yml:23:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/theme.yml:29:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/theme.yml:45:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment. View docs at https://docs.steampunk.si/plugins/ansible/posix/1.5.2/module/synchronize.html.
roles/system/tasks/theme.yml:55:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/x11.yml:9:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/x11.yml:18:11: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/x11.yml:24:11: WARNING: [W2602] Unknown Python imports in module community.general.pacman: [collections].
roles/system/tasks/x11.yml:32:11: ERROR: [E900] Cannot find module aur information in the database. Is this a custom module not published on Ansible Galaxy?.
roles/system/tasks/xdg.yml:3:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/system/tasks/xdg.yml:3:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/system/tasks/xdg.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/system/tasks/xdg.yml:12:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/xdg.yml:20:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/system/tasks/xdg.yml:20:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/xdg.yml:33:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/system/tasks/xdg.yml:33:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/system/tasks/xdg.yml:49:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead. View docs at https://docs.steampunk.si/plugins/ansible/posix/1.5.2/module/synchronize.html.
roles/system/tasks/xdg.yml:49:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment. View docs at https://docs.steampunk.si/plugins/ansible/posix/1.5.2/module/synchronize.html.
roles/system/tasks/xdg.yml:382:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/user/tasks/create-dirs.yml:3:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/user/tasks/create-dirs.yml:3:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/user/tasks/create-dirs.yml:12:3: HINT: [H805] For module ansible.builtin.file, consider explicitly using the mode parameter as a best practice.
roles/user/tasks/create-dirs.yml:12:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/user/tasks/create-dirs.yml:12:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/user/tasks/create-dirs.yml:20:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/user/tasks/create-dirs.yml:20:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/user/tasks/create-dirs.yml:20:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/user/tasks/create-dirs.yml:38:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/user/tasks/create-dirs.yml:38:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/user/tasks/create-dirs.yml:38:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/user/tasks/create-dirs.yml:100:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/user/tasks/create-dirs.yml:100:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/user/tasks/create-dirs.yml:100:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/user/tasks/main.yml:14:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/user/tasks/main.yml:14:7: WARNING: [W1800] Default value for append parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/user/tasks/main.yml:14:7: WARNING: [W1800] Default value for remove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/user/tasks/main.yml:14:7: WARNING: [W1800] Default value for system parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/user/tasks/main.yml:14:7: WARNING: [W1800] Default value for move_home parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/user/tasks/main.yml:14:7: WARNING: [W1800] Default value for non_unique parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/user/tasks/main.yml:19:7: HINT: [H805] For module ansible.builtin.file, consider explicitly using the mode parameter as a best practice.
roles/user/tasks/main.yml:19:7: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/user/tasks/main.yml:19:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/user/tasks/main.yml:29:3: WARNING: [W1800] Default value for force parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/user/tasks/main.yml:29:3: WARNING: [W1800] Default value for use_proxy parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/user/tasks/main.yml:29:3: WARNING: [W1800] Default value for validate_certs parameter changed between module versions 2.7.18 and 2.8.0 from "yes" to true. Consider setting value of the parameter explicitly.
roles/user/tasks/main.yml:29:3: WARNING: [W1800] Default value for force_basic_auth parameter changed between module versions 2.7.18 and 2.8.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/user/tasks/main.yml:37:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/user/tasks/main.yml:39:3: ERROR: [E001] file is not a valid parameter in module ansible.builtin.import_tasks.
roles/user/tasks/sudoers.yml:3:3: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead.
roles/user/tasks/sudoers.yml:3:3: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/user/tasks/sudoers.yml:3:3: WARNING: [W1800] Default value for remove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/user/tasks/sudoers.yml:3:3: WARNING: [W1800] Default value for system parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/user/tasks/sudoers.yml:3:3: WARNING: [W1800] Default value for move_home parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/user/tasks/sudoers.yml:3:3: WARNING: [W1800] Default value for non_unique parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/user/tasks/sudoers.yml:17:3: HINT: [H805] For module ansible.builtin.lineinfile, consider explicitly using the mode parameter as a best practice.
roles/user/tasks/sudoers.yml:17:3: WARNING: [W003] Use of parameter dest is deprecated in module ansible.builtin.lineinfile. Parameter path is a new alternative.
roles/virt/handlers/main.yml:4:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/virt/handlers/main.yml:9:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/virt/handlers/main.yml:15:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/virt/tasks/docker.yml:1:3: HINT: [H500] Use of module debug is discouraged in production.
roles/virt/tasks/docker.yml:5:3: ERROR: [E900] Cannot find module aur information in the database. Is this a custom module not published on Ansible Galaxy?.
roles/virt/tasks/docker.yml:14:3: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/virt/tasks/docker.yml:14:3: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/virt/tasks/docker.yml:14:3: WARNING: [W1800] Default value for remove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/virt/tasks/docker.yml:14:3: WARNING: [W1800] Default value for system parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/virt/tasks/docker.yml:14:3: WARNING: [W1800] Default value for move_home parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/virt/tasks/docker.yml:14:3: WARNING: [W1800] Default value for non_unique parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/virt/tasks/docker.yml:22:3: HINT: [H805] For module ansible.builtin.lineinfile, consider explicitly using the mode parameter as a best practice.
roles/virt/tasks/docker.yml:22:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/virt/tasks/docker.yml:29:3: WARNING: [W1800] Default value for follow parameter changed between module versions 2.5.1 and 2.5.2 from false to true. Consider setting value of the parameter explicitly.
roles/virt/tasks/docker.yml:29:3: HINT: [H2200] When migrating to execution environments, make sure that directories specified in path are available by the execution environment.
roles/virt/tasks/docker.yml:37:3: HINT: [H805] For module ansible.builtin.copy, consider explicitly using the mode parameter as a best practice.
roles/virt/tasks/docker.yml:47:3: HINT: [H805] For module ansible.builtin.copy, consider explicitly using the mode parameter as a best practice.
roles/virt/tasks/libvirt.yml:3:3: HINT: [H500] Use of module debug is discouraged in production.
roles/virt/tasks/libvirt.yml:8:3: WARNING: [W2602] Unknown Python imports in module community.general.pacman: [collections].
roles/virt/tasks/libvirt.yml:16:3: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
roles/virt/tasks/libvirt.yml:25:3: WARNING: [W2602] Unknown Python imports in module community.general.pacman: [collections].
roles/virt/tasks/libvirt.yml:34:7: HINT: [H2200] When migrating to execution environments, make sure that directories specified in src are available by the execution environment.
roles/virt/tasks/libvirt.yml:40:7: HINT: [H805] For module ansible.builtin.lineinfile, consider explicitly using the mode parameter as a best practice.
roles/virt/tasks/libvirt.yml:40:7: WARNING: [W003] Use of parameter dest is deprecated in module ansible.builtin.lineinfile. Parameter path is a new alternative.
roles/virt/tasks/libvirt.yml:48:7: WARNING: [W700] Use of ignore_errors is discouraged. Consider using failed_when instead.
roles/virt/tasks/libvirt.yml:48:7: WARNING: [W1800] Default value for force parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/virt/tasks/libvirt.yml:48:7: WARNING: [W1800] Default value for remove parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/virt/tasks/libvirt.yml:48:7: WARNING: [W1800] Default value for system parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/virt/tasks/libvirt.yml:48:7: WARNING: [W1800] Default value for move_home parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
roles/virt/tasks/libvirt.yml:48:7: WARNING: [W1800] Default value for non_unique parameter changed between module versions 2.4.6 and 2.5.0 from "no" to false. Consider setting value of the parameter explicitly.
webhost.yml:123:7: HINT: [H500] Use of module debug is discouraged in production.
webhost.yml:136:7: WARNING: [W1100] Use of with_items is discouraged. Consider using loop instead. View docs at https://docs.steampunk.si/plugins/ansible/posix/1.5.2/module/firewalld.html.
webhost.yml:136:7: WARNING: [W2602] Unknown Python imports in module ansible.posix.firewalld: [firewall.client].
webhost.yml:146:7: WARNING: [W400] Task does not enforce a state. Use creates or removes parameters to inform Ansible under what conditions should the command be run. If the executed command is enforcing the desired state already, use the changed_when keyword to inform Ansible when the state changed. The last resort is adding a when clause to the task or converting the current task into a handler.
------------------------------------------------------------------------
Spotter took 2.410 s to scan your input.
It resulted in 55 error(s), 352 warning(s) and 166 hint(s).
Overall status: ERROR

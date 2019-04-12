# atop Cookbook

[![Cookbook](http://img.shields.io/cookbook/v/atop.svg)](https://supermarket.chef.io/cookbooks/atop)

This cookbook installs `atop`, starts it as a service to log data every configured interval, and configures logrotate on its log output.

## Requirements

### Platforms

- Amazon Linux 1 and 2
- CentOS 6.x and 7.x
- Debian

### Chef

- Chef 12.0 or later

### Cookbooks

- `yum-epel` - platform specific requirement for RHEL

## Attributes

- `node['atop']['action']` - Action to take for `package` resource. Defaults to `:install`.
- `node['atop']['version']` - Version of `atop` to install. Defaults to `nil`, which installs the latest version at runtime.
- `node['atop']['logpath']` - Directory path for atop output logs. Defaults to `/var/log/atop/`.
- `node['atop']['interval']` - Interval between metric collection in seconds. Defaults to 600 seconds.

## Usage

Just include `atop` in your node's `run_list`:

```json
{
  "name": "my_node",
  "run_list": [
    "recipe[atop]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

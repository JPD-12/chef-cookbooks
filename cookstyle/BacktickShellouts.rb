# Copyright (c) 2025-present, Meta Platforms, Inc. and affiliates
# All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module RuboCop::Cop::Chef::Meta
  class BacktickShellouts < Base

    MSG = fb_msg(
      'Avoid using backticks for shellouts, use the execute resource instead' +
      ' for recipes or the (power)shell_out helper methods.',
    )

    def on_xstr(node)
      add_offense(node, :severity => :convention)
    end
  end
end

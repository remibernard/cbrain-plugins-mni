
#
# CBRAIN Project
#
# Copyright (C) 2008-2012
# The Royal Institution for the Advancement of Learning
# McGill University
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# A subclass of CbrainTask to launch bet of Civet.
class CbrainTask::Nii2mnc

  def identify_options_to_ignore() #:nodoc:
    ignored_options = {}

    if self.tool_config.is_at_least_version("2.0.0")
      ignored_options[:noscan]          = true
      ignored_options[:space_ordering]  = true
      ignored_options[:flip_order]      = true
      ignored_options[:rectify_cosines] = true
      ignored_options[:flipx]           = true
      ignored_options[:flipy]           = true
      ignored_options[:flipz]           = true
    end

    ignored_options
  end

end

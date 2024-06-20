###################################################################################
# INTEL CONFIDENTIAL
# 
# Copyright (C) 2022 Intel Corporation
# 
# This software and the related documents are Intel copyrighted materials, and 
# your use of them is governed by the express license under which they were 
# provided to you ("License"). Unless the License provides otherwise, you may 
# not use, modify, copy, publish, distribute, disclose or transmit this software 
# or the related documents without Intel's prior written permission.
# 
# This software and the related documents are provided as is, with no express 
# or implied warranties, other than those that are expressly stated in the License.
###################################################################################

## *********************************************************************************
#
#
# Module: intel_vip_reset_sync_block
#
# Description: sdc constraint to cut reset sync
#
## *********************************************************************************


#Since the synchronizer will resync the reset input we are cutting the input reset into the resync register.
set_false_path -to [get_pins -compatibility_mode synchronizer_reg[0]|*]
set_false_path -to [get_pins -compatibility_mode synchronizer_reg*|clrn]

/*
 * Copyright (c) 2022, 2024 Qualcomm Innovation Center, Inc. All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */
///////////////////////////////////////////////////////////////////////////////
// THIS FILE IS IMMUTABLE. DO NOT EDIT IN ANY CASE.                          //
///////////////////////////////////////////////////////////////////////////////

// This file is a snapshot of an AIDL file. Do not edit it manually. There are
// two cases:
// 1). this is a frozen version file - do not edit this in any case.
// 2). this is a 'current' file. If you make a backwards compatible change to
//     the interface (from the latest frozen version), the build system will
//     prompt you to update this file with `m <name>-update-api`.
//
// You must not make a backward incompatible change to any AIDL file built
// with the aidl_interface module type with versions property set. The module
// type is used to build AIDL files in a way that they can be used across
// independently updatable components of the system. If a device is shipped
// with such a backward incompatible change, it has a high risk of breaking
// later when a module using the interface is updated, e.g., Mainline modules.

package vendor.qti.hardware.display.color;
@VintfStability
interface IDisplayColor {
  int init(in int flags);
  vendor.qti.hardware.display.color.Result deInit(in int ctxHandle, in int flags);
  void toggleSocketService(in boolean enable);
  vendor.qti.hardware.display.color.Result getRenderIntentsMap(in int disp_id, out String[] render_intent_string, out int[] render_intent_enum);
  vendor.qti.hardware.display.color.Result getSPRMode(in int ctxHandle, in int dispId, out vendor.qti.hardware.display.color.SprModeInfo info);
  vendor.qti.hardware.display.color.Result setSPRMode(in int ctxHandle, in int dispId, in vendor.qti.hardware.display.color.SprModeInfo info);
  vendor.qti.hardware.display.color.Result getNumDisplay(in long ctxHandle, out vendor.qti.hardware.display.color.DisplayNumInfo dispNumInfo);
  vendor.qti.hardware.display.color.Result getDisplayId(in long ctxHandle, out long[] display_id);
  vendor.qti.hardware.display.color.Result getDisplay(in long ctxHandle, in int index, out vendor.qti.hardware.display.color.DisplayInfo dispInfo);
  vendor.qti.hardware.display.color.Result getGlobalPARange(in long ctxHandle, in int dispId, out vendor.qti.hardware.display.color.PARange range);
  vendor.qti.hardware.display.color.Result getGlobalPA(in long ctxHandle, in int dispId, out vendor.qti.hardware.display.color.PAEnable paEnable, out vendor.qti.hardware.display.color.PAConfig cfg);
  vendor.qti.hardware.display.color.Result setGlobalPA(in long ctxHandle, in int dispId, in int enable, in vendor.qti.hardware.display.color.PAConfig cfg);
}

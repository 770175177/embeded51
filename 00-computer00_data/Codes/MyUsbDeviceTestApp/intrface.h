// intrface.h
//
// Generated by C DriverWizard 3.2.0 (Build 2485)
// Requires DDK Only
// File created on 8/22/2008
//

// Define an Interface Guid for Computer00Usb device class.
// This GUID is used to register (IoRegisterDeviceInterface)
// an instance of an interface so that user application
// can control the Computer00Usb device.
//
//  {1CD961B7-470E-4586-954D-E6B8411B55C7}

//DEFINE_GUID(GUID_DEVINTERFACE_COMPUTER00USB,
//    0x1CD961B7, 0x470E, 0x4586, 0x95, 0x4D, 0xE6, 0xB8, 0x41, 0x1B, 0x55, 0xC7);

#define GUID_DEVINTERFACE_COMPUTER00USB \
    {0x1CD961B7, 0x470E, 0x4586, {0x95, 0x4D, 0xE6, 0xB8, 0x41, 0x1B, 0x55, 0xC7 }}

// Define a Setup Class GUID for Computer00Usb Class. This is same
// as the COMPUTER00USB CLASS guid in the INF files.
//
//  {4731A720-D55A-4583-84F9-29144E14D709}
DEFINE_GUID(GUID_DEVCLASS_COMPUTER00USB,
    0x4731A720, 0xD55A, 0x4583, 0x84, 0xF9, 0x29, 0x14, 0x4E, 0x14, 0xD7, 0x09);

// GUID definition are required to be outside of header inclusion pragma to avoid
// error during precompiled headers.
//

#ifndef __INTRFACE_H__
#define __INTRFACE_H__

#include <WINIOCTL.H>

#define FILE_DEVICE_COMPUTER00USB  0x8000

// Define Interface reference/dereference routines for
// Interfaces exported by IRP_MN_QUERY_INTERFACE

#define COMPUTER00USB_IOCTL(index) \
    CTL_CODE(FILE_DEVICE_COMPUTER00USB, index, METHOD_BUFFERED, FILE_READ_DATA)

#define EP1_READ \
    CTL_CODE(FILE_DEVICE_COMPUTER00USB, 0x800, METHOD_BUFFERED, FILE_READ_ACCESS)
#define EP1_WRITE \
    CTL_CODE(FILE_DEVICE_COMPUTER00USB, 0x801, METHOD_BUFFERED, FILE_WRITE_ACCESS)
#define EP2_READ \
    CTL_CODE(FILE_DEVICE_COMPUTER00USB, 0x802, METHOD_BUFFERED, FILE_READ_ACCESS)
#define EP2_WRITE \
    CTL_CODE(FILE_DEVICE_COMPUTER00USB, 0x803, METHOD_BUFFERED, FILE_WRITE_ACCESS)

#endif // __INTRFACE_H__

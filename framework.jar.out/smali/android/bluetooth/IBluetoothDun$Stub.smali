.class public abstract Landroid/bluetooth/IBluetoothDun$Stub;
.super Landroid/os/Binder;
.source "IBluetoothDun.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothDun;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothDun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothDun$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothDun"

.field static final TRANSACTION_disconnect:I = 0x1

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x2

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothDun"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDun;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.bluetooth.IBluetoothDun"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothDun;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothDun;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothDun$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothDun$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v3, "android.bluetooth.IBluetoothDun"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "android.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .local v0, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDun$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_result:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .restart local v1       #_result:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_result:Z
    :sswitch_2
    const-string v3, "android.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDun$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_result:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string v3, "android.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDun$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .local v2, _result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .end local v2           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_4
    const-string v3, "android.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .local v0, _arg0:[I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDun$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v2

    .restart local v2       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

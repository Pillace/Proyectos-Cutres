.class public abstract Landroid/net/sip/ISipService$Stub;
.super Landroid/os/Binder;
.source "ISipService.java"

# interfaces
.implements Landroid/net/sip/ISipService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/ISipService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.sip.ISipService"

.field static final TRANSACTION_close:I = 0x3

.field static final TRANSACTION_createSession:I = 0x7

.field static final TRANSACTION_getListOfProfiles:I = 0x9

.field static final TRANSACTION_getPendingSession:I = 0x8

.field static final TRANSACTION_isOpened:I = 0x4

.field static final TRANSACTION_isRegistered:I = 0x5

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_open3:I = 0x2

.field static final TRANSACTION_setRegistrationListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.net.sip.ISipService"

    invoke-virtual {p0, p0, v0}, Landroid/net/sip/ISipService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_3
    return-object v1

    .line 29
    :cond_4
    const-string v1, "android.net.sip.ISipService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/sip/ISipService;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Landroid/net/sip/ISipService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/net/sip/ISipService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/sip/ISipService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "android.net.sip.ISipService"

    .line 41
    sparse-switch p1, :sswitch_data_12a

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_c
    return v4

    .line 45
    :sswitch_d
    const-string v4, "android.net.sip.ISipService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 46
    goto :goto_c

    .line 50
    :sswitch_14
    const-string v4, "android.net.sip.ISipService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    .line 53
    sget-object v4, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/SipProfile;

    .line 58
    .local v0, _arg0:Landroid/net/sip/SipProfile;
    :goto_27
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipService$Stub;->open(Landroid/net/sip/SipProfile;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 60
    goto :goto_c

    .line 56
    .end local v0           #_arg0:Landroid/net/sip/SipProfile;
    :cond_2f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/sip/SipProfile;
    goto :goto_27

    .line 64
    .end local v0           #_arg0:Landroid/net/sip/SipProfile;
    :sswitch_31
    const-string v4, "android.net.sip.ISipService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_62

    .line 67
    sget-object v4, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/SipProfile;

    .line 73
    .restart local v0       #_arg0:Landroid/net/sip/SipProfile;
    :goto_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_64

    .line 74
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 80
    .local v1, _arg1:Landroid/app/PendingIntent;
    :goto_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    move-result-object v2

    .line 81
    .local v2, _arg2:Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/sip/ISipService$Stub;->open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 83
    goto :goto_c

    .line 70
    .end local v0           #_arg0:Landroid/net/sip/SipProfile;
    .end local v1           #_arg1:Landroid/app/PendingIntent;
    .end local v2           #_arg2:Landroid/net/sip/ISipSessionListener;
    :cond_62
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/sip/SipProfile;
    goto :goto_44

    .line 77
    :cond_64
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/app/PendingIntent;
    goto :goto_52

    .line 87
    .end local v0           #_arg0:Landroid/net/sip/SipProfile;
    .end local v1           #_arg1:Landroid/app/PendingIntent;
    :sswitch_66
    const-string v4, "android.net.sip.ISipService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipService$Stub;->close(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 92
    goto :goto_c

    .line 96
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_77
    const-string v4, "android.net.sip.ISipService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipService$Stub;->isOpened(Ljava/lang/String;)Z

    move-result v3

    .line 100
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v3, :cond_90

    move v4, v5

    :goto_8a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 102
    goto/16 :goto_c

    :cond_90
    move v4, v7

    .line 101
    goto :goto_8a

    .line 106
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_92
    const-string v4, "android.net.sip.ISipService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipService$Stub;->isRegistered(Ljava/lang/String;)Z

    move-result v3

    .line 110
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v3, :cond_ab

    move v4, v5

    :goto_a5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 112
    goto/16 :goto_c

    :cond_ab
    move v4, v7

    .line 111
    goto :goto_a5

    .line 116
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_ad
    const-string v4, "android.net.sip.ISipService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    .line 121
    .local v1, _arg1:Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p0, v0, v1}, Landroid/net/sip/ISipService$Stub;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 123
    goto/16 :goto_c

    .line 127
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/net/sip/ISipSessionListener;
    :sswitch_c7
    const-string v4, "android.net.sip.ISipService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f5

    .line 130
    sget-object v4, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/SipProfile;

    .line 136
    .local v0, _arg0:Landroid/net/sip/SipProfile;
    :goto_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    .line 137
    .restart local v1       #_arg1:Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p0, v0, v1}, Landroid/net/sip/ISipService$Stub;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v3

    .line 138
    .local v3, _result:Landroid/net/sip/ISipSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v3, :cond_f7

    invoke-interface {v3}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_ef
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v4, v5

    .line 140
    goto/16 :goto_c

    .line 133
    .end local v0           #_arg0:Landroid/net/sip/SipProfile;
    .end local v1           #_arg1:Landroid/net/sip/ISipSessionListener;
    .end local v3           #_result:Landroid/net/sip/ISipSession;
    :cond_f5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/sip/SipProfile;
    goto :goto_da

    .restart local v1       #_arg1:Landroid/net/sip/ISipSessionListener;
    .restart local v3       #_result:Landroid/net/sip/ISipSession;
    :cond_f7
    move-object v4, v8

    .line 139
    goto :goto_ef

    .line 144
    .end local v0           #_arg0:Landroid/net/sip/SipProfile;
    .end local v1           #_arg1:Landroid/net/sip/ISipSessionListener;
    .end local v3           #_result:Landroid/net/sip/ISipSession;
    :sswitch_f9
    const-string v4, "android.net.sip.ISipService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipService$Stub;->getPendingSession(Ljava/lang/String;)Landroid/net/sip/ISipSession;

    move-result-object v3

    .line 148
    .restart local v3       #_result:Landroid/net/sip/ISipSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v3, :cond_115

    invoke-interface {v3}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_10f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v4, v5

    .line 150
    goto/16 :goto_c

    :cond_115
    move-object v4, v8

    .line 149
    goto :goto_10f

    .line 154
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/net/sip/ISipSession;
    :sswitch_117
    const-string v4, "android.net.sip.ISipService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/net/sip/ISipService$Stub;->getListOfProfiles()[Landroid/net/sip/SipProfile;

    move-result-object v3

    .line 156
    .local v3, _result:[Landroid/net/sip/SipProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v4, v5

    .line 158
    goto/16 :goto_c

    .line 41
    nop

    :sswitch_data_12a
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_31
        0x3 -> :sswitch_66
        0x4 -> :sswitch_77
        0x5 -> :sswitch_92
        0x6 -> :sswitch_ad
        0x7 -> :sswitch_c7
        0x8 -> :sswitch_f9
        0x9 -> :sswitch_117
        0x5f4e5446 -> :sswitch_d
    .end sparse-switch
.end method

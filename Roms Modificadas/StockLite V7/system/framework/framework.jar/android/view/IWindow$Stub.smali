.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_closeSystemDialogs:I = 0x6

.field static final TRANSACTION_dispatchAppVisibility:I = 0x3

.field static final TRANSACTION_dispatchGetNewSurface:I = 0x4

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0x8

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0x7

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_windowFocusChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .registers 3
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_3
    return-object v1

    .line 32
    :cond_4
    const-string v1, "android.view.IWindow"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_14

    .line 34
    check-cast v0, Landroid/view/IWindow;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
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
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "android.view.IWindow"

    .line 44
    sparse-switch p1, :sswitch_data_126

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_b
    return v0

    .line 48
    :sswitch_c
    const-string v0, "android.view.IWindow"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 49
    goto :goto_b

    .line 53
    :sswitch_13
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    .line 60
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 65
    .local v3, _arg2:Landroid/os/ParcelFileDescriptor;
    :goto_2e
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    move v0, v7

    .line 66
    goto :goto_b

    .line 63
    .end local v3           #_arg2:Landroid/os/ParcelFileDescriptor;
    :cond_33
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/ParcelFileDescriptor;
    goto :goto_2e

    .line 70
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/ParcelFileDescriptor;
    :sswitch_35
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_79

    .line 77
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 83
    .local v3, _arg2:Landroid/graphics/Rect;
    :goto_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7b

    .line 84
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 90
    .local v4, _arg3:Landroid/graphics/Rect;
    :goto_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7d

    move v5, v7

    .line 92
    .local v5, _arg4:Z
    :goto_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7f

    .line 93
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    .local v6, _arg5:Landroid/content/res/Configuration;
    :goto_73
    move-object v0, p0

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    move v0, v7

    .line 99
    goto :goto_b

    .line 80
    .end local v3           #_arg2:Landroid/graphics/Rect;
    .end local v4           #_arg3:Landroid/graphics/Rect;
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Landroid/content/res/Configuration;
    :cond_79
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/graphics/Rect;
    goto :goto_50

    .line 87
    :cond_7b
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/graphics/Rect;
    goto :goto_5e

    :cond_7d
    move v5, v9

    .line 90
    goto :goto_65

    .line 96
    .restart local v5       #_arg4:Z
    :cond_7f
    const/4 v6, 0x0

    .restart local v6       #_arg5:Landroid/content/res/Configuration;
    goto :goto_73

    .line 103
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/graphics/Rect;
    .end local v4           #_arg3:Landroid/graphics/Rect;
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Landroid/content/res/Configuration;
    :sswitch_81
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_93

    move v1, v7

    .line 106
    .local v1, _arg0:Z
    :goto_8d
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    move v0, v7

    .line 107
    goto/16 :goto_b

    .end local v1           #_arg0:Z
    :cond_93
    move v1, v9

    .line 105
    goto :goto_8d

    .line 111
    :sswitch_95
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    move v0, v7

    .line 113
    goto/16 :goto_b

    .line 117
    :sswitch_a0
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b9

    move v1, v7

    .line 121
    .restart local v1       #_arg0:Z
    :goto_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bb

    move v2, v7

    .line 122
    .local v2, _arg1:Z
    :goto_b3
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZ)V

    move v0, v7

    .line 123
    goto/16 :goto_b

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Z
    :cond_b9
    move v1, v9

    .line 119
    goto :goto_ac

    .restart local v1       #_arg0:Z
    :cond_bb
    move v2, v9

    .line 121
    goto :goto_b3

    .line 127
    .end local v1           #_arg0:Z
    :sswitch_bd
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    move v0, v7

    .line 131
    goto/16 :goto_b

    .line 135
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_cc
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 139
    .local v1, _arg0:F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 141
    .local v2, _arg1:F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 143
    .local v3, _arg2:F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 145
    .local v4, _arg3:F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ef

    move v5, v7

    .restart local v5       #_arg4:Z
    :goto_e8
    move-object v0, p0

    .line 146
    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFZ)V

    move v0, v7

    .line 147
    goto/16 :goto_b

    .end local v5           #_arg4:Z
    :cond_ef
    move v5, v9

    .line 145
    goto :goto_e8

    .line 151
    .end local v1           #_arg0:F
    .end local v2           #_arg1:F
    .end local v3           #_arg2:F
    .end local v4           #_arg3:F
    :sswitch_f1
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 159
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 161
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_122

    .line 162
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 168
    .local v5, _arg4:Landroid/os/Bundle;
    :goto_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_124

    move v6, v7

    .local v6, _arg5:Z
    :goto_11b
    move-object v0, p0

    .line 169
    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    move v0, v7

    .line 170
    goto/16 :goto_b

    .line 165
    .end local v5           #_arg4:Landroid/os/Bundle;
    .end local v6           #_arg5:Z
    :cond_122
    const/4 v5, 0x0

    .restart local v5       #_arg4:Landroid/os/Bundle;
    goto :goto_114

    :cond_124
    move v6, v9

    .line 168
    goto :goto_11b

    .line 44
    :sswitch_data_126
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_35
        0x3 -> :sswitch_81
        0x4 -> :sswitch_95
        0x5 -> :sswitch_a0
        0x6 -> :sswitch_bd
        0x7 -> :sswitch_cc
        0x8 -> :sswitch_f1
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method

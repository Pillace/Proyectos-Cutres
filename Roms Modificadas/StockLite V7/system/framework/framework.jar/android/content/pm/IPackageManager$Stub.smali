.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_addPackageToPreferred:I = 0x2b

.field static final TRANSACTION_addPermission:I = 0x11

.field static final TRANSACTION_addPermissionAsync:I = 0x46

.field static final TRANSACTION_addPreferredActivity:I = 0x2e

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x5

.field static final TRANSACTION_checkPermission:I = 0xf

.field static final TRANSACTION_checkSignatures:I = 0x14

.field static final TRANSACTION_checkUidPermission:I = 0x10

.field static final TRANSACTION_checkUidSignatures:I = 0x15

.field static final TRANSACTION_clearApplicationUserData:I = 0x39

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x30

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x4

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x38

.field static final TRANSACTION_deletePackage:I = 0x29

.field static final TRANSACTION_enterSafeMode:I = 0x3e

.field static final TRANSACTION_finishPackageInstall:I = 0x28

.field static final TRANSACTION_freeStorage:I = 0x37

.field static final TRANSACTION_freeStorageAndNotify:I = 0x36

.field static final TRANSACTION_getActivityInfo:I = 0xb

.field static final TRANSACTION_getAllPermissionGroups:I = 0x9

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x35

.field static final TRANSACTION_getApplicationInfo:I = 0xa

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x33

.field static final TRANSACTION_getInstallLocation:I = 0x48

.field static final TRANSACTION_getInstalledApplications:I = 0x20

.field static final TRANSACTION_getInstalledPackages:I = 0x1f

.field static final TRANSACTION_getInstallerPackageName:I = 0x2a

.field static final TRANSACTION_getInstrumentationInfo:I = 0x25

.field static final TRANSACTION_getNameForUid:I = 0x17

.field static final TRANSACTION_getPackageGids:I = 0x3

.field static final TRANSACTION_getPackageInfo:I = 0x1

.field static final TRANSACTION_getPackageSizeInfo:I = 0x3a

.field static final TRANSACTION_getPackageUid:I = 0x2

.field static final TRANSACTION_getPackagesForUid:I = 0x16

.field static final TRANSACTION_getPermissionGroupInfo:I = 0x8

.field static final TRANSACTION_getPermissionInfo:I = 0x6

.field static final TRANSACTION_getPersistentApplications:I = 0x21

.field static final TRANSACTION_getPreferredActivities:I = 0x31

.field static final TRANSACTION_getPreferredPackages:I = 0x2d

.field static final TRANSACTION_getProviderInfo:I = 0xe

.field static final TRANSACTION_getReceiverInfo:I = 0xc

.field static final TRANSACTION_getServiceInfo:I = 0xd

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x3c

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x3b

.field static final TRANSACTION_getUidForSharedUser:I = 0x18

.field static final TRANSACTION_hasSystemFeature:I = 0x3d

.field static final TRANSACTION_hasSystemUidErrors:I = 0x41

.field static final TRANSACTION_installPackage:I = 0x27

.field static final TRANSACTION_isProtectedBroadcast:I = 0x13

.field static final TRANSACTION_isSafeMode:I = 0x3f

.field static final TRANSACTION_movePackage:I = 0x45

.field static final TRANSACTION_nextPackageToClean:I = 0x44

.field static final TRANSACTION_performDexOpt:I = 0x42

.field static final TRANSACTION_queryContentProviders:I = 0x24

.field static final TRANSACTION_queryInstrumentation:I = 0x26

.field static final TRANSACTION_queryIntentActivities:I = 0x1a

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x1b

.field static final TRANSACTION_queryIntentReceivers:I = 0x1c

.field static final TRANSACTION_queryIntentServices:I = 0x1e

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x7

.field static final TRANSACTION_querySyncProviders:I = 0x23

.field static final TRANSACTION_removePackageFromPreferred:I = 0x2c

.field static final TRANSACTION_removePermission:I = 0x12

.field static final TRANSACTION_replacePreferredActivity:I = 0x2f

.field static final TRANSACTION_resolveContentProvider:I = 0x22

.field static final TRANSACTION_resolveIntent:I = 0x19

.field static final TRANSACTION_resolveService:I = 0x1d

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x34

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x32

.field static final TRANSACTION_setInstallLocation:I = 0x47

.field static final TRANSACTION_systemReady:I = 0x40

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x43


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
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
    const-string v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_14

    .line 34
    check-cast v0, Landroid/content/pm/IPackageManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 31
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
    .line 44
    sparse-switch p1, :sswitch_data_c3a

    .line 1057
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 48
    :sswitch_8
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v5, 0x1

    goto :goto_7

    .line 53
    :sswitch_12
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 58
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 59
    .local v18, _result:Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v18, :cond_41

    .line 61
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    :goto_3f
    const/4 v5, 0x1

    goto :goto_7

    .line 65
    :cond_41
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 71
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/PackageInfo;
    :sswitch_49
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 74
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;)I

    move-result v18

    .line 75
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v5, 0x1

    goto :goto_7

    .line 81
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_68
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 84
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v18

    .line 85
    .local v18, _result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 87
    const/4 v5, 0x1

    goto :goto_7

    .line 91
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:[I
    :sswitch_87
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, _arg0:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 95
    .local v18, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 97
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 101
    .end local v6           #_arg0:[Ljava/lang/String;
    .end local v18           #_result:[Ljava/lang/String;
    :sswitch_a7
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 104
    .restart local v6       #_arg0:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 105
    .restart local v18       #_result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 107
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 111
    .end local v6           #_arg0:[Ljava/lang/String;
    .end local v18           #_result:[Ljava/lang/String;
    :sswitch_c7
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 116
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v18

    .line 117
    .local v18, _result:Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v18, :cond_f7

    .line 119
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    :goto_f4
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 123
    :cond_f7
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f4

    .line 129
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/PermissionInfo;
    :sswitch_ff
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 133
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 134
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v23

    .line 135
    .local v23, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 137
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 141
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v23           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_124
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 145
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 146
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v18

    .line 147
    .local v18, _result:Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v18, :cond_154

    .line 149
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_151
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 153
    :cond_154
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_151

    .line 159
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/PermissionGroupInfo;
    :sswitch_15c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 162
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v22

    .line 163
    .local v22, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 165
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 169
    .end local v6           #_arg0:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_17c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 174
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    .line 175
    .local v18, _result:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v18, :cond_1ac

    .line 177
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    :goto_1a9
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 181
    :cond_1ac
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a9

    .line 187
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ApplicationInfo;
    :sswitch_1b4
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f1

    .line 190
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 196
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_1cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 197
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v18

    .line 198
    .local v18, _result:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v18, :cond_1f3

    .line 200
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    :goto_1ee
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 193
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ActivityInfo;
    :cond_1f1
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_1cd

    .line 204
    .restart local v7       #_arg1:I
    .restart local v18       #_result:Landroid/content/pm/ActivityInfo;
    :cond_1f3
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1ee

    .line 210
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ActivityInfo;
    :sswitch_1fb
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_238

    .line 213
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 219
    .restart local v6       #_arg0:Landroid/content/ComponentName;
    :goto_214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 220
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v18

    .line 221
    .restart local v18       #_result:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v18, :cond_23a

    .line 223
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 229
    :goto_235
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 216
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ActivityInfo;
    :cond_238
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_214

    .line 227
    .restart local v7       #_arg1:I
    .restart local v18       #_result:Landroid/content/pm/ActivityInfo;
    :cond_23a
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_235

    .line 233
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ActivityInfo;
    :sswitch_242
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27f

    .line 236
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 242
    .restart local v6       #_arg0:Landroid/content/ComponentName;
    :goto_25b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 243
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v18

    .line 244
    .local v18, _result:Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v18, :cond_281

    .line 246
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    :goto_27c
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 239
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ServiceInfo;
    :cond_27f
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_25b

    .line 250
    .restart local v7       #_arg1:I
    .restart local v18       #_result:Landroid/content/pm/ServiceInfo;
    :cond_281
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27c

    .line 256
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ServiceInfo;
    :sswitch_289
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c6

    .line 259
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 265
    .restart local v6       #_arg0:Landroid/content/ComponentName;
    :goto_2a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 266
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v18

    .line 267
    .local v18, _result:Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v18, :cond_2c8

    .line 269
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 275
    :goto_2c3
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 262
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ProviderInfo;
    :cond_2c6
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_2a2

    .line 273
    .restart local v7       #_arg1:I
    .restart local v18       #_result:Landroid/content/pm/ProviderInfo;
    :cond_2c8
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c3

    .line 279
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ProviderInfo;
    :sswitch_2d0
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 285
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 291
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_2f5
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 295
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 296
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v18

    .line 297
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 303
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:I
    :sswitch_31a
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_349

    .line 306
    sget-object v5, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 311
    .local v6, _arg0:Landroid/content/pm/PermissionInfo;
    :goto_333
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v18

    .line 312
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v18, :cond_34b

    const/4 v5, 0x1

    :goto_340
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 309
    .end local v6           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v18           #_result:Z
    :cond_349
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/pm/PermissionInfo;
    goto :goto_333

    .line 313
    .restart local v18       #_result:Z
    :cond_34b
    const/4 v5, 0x0

    goto :goto_340

    .line 318
    .end local v6           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v18           #_result:Z
    :sswitch_34d
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 327
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_365
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 330
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v18

    .line 331
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v18, :cond_387

    const/4 v5, 0x1

    :goto_37e
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 332
    :cond_387
    const/4 v5, 0x0

    goto :goto_37e

    .line 337
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:Z
    :sswitch_389
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 341
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 343
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 349
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_3ae
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 353
    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 354
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v18

    .line 355
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 361
    .end local v6           #_arg0:I
    .end local v7           #_arg1:I
    .end local v18           #_result:I
    :sswitch_3d3
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 364
    .restart local v6       #_arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v18

    .line 365
    .local v18, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 367
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 371
    .end local v6           #_arg0:I
    .end local v18           #_result:[Ljava/lang/String;
    :sswitch_3f3
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 374
    .restart local v6       #_arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v18

    .line 375
    .local v18, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 381
    .end local v6           #_arg0:I
    .end local v18           #_result:Ljava/lang/String;
    :sswitch_413
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v18

    .line 385
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 391
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_433
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_475

    .line 394
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 400
    .local v6, _arg0:Landroid/content/Intent;
    :goto_44c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 402
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 403
    .local v8, _arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 404
    .local v18, _result:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v18, :cond_477

    .line 406
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 412
    :goto_472
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 397
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v18           #_result:Landroid/content/pm/ResolveInfo;
    :cond_475
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_44c

    .line 410
    .restart local v7       #_arg1:Ljava/lang/String;
    .restart local v8       #_arg2:I
    .restart local v18       #_result:Landroid/content/pm/ResolveInfo;
    :cond_477
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_472

    .line 416
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v18           #_result:Landroid/content/pm/ResolveInfo;
    :sswitch_47f
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4b6

    .line 419
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 425
    .restart local v6       #_arg0:Landroid/content/Intent;
    :goto_498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 427
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 428
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 429
    .local v25, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 431
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 422
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v25           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4b6
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_498

    .line 435
    .end local v6           #_arg0:Landroid/content/Intent;
    :sswitch_4b8
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_50c

    .line 438
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 444
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_4d1
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/Intent;

    .line 446
    .local v7, _arg1:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, _arg2:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_50e

    .line 449
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 455
    .local v9, _arg3:Landroid/content/Intent;
    :goto_4f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 457
    .local v10, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg5:I
    move-object/from16 v5, p0

    .line 458
    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 459
    .restart local v25       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 461
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 441
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:[Landroid/content/Intent;
    .end local v8           #_arg2:[Ljava/lang/String;
    .end local v9           #_arg3:Landroid/content/Intent;
    .end local v10           #_arg4:Ljava/lang/String;
    .end local v11           #_arg5:I
    .end local v25           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_50c
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_4d1

    .line 452
    .restart local v7       #_arg1:[Landroid/content/Intent;
    .restart local v8       #_arg2:[Ljava/lang/String;
    :cond_50e
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/content/Intent;
    goto :goto_4f1

    .line 465
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:[Landroid/content/Intent;
    .end local v8           #_arg2:[Ljava/lang/String;
    .end local v9           #_arg3:Landroid/content/Intent;
    :sswitch_510
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_547

    .line 468
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 474
    .local v6, _arg0:Landroid/content/Intent;
    :goto_529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 476
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 477
    .local v8, _arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 478
    .restart local v25       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 480
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 471
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v25           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_547
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_529

    .line 484
    .end local v6           #_arg0:Landroid/content/Intent;
    :sswitch_549
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_58b

    .line 487
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 493
    .restart local v6       #_arg0:Landroid/content/Intent;
    :goto_562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 495
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 496
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 497
    .restart local v18       #_result:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    if-eqz v18, :cond_58d

    .line 499
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 505
    :goto_588
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 490
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v18           #_result:Landroid/content/pm/ResolveInfo;
    :cond_58b
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_562

    .line 503
    .restart local v7       #_arg1:Ljava/lang/String;
    .restart local v8       #_arg2:I
    .restart local v18       #_result:Landroid/content/pm/ResolveInfo;
    :cond_58d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_588

    .line 509
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v18           #_result:Landroid/content/pm/ResolveInfo;
    :sswitch_595
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5cc

    .line 512
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 518
    .restart local v6       #_arg0:Landroid/content/Intent;
    :goto_5ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 520
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 521
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 522
    .restart local v25       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 524
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 515
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v25           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5cc
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_5ae

    .line 528
    .end local v6           #_arg0:Landroid/content/Intent;
    :sswitch_5ce
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 532
    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 533
    .restart local v7       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v18

    .line 534
    .local v18, _result:Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    if-eqz v18, :cond_5fe

    .line 536
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 542
    :goto_5fb
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 540
    :cond_5fe
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5fb

    .line 546
    .end local v6           #_arg0:I
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v18           #_result:Landroid/content/pm/ParceledListSlice;
    :sswitch_606
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 550
    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 551
    .restart local v7       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v18

    .line 552
    .restart local v18       #_result:Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    if-eqz v18, :cond_636

    .line 554
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 560
    :goto_633
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 558
    :cond_636
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_633

    .line 564
    .end local v6           #_arg0:I
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v18           #_result:Landroid/content/pm/ParceledListSlice;
    :sswitch_63e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 567
    .restart local v6       #_arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v19

    .line 568
    .local v19, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 570
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 574
    .end local v6           #_arg0:I
    .end local v19           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_65e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 578
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 579
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v18

    .line 580
    .local v18, _result:Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v18, :cond_68e

    .line 582
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 588
    :goto_68b
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 586
    :cond_68e
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_68b

    .line 592
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ProviderInfo;
    :sswitch_696
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 596
    .local v15, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 597
    .local v17, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    move-object/from16 v0, p3

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 600
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 601
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 605
    .end local v15           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_6c6
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 609
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 611
    .restart local v7       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 612
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v24

    .line 613
    .local v24, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 615
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 619
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:I
    .end local v24           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_6f0
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_72d

    .line 622
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 628
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 629
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v18

    .line 630
    .local v18, _result:Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    if-eqz v18, :cond_72f

    .line 632
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 638
    :goto_72a
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 625
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/InstrumentationInfo;
    :cond_72d
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_709

    .line 636
    .restart local v7       #_arg1:I
    .restart local v18       #_result:Landroid/content/pm/InstrumentationInfo;
    :cond_72f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_72a

    .line 642
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/InstrumentationInfo;
    :sswitch_737
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 646
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 647
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v20

    .line 648
    .local v20, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 650
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 654
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v20           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :sswitch_75c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_794

    .line 657
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 663
    .local v6, _arg0:Landroid/net/Uri;
    :goto_775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v7

    .line 665
    .local v7, _arg1:Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 667
    .restart local v8       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 668
    .local v9, _arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 660
    .end local v6           #_arg0:Landroid/net/Uri;
    .end local v7           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Ljava/lang/String;
    :cond_794
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/net/Uri;
    goto :goto_775

    .line 674
    .end local v6           #_arg0:Landroid/net/Uri;
    :sswitch_796
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 677
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(I)V

    .line 678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 683
    .end local v6           #_arg0:I
    :sswitch_7ae
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 687
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v7

    .line 689
    .local v7, _arg1:Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 690
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 696
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageDeleteObserver;
    .end local v8           #_arg2:I
    :sswitch_7d4
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 699
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 700
    .local v18, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 702
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 706
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:Ljava/lang/String;
    :sswitch_7f4
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 709
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPackageToPreferred(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 715
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_80c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 718
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removePackageFromPreferred(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 724
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_824
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 727
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v21

    .line 728
    .local v21, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 730
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 734
    .end local v6           #_arg0:I
    .end local v21           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_844
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_88c

    .line 737
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 743
    .local v6, _arg0:Landroid/content/IntentFilter;
    :goto_85d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 745
    .local v7, _arg1:I
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/ComponentName;

    .line 747
    .local v8, _arg2:[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_88e

    .line 748
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 753
    .local v9, _arg3:Landroid/content/ComponentName;
    :goto_87d
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 754
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 740
    .end local v6           #_arg0:Landroid/content/IntentFilter;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[Landroid/content/ComponentName;
    .end local v9           #_arg3:Landroid/content/ComponentName;
    :cond_88c
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/IntentFilter;
    goto :goto_85d

    .line 751
    .restart local v7       #_arg1:I
    .restart local v8       #_arg2:[Landroid/content/ComponentName;
    :cond_88e
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/content/ComponentName;
    goto :goto_87d

    .line 759
    .end local v6           #_arg0:Landroid/content/IntentFilter;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[Landroid/content/ComponentName;
    .end local v9           #_arg3:Landroid/content/ComponentName;
    :sswitch_890
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8d8

    .line 762
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 768
    .restart local v6       #_arg0:Landroid/content/IntentFilter;
    :goto_8a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 770
    .restart local v7       #_arg1:I
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/ComponentName;

    .line 772
    .restart local v8       #_arg2:[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8da

    .line 773
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 778
    .restart local v9       #_arg3:Landroid/content/ComponentName;
    :goto_8c9
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 765
    .end local v6           #_arg0:Landroid/content/IntentFilter;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[Landroid/content/ComponentName;
    .end local v9           #_arg3:Landroid/content/ComponentName;
    :cond_8d8
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/IntentFilter;
    goto :goto_8a9

    .line 776
    .restart local v7       #_arg1:I
    .restart local v8       #_arg2:[Landroid/content/ComponentName;
    :cond_8da
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/content/ComponentName;
    goto :goto_8c9

    .line 784
    .end local v6           #_arg0:Landroid/content/IntentFilter;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[Landroid/content/ComponentName;
    .end local v9           #_arg3:Landroid/content/ComponentName;
    :sswitch_8dc
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 787
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 793
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_8f4
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v14, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v16, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 800
    .local v8, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v16

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v18

    .line 801
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    move-object/from16 v0, p3

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 804
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 805
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 809
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v14           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v16           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v18           #_result:I
    :sswitch_92e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_95d

    .line 812
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 818
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 820
    .restart local v7       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 821
    .local v8, _arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 822
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 815
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:I
    :cond_95d
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_947

    .line 827
    .end local v6           #_arg0:Landroid/content/ComponentName;
    :sswitch_95f
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_98c

    .line 830
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 835
    .restart local v6       #_arg0:Landroid/content/ComponentName;
    :goto_978
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v18

    .line 836
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 833
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v18           #_result:I
    :cond_98c
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_978

    .line 842
    .end local v6           #_arg0:Landroid/content/ComponentName;
    :sswitch_98e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 846
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 848
    .restart local v7       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 849
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 855
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:I
    :sswitch_9b0
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 858
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v18

    .line 859
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 865
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_9d0
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 869
    .local v12, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .line 870
    .local v7, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 871
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 876
    .end local v7           #_arg1:Landroid/content/pm/IPackageDataObserver;
    .end local v12           #_arg0:J
    :sswitch_9f1
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 880
    .restart local v12       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a1b

    .line 881
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .line 886
    .local v7, _arg1:Landroid/content/IntentSender;
    :goto_a0e
    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(JLandroid/content/IntentSender;)V

    .line 887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 884
    .end local v7           #_arg1:Landroid/content/IntentSender;
    :cond_a1b
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/content/IntentSender;
    goto :goto_a0e

    .line 892
    .end local v7           #_arg1:Landroid/content/IntentSender;
    .end local v12           #_arg0:J
    :sswitch_a1d
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 896
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .line 897
    .local v7, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 903
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageDataObserver;
    :sswitch_a3e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 907
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .line 908
    .restart local v7       #_arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 914
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageDataObserver;
    :sswitch_a5f
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 918
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v7

    .line 919
    .local v7, _arg1:Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 920
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 925
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageStatsObserver;
    :sswitch_a80
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v18

    .line 927
    .local v18, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 929
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 933
    .end local v18           #_result:[Ljava/lang/String;
    :sswitch_a99
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v18

    .line 935
    .local v18, _result:[Landroid/content/pm/FeatureInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 937
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 941
    .end local v18           #_result:[Landroid/content/pm/FeatureInfo;
    :sswitch_ab4
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 944
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 945
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    if-eqz v18, :cond_ad6

    const/4 v5, 0x1

    :goto_acd
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 946
    :cond_ad6
    const/4 v5, 0x0

    goto :goto_acd

    .line 951
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:Z
    :sswitch_ad8
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 958
    :sswitch_ae9
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v18

    .line 960
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    if-eqz v18, :cond_b04

    const/4 v5, 0x1

    :goto_afb
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 961
    :cond_b04
    const/4 v5, 0x0

    goto :goto_afb

    .line 966
    .end local v18           #_result:Z
    :sswitch_b06
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    .line 968
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 973
    :sswitch_b17
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v18

    .line 975
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    if-eqz v18, :cond_b32

    const/4 v5, 0x1

    :goto_b29
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 976
    :cond_b32
    const/4 v5, 0x0

    goto :goto_b29

    .line 981
    .end local v18           #_result:Z
    :sswitch_b34
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 984
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->performDexOpt(Ljava/lang/String;)Z

    move-result v18

    .line 985
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    if-eqz v18, :cond_b56

    const/4 v5, 0x1

    :goto_b4d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 987
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 986
    :cond_b56
    const/4 v5, 0x0

    goto :goto_b4d

    .line 991
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:Z
    :sswitch_b58
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b7d

    const/4 v5, 0x1

    move v6, v5

    .line 995
    .local v6, _arg0:Z
    :goto_b68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b80

    const/4 v5, 0x1

    move v7, v5

    .line 996
    .local v7, _arg1:Z
    :goto_b70
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    .line 997
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 993
    .end local v6           #_arg0:Z
    .end local v7           #_arg1:Z
    :cond_b7d
    const/4 v5, 0x0

    move v6, v5

    goto :goto_b68

    .line 995
    .restart local v6       #_arg0:Z
    :cond_b80
    const/4 v5, 0x0

    move v7, v5

    goto :goto_b70

    .line 1002
    .end local v6           #_arg0:Z
    :sswitch_b83
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1005
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1006
    .local v18, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1008
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1012
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:Ljava/lang/String;
    :sswitch_ba3
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1016
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v7

    .line 1018
    .local v7, _arg1:Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1019
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    .line 1020
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1025
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageMoveObserver;
    .end local v8           #_arg2:I
    :sswitch_bc9
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_bf8

    .line 1028
    sget-object v5, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 1033
    .local v6, _arg0:Landroid/content/pm/PermissionInfo;
    :goto_be2
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v18

    .line 1034
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    if-eqz v18, :cond_bfa

    const/4 v5, 0x1

    :goto_bef
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1031
    .end local v6           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v18           #_result:Z
    :cond_bf8
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/pm/PermissionInfo;
    goto :goto_be2

    .line 1035
    .restart local v18       #_result:Z
    :cond_bfa
    const/4 v5, 0x0

    goto :goto_bef

    .line 1040
    .end local v6           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v18           #_result:Z
    :sswitch_bfc
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1043
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v18

    .line 1044
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    if-eqz v18, :cond_c1e

    const/4 v5, 0x1

    :goto_c15
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1045
    :cond_c1e
    const/4 v5, 0x0

    goto :goto_c15

    .line 1050
    .end local v6           #_arg0:I
    .end local v18           #_result:Z
    :sswitch_c20
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v18

    .line 1052
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 44
    nop

    :sswitch_data_c3a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_49
        0x3 -> :sswitch_68
        0x4 -> :sswitch_87
        0x5 -> :sswitch_a7
        0x6 -> :sswitch_c7
        0x7 -> :sswitch_ff
        0x8 -> :sswitch_124
        0x9 -> :sswitch_15c
        0xa -> :sswitch_17c
        0xb -> :sswitch_1b4
        0xc -> :sswitch_1fb
        0xd -> :sswitch_242
        0xe -> :sswitch_289
        0xf -> :sswitch_2d0
        0x10 -> :sswitch_2f5
        0x11 -> :sswitch_31a
        0x12 -> :sswitch_34d
        0x13 -> :sswitch_365
        0x14 -> :sswitch_389
        0x15 -> :sswitch_3ae
        0x16 -> :sswitch_3d3
        0x17 -> :sswitch_3f3
        0x18 -> :sswitch_413
        0x19 -> :sswitch_433
        0x1a -> :sswitch_47f
        0x1b -> :sswitch_4b8
        0x1c -> :sswitch_510
        0x1d -> :sswitch_549
        0x1e -> :sswitch_595
        0x1f -> :sswitch_5ce
        0x20 -> :sswitch_606
        0x21 -> :sswitch_63e
        0x22 -> :sswitch_65e
        0x23 -> :sswitch_696
        0x24 -> :sswitch_6c6
        0x25 -> :sswitch_6f0
        0x26 -> :sswitch_737
        0x27 -> :sswitch_75c
        0x28 -> :sswitch_796
        0x29 -> :sswitch_7ae
        0x2a -> :sswitch_7d4
        0x2b -> :sswitch_7f4
        0x2c -> :sswitch_80c
        0x2d -> :sswitch_824
        0x2e -> :sswitch_844
        0x2f -> :sswitch_890
        0x30 -> :sswitch_8dc
        0x31 -> :sswitch_8f4
        0x32 -> :sswitch_92e
        0x33 -> :sswitch_95f
        0x34 -> :sswitch_98e
        0x35 -> :sswitch_9b0
        0x36 -> :sswitch_9d0
        0x37 -> :sswitch_9f1
        0x38 -> :sswitch_a1d
        0x39 -> :sswitch_a3e
        0x3a -> :sswitch_a5f
        0x3b -> :sswitch_a80
        0x3c -> :sswitch_a99
        0x3d -> :sswitch_ab4
        0x3e -> :sswitch_ad8
        0x3f -> :sswitch_ae9
        0x40 -> :sswitch_b06
        0x41 -> :sswitch_b17
        0x42 -> :sswitch_b34
        0x43 -> :sswitch_b58
        0x44 -> :sswitch_b83
        0x45 -> :sswitch_ba3
        0x46 -> :sswitch_bc9
        0x47 -> :sswitch_bfc
        0x48 -> :sswitch_c20
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPlayNotificationSounds:I = 0x60

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getShowSafeUnmountNotification:I = 0x62

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_setPlayNotificationSounds:I = 0x61

.field static final TRANSACTION_setShowSafeUnmountNotification:I = 0x63

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 719
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 720
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 708
    if-nez p0, :cond_4

    .line 709
    const/4 v1, 0x0

    .line 715
    :goto_3
    return-object v1

    .line 711
    :cond_4
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 712
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_14

    .line 713
    check-cast v0, Landroid/os/storage/IMountService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 715
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/os/storage/IMountService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 724
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 36
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
    .line 730
    sparse-switch p1, :sswitch_data_3fc

    .line 1015
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 732
    :sswitch_8
    const-string v5, "IMountService"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 733
    const/4 v5, 0x1

    goto :goto_7

    .line 736
    :sswitch_12
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v15

    .line 739
    .local v15, listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    const/4 v5, 0x1

    goto :goto_7

    .line 744
    .end local v15           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_2d
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v15

    .line 747
    .restart local v15       #listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    const/4 v5, 0x1

    goto :goto_7

    .line 752
    .end local v15           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_48
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v24

    .line 754
    .local v24, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    if-eqz v24, :cond_62

    const/4 v5, 0x1

    :goto_5a
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    const/4 v5, 0x1

    goto :goto_7

    .line 755
    :cond_62
    const/4 v5, 0x0

    goto :goto_5a

    .line 759
    .end local v24           #result:Z
    :sswitch_64
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7f

    const/4 v5, 0x1

    move v11, v5

    .line 762
    .local v11, enable:Z
    :goto_74
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    const/4 v5, 0x1

    goto :goto_7

    .line 761
    .end local v11           #enable:Z
    :cond_7f
    const/4 v5, 0x0

    move v11, v5

    goto :goto_74

    .line 767
    :sswitch_82
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v24

    .line 769
    .restart local v24       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    if-eqz v24, :cond_9d

    const/4 v5, 0x1

    :goto_94
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 770
    :cond_9d
    const/4 v5, 0x0

    goto :goto_94

    .line 774
    .end local v24           #result:Z
    :sswitch_9f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 777
    .local v16, mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v25

    .line 778
    .local v25, resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 783
    .end local v16           #mountPoint:Ljava/lang/String;
    .end local v25           #resultCode:I
    :sswitch_c0
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 787
    .restart local v16       #mountPoint:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e2

    const/4 v5, 0x1

    move v13, v5

    .line 788
    .local v13, force:Z
    :goto_d4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;Z)V

    .line 789
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 787
    .end local v13           #force:Z
    :cond_e2
    const/4 v5, 0x0

    move v13, v5

    goto :goto_d4

    .line 793
    .end local v16           #mountPoint:Ljava/lang/String;
    :sswitch_e5
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 796
    .restart local v16       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v24

    .line 797
    .local v24, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 802
    .end local v16           #mountPoint:Ljava/lang/String;
    .end local v24           #result:I
    :sswitch_106
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 805
    .local v22, path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v23

    .line 806
    .local v23, pids:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 808
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 811
    .end local v22           #path:Ljava/lang/String;
    .end local v23           #pids:[I
    :sswitch_127
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 814
    .restart local v16       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 815
    .local v28, state:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 817
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 820
    .end local v16           #mountPoint:Ljava/lang/String;
    .end local v28           #state:Ljava/lang/String;
    :sswitch_148
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 824
    .local v6, id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 826
    .local v7, sizeMb:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 828
    .local v8, fstype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 830
    .local v9, key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, ownerUid:I
    move-object/from16 v5, p0

    .line 831
    invoke-virtual/range {v5 .. v10}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v25

    .line 832
    .restart local v25       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 837
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #sizeMb:I
    .end local v8           #fstype:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v25           #resultCode:I
    :sswitch_177
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 840
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v25

    .line 841
    .restart local v25       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 846
    .end local v6           #id:Ljava/lang/String;
    .end local v25           #resultCode:I
    :sswitch_197
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 850
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c0

    const/4 v5, 0x1

    move v13, v5

    .line 851
    .restart local v13       #force:Z
    :goto_1ab
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v25

    .line 852
    .restart local v25       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 850
    .end local v13           #force:Z
    .end local v25           #resultCode:I
    :cond_1c0
    const/4 v5, 0x0

    move v13, v5

    goto :goto_1ab

    .line 857
    .end local v6           #id:Ljava/lang/String;
    :sswitch_1c3
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 861
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 863
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 864
    .restart local v10       #ownerUid:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v9

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v25

    .line 865
    .restart local v25       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 870
    .end local v6           #id:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v25           #resultCode:I
    :sswitch_1ed
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 874
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_216

    const/4 v5, 0x1

    move v13, v5

    .line 875
    .restart local v13       #force:Z
    :goto_201
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v25

    .line 876
    .restart local v25       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 874
    .end local v13           #force:Z
    .end local v25           #resultCode:I
    :cond_216
    const/4 v5, 0x0

    move v13, v5

    goto :goto_201

    .line 881
    .end local v6           #id:Ljava/lang/String;
    :sswitch_219
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 884
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v29

    .line 885
    .local v29, status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    if-eqz v29, :cond_23b

    const/4 v5, 0x1

    :goto_232
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 886
    :cond_23b
    const/4 v5, 0x0

    goto :goto_232

    .line 890
    .end local v6           #id:Ljava/lang/String;
    .end local v29           #status:Z
    :sswitch_23d
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 894
    .local v21, oldId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 895
    .local v18, newId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 896
    .restart local v25       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 898
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 901
    .end local v18           #newId:Ljava/lang/String;
    .end local v21           #oldId:Ljava/lang/String;
    .end local v25           #resultCode:I
    :sswitch_264
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 904
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 905
    .restart local v22       #path:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 907
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 910
    .end local v6           #id:Ljava/lang/String;
    .end local v22           #path:Ljava/lang/String;
    :sswitch_284
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v14

    .line 912
    .local v14, ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    move-object/from16 v0, p3

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 914
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 917
    .end local v14           #ids:[Ljava/lang/String;
    :sswitch_29c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v20

    .line 921
    .local v20, observer:Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 926
    .end local v20           #observer:Landroid/os/storage/IMountShutdownObserver;
    :sswitch_2b9
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 932
    :sswitch_2ca
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 936
    .local v12, filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 938
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v20

    .line 940
    .local v20, observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 941
    .local v19, nonce:I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v9

    move-object/from16 v3, v20

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 942
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 946
    .end local v9           #key:Ljava/lang/String;
    .end local v12           #filename:Ljava/lang/String;
    .end local v19           #nonce:I
    .end local v20           #observer:Landroid/os/storage/IObbActionListener;
    :sswitch_2f7
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 950
    .restart local v12       #filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_328

    const/4 v5, 0x1

    move v13, v5

    .line 952
    .restart local v13       #force:Z
    :goto_30b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v20

    .line 954
    .restart local v20       #observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 955
    .restart local v19       #nonce:I
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object/from16 v3, v20

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 950
    .end local v13           #force:Z
    .end local v19           #nonce:I
    .end local v20           #observer:Landroid/os/storage/IObbActionListener;
    :cond_328
    const/4 v5, 0x0

    move v13, v5

    goto :goto_30b

    .line 960
    .end local v12           #filename:Ljava/lang/String;
    :sswitch_32b
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 963
    .restart local v12       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v29

    .line 964
    .restart local v29       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    if-eqz v29, :cond_34d

    const/4 v5, 0x1

    :goto_344
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 966
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 965
    :cond_34d
    const/4 v5, 0x0

    goto :goto_344

    .line 969
    .end local v12           #filename:Ljava/lang/String;
    .end local v29           #status:Z
    :sswitch_34f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 972
    .restart local v12       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 973
    .local v17, mountedPath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 975
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 979
    .end local v12           #filename:Ljava/lang/String;
    .end local v17           #mountedPath:Ljava/lang/String;
    :sswitch_36f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPlayNotificationSounds()Z

    move-result v29

    .line 981
    .restart local v29       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    if-eqz v29, :cond_38a

    const/4 v5, 0x1

    :goto_381
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 982
    :cond_38a
    const/4 v5, 0x0

    goto :goto_381

    .line 987
    .end local v29           #status:Z
    :sswitch_38c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3aa

    const/4 v5, 0x1

    move/from16 v30, v5

    .line 990
    .local v30, value:Z
    :goto_39d
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setPlayNotificationSounds(Z)V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 989
    .end local v30           #value:Z
    :cond_3aa
    const/4 v5, 0x0

    move/from16 v30, v5

    goto :goto_39d

    .line 996
    :sswitch_3ae
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 999
    .restart local v22       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getShowSafeUnmountNotification(Ljava/lang/String;)Z

    move-result v26

    .line 1000
    .local v26, ret:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    if-eqz v26, :cond_3d1

    const/4 v5, 0x1

    :goto_3c8
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1001
    :cond_3d1
    const/4 v5, 0x0

    goto :goto_3c8

    .line 1006
    .end local v22           #path:Ljava/lang/String;
    .end local v26           #ret:Z
    :sswitch_3d3
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1010
    .restart local v22       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f7

    const/4 v5, 0x1

    move/from16 v27, v5

    .line 1011
    .local v27, set:Z
    :goto_3e8
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setShowSafeUnmountNotification(Ljava/lang/String;Z)V

    .line 1012
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1010
    .end local v27           #set:Z
    :cond_3f7
    const/4 v5, 0x0

    move/from16 v27, v5

    goto :goto_3e8

    .line 730
    nop

    :sswitch_data_3fc
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_48
        0x4 -> :sswitch_64
        0x5 -> :sswitch_82
        0x6 -> :sswitch_9f
        0x7 -> :sswitch_c0
        0x8 -> :sswitch_e5
        0x9 -> :sswitch_106
        0xa -> :sswitch_127
        0xb -> :sswitch_148
        0xc -> :sswitch_177
        0xd -> :sswitch_197
        0xe -> :sswitch_1c3
        0xf -> :sswitch_1ed
        0x10 -> :sswitch_219
        0x11 -> :sswitch_23d
        0x12 -> :sswitch_264
        0x13 -> :sswitch_284
        0x14 -> :sswitch_29c
        0x15 -> :sswitch_2b9
        0x16 -> :sswitch_2ca
        0x17 -> :sswitch_2f7
        0x18 -> :sswitch_32b
        0x19 -> :sswitch_34f
        0x60 -> :sswitch_36f
        0x61 -> :sswitch_38c
        0x62 -> :sswitch_3ae
        0x63 -> :sswitch_3d3
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

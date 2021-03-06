.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .registers 3
    .parameter "obj"

    .prologue
    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v1, 0x0

    .line 59
    :goto_3
    return-object v1

    .line 53
    :cond_4
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 55
    .local v0, in:Landroid/app/IApplicationThread;
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 56
    goto :goto_3

    .line 59
    :cond_10
    new-instance v1, Landroid/app/ApplicationThreadProxy;

    invoke-direct {v1, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 422
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 77
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
    .line 69
    packed-switch p1, :pswitch_data_530

    .line 417
    :pswitch_3
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 72
    :pswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 74
    .local v7, b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    const/4 v5, 0x1

    move/from16 v55, v5

    .line 75
    .local v55, finished:Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v5, 0x1

    move/from16 v71, v5

    .line 76
    .local v71, userLeaving:Z
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 77
    .local v19, configChanges:I
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v55

    move/from16 v3, v71

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 78
    const/4 v5, 0x1

    goto :goto_7

    .line 74
    .end local v19           #configChanges:I
    .end local v55           #finished:Z
    .end local v71           #userLeaving:Z
    :cond_38
    const/4 v5, 0x0

    move/from16 v55, v5

    goto :goto_1d

    .line 75
    .restart local v55       #finished:Z
    :cond_3c
    const/4 v5, 0x0

    move/from16 v71, v5

    goto :goto_26

    .line 83
    .end local v7           #b:Landroid/os/IBinder;
    .end local v55           #finished:Z
    :pswitch_40
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 85
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_65

    const/4 v5, 0x1

    move/from16 v67, v5

    .line 86
    .local v67, show:Z
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 87
    .restart local v19       #configChanges:I
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v67

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 88
    const/4 v5, 0x1

    goto :goto_7

    .line 85
    .end local v19           #configChanges:I
    .end local v67           #show:Z
    :cond_65
    const/4 v5, 0x0

    move/from16 v67, v5

    goto :goto_55

    .line 93
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_69
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 95
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_88

    const/4 v5, 0x1

    move/from16 v67, v5

    .line 96
    .restart local v67       #show:Z
    :goto_7e
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 97
    const/4 v5, 0x1

    goto :goto_7

    .line 95
    .end local v67           #show:Z
    :cond_88
    const/4 v5, 0x0

    move/from16 v67, v5

    goto :goto_7e

    .line 102
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_8c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 104
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_aa

    const/4 v5, 0x1

    move v14, v5

    .line 105
    .local v14, isForward:Z
    :goto_a0
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    .line 106
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 104
    .end local v14           #isForward:Z
    :cond_aa
    const/4 v5, 0x0

    move v14, v5

    goto :goto_a0

    .line 111
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_ad
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 113
    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 114
    .local v11, ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 115
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 120
    .end local v7           #b:Landroid/os/IBinder;
    .end local v11           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_cc
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 122
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 123
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 124
    .local v8, ident:I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 125
    .local v9, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 126
    .local v10, state:Landroid/os/Bundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 127
    .restart local v11       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 128
    .local v12, pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_120

    const/4 v5, 0x1

    move v13, v5

    .line 129
    .local v13, notResumed:Z
    :goto_110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_123

    const/4 v5, 0x1

    move v14, v5

    .restart local v14       #isForward:Z
    :goto_118
    move-object/from16 v5, p0

    .line 130
    invoke-virtual/range {v5 .. v14}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 132
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 128
    .end local v13           #notResumed:Z
    .end local v14           #isForward:Z
    :cond_120
    const/4 v5, 0x0

    move v13, v5

    goto :goto_110

    .line 129
    .restart local v13       #notResumed:Z
    :cond_123
    const/4 v5, 0x0

    move v14, v5

    goto :goto_118

    .line 137
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #b:Landroid/os/IBinder;
    .end local v8           #ident:I
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v10           #state:Landroid/os/Bundle;
    .end local v11           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v12           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v13           #notResumed:Z
    :pswitch_126
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 139
    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 140
    .restart local v11       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 141
    .restart local v12       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 142
    .restart local v19       #configChanges:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_173

    const/4 v5, 0x1

    move v13, v5

    .line 143
    .restart local v13       #notResumed:Z
    :goto_150
    const/16 v21, 0x0

    .line 144
    .local v21, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_163

    .line 145
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #config:Landroid/content/res/Configuration;
    check-cast v21, Landroid/content/res/Configuration;

    .restart local v21       #config:Landroid/content/res/Configuration;
    :cond_163
    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move/from16 v20, v13

    .line 147
    invoke-virtual/range {v15 .. v21}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V

    .line 148
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 142
    .end local v13           #notResumed:Z
    .end local v21           #config:Landroid/content/res/Configuration;
    :cond_173
    const/4 v5, 0x0

    move v13, v5

    goto :goto_150

    .line 153
    .end local v7           #b:Landroid/os/IBinder;
    .end local v11           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v12           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v19           #configChanges:I
    :pswitch_176
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 155
    .restart local v12       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 156
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 157
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 162
    .end local v7           #b:Landroid/os/IBinder;
    .end local v12           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :pswitch_195
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 164
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1bb

    const/4 v5, 0x1

    move/from16 v56, v5

    .line 165
    .local v56, finishing:Z
    :goto_1aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 166
    .restart local v19       #configChanges:I
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v56

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 167
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 164
    .end local v19           #configChanges:I
    .end local v56           #finishing:Z
    :cond_1bb
    const/4 v5, 0x0

    move/from16 v56, v5

    goto :goto_1aa

    .line 172
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_1bf
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 174
    .restart local v6       #intent:Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 175
    .restart local v9       #info:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 176
    .local v25, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 177
    .local v26, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v27

    .line 178
    .local v27, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1fe

    const/4 v5, 0x1

    move/from16 v28, v5

    .local v28, sync:Z
    :goto_1f2
    move-object/from16 v22, p0

    move-object/from16 v23, v6

    move-object/from16 v24, v9

    .line 179
    invoke-virtual/range {v22 .. v28}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 181
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 178
    .end local v28           #sync:Z
    :cond_1fe
    const/4 v5, 0x0

    move/from16 v28, v5

    goto :goto_1f2

    .line 185
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v25           #resultCode:I
    .end local v26           #resultData:Ljava/lang/String;
    .end local v27           #resultExtras:Landroid/os/Bundle;
    :pswitch_202
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v70

    .line 187
    .local v70, token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ServiceInfo;

    .line 188
    .local v9, info:Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;)V

    .line 189
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 193
    .end local v9           #info:Landroid/content/pm/ServiceInfo;
    .end local v70           #token:Landroid/os/IBinder;
    :pswitch_224
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v70

    .line 195
    .restart local v70       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 196
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_251

    const/4 v5, 0x1

    move/from16 v63, v5

    .line 197
    .local v63, rebind:Z
    :goto_244
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move-object v2, v6

    move/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 198
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 196
    .end local v63           #rebind:Z
    :cond_251
    const/4 v5, 0x0

    move/from16 v63, v5

    goto :goto_244

    .line 202
    .end local v6           #intent:Landroid/content/Intent;
    .end local v70           #token:Landroid/os/IBinder;
    :pswitch_255
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v70

    .line 204
    .restart local v70       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 205
    .restart local v6       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 206
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 211
    .end local v6           #intent:Landroid/content/Intent;
    .end local v70           #token:Landroid/os/IBinder;
    :pswitch_277
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v70

    .line 213
    .restart local v70       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 214
    .local v69, startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 216
    .local v57, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2ac

    .line 217
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/content/Intent;

    .line 221
    .local v50, args:Landroid/content/Intent;
    :goto_29c
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, v69

    move/from16 v3, v57

    move-object/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;IILandroid/content/Intent;)V

    .line 222
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 219
    .end local v50           #args:Landroid/content/Intent;
    :cond_2ac
    const/16 v50, 0x0

    .restart local v50       #args:Landroid/content/Intent;
    goto :goto_29c

    .line 227
    .end local v50           #args:Landroid/content/Intent;
    .end local v57           #fl:I
    .end local v69           #startId:I
    .end local v70           #token:Landroid/os/IBinder;
    :pswitch_2af
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v70

    .line 229
    .restart local v70       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 230
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 235
    .end local v70           #token:Landroid/os/IBinder;
    :pswitch_2c5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 237
    .local v30, packageName:Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 239
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v32

    .line 241
    .local v32, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_331

    new-instance v5, Landroid/content/ComponentName;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    move-object/from16 v33, v5

    .line 243
    .local v33, testName:Landroid/content/ComponentName;
    :goto_2f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 244
    .local v34, profileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v35

    .line 245
    .local v35, testArgs:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 246
    .local v52, binder:Landroid/os/IBinder;
    invoke-static/range {v52 .. v52}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v36

    .line 247
    .local v36, testWatcher:Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 248
    .local v37, testMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_335

    const/4 v5, 0x1

    move/from16 v38, v5

    .line 249
    .local v38, restrictedBackupMode:Z
    :goto_312
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/res/Configuration;

    .line 250
    .restart local v21       #config:Landroid/content/res/Configuration;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v40

    .local v40, services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    move-object/from16 v29, p0

    move-object/from16 v31, v9

    move-object/from16 v39, v21

    .line 251
    invoke-virtual/range {v29 .. v40}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZLandroid/content/res/Configuration;Ljava/util/Map;)V

    .line 255
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 241
    .end local v21           #config:Landroid/content/res/Configuration;
    .end local v33           #testName:Landroid/content/ComponentName;
    .end local v34           #profileName:Ljava/lang/String;
    .end local v35           #testArgs:Landroid/os/Bundle;
    .end local v36           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v37           #testMode:I
    .end local v38           #restrictedBackupMode:Z
    .end local v40           #services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v52           #binder:Landroid/os/IBinder;
    :cond_331
    const/4 v5, 0x0

    move-object/from16 v33, v5

    goto :goto_2f5

    .line 248
    .restart local v33       #testName:Landroid/content/ComponentName;
    .restart local v34       #profileName:Ljava/lang/String;
    .restart local v35       #testArgs:Landroid/os/Bundle;
    .restart local v36       #testWatcher:Landroid/app/IInstrumentationWatcher;
    .restart local v37       #testMode:I
    .restart local v52       #binder:Landroid/os/IBinder;
    :cond_335
    const/4 v5, 0x0

    move/from16 v38, v5

    goto :goto_312

    .line 260
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    .end local v30           #packageName:Ljava/lang/String;
    .end local v32           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v33           #testName:Landroid/content/ComponentName;
    .end local v34           #profileName:Ljava/lang/String;
    .end local v35           #testArgs:Landroid/os/Bundle;
    .end local v36           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v37           #testMode:I
    .end local v52           #binder:Landroid/os/IBinder;
    :pswitch_339
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 262
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 267
    :pswitch_347
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 269
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 274
    :pswitch_355
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 276
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->requestThumbnail(Landroid/os/IBinder;)V

    .line 277
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 282
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_36a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/res/Configuration;

    .line 284
    .restart local v21       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 285
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 289
    .end local v21           #config:Landroid/content/res/Configuration;
    :pswitch_387
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 291
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 295
    :pswitch_395
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 297
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 301
    :pswitch_3a3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v54

    .line 303
    .local v54, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v66

    .line 304
    .local v66, service:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v50

    .line 305
    .local v50, args:[Ljava/lang/String;
    if-eqz v54, :cond_3ca

    .line 306
    invoke-virtual/range {v54 .. v54}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v66

    move-object/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 308
    :try_start_3c7
    invoke-virtual/range {v54 .. v54}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3ca
    .catch Ljava/io/IOException; {:try_start_3c7 .. :try_end_3ca} :catch_52d

    .line 312
    :cond_3ca
    :goto_3ca
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 316
    .end local v50           #args:[Ljava/lang/String;
    .end local v54           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v66           #service:Landroid/os/IBinder;
    :pswitch_3cd
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v42

    .line 319
    .local v42, receiver:Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 320
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 321
    .restart local v25       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 322
    .local v45, dataStr:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v46

    .line 323
    .local v46, extras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_412

    const/4 v5, 0x1

    move/from16 v47, v5

    .line 324
    .local v47, ordered:Z
    :goto_3fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_416

    const/4 v5, 0x1

    move/from16 v48, v5

    .local v48, sticky:Z
    :goto_406
    move-object/from16 v41, p0

    move-object/from16 v43, v6

    move/from16 v44, v25

    .line 325
    invoke-virtual/range {v41 .. v48}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 327
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 323
    .end local v47           #ordered:Z
    .end local v48           #sticky:Z
    :cond_412
    const/4 v5, 0x0

    move/from16 v47, v5

    goto :goto_3fd

    .line 324
    .restart local v47       #ordered:Z
    :cond_416
    const/4 v5, 0x0

    move/from16 v48, v5

    goto :goto_406

    .line 332
    .end local v6           #intent:Landroid/content/Intent;
    .end local v25           #resultCode:I
    .end local v42           #receiver:Landroid/content/IIntentReceiver;
    .end local v45           #dataStr:Ljava/lang/String;
    .end local v46           #extras:Landroid/os/Bundle;
    .end local v47           #ordered:Z
    :pswitch_41a
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 333
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 338
    :pswitch_420
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 340
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 341
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 346
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_435
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_464

    const/4 v5, 0x1

    move/from16 v68, v5

    .line 348
    .local v68, start:Z
    :goto_446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v62

    .line 349
    .local v62, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_468

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object/from16 v54, v5

    .line 351
    .restart local v54       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_456
    move-object/from16 v0, p0

    move/from16 v1, v68

    move-object/from16 v2, v62

    move-object/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 352
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 347
    .end local v54           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v62           #path:Ljava/lang/String;
    .end local v68           #start:Z
    :cond_464
    const/4 v5, 0x0

    move/from16 v68, v5

    goto :goto_446

    .line 349
    .restart local v62       #path:Ljava/lang/String;
    .restart local v68       #start:Z
    :cond_468
    const/4 v5, 0x0

    move-object/from16 v54, v5

    goto :goto_456

    .line 357
    .end local v62           #path:Ljava/lang/String;
    .end local v68           #start:Z
    :pswitch_46c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 359
    .local v58, group:I
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 360
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 365
    .end local v58           #group:I
    :pswitch_482
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/content/pm/ApplicationInfo;

    .line 367
    .local v49, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 368
    .local v51, backupMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;I)V

    .line 369
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 374
    .end local v49           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v51           #backupMode:I
    :pswitch_4a5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/content/pm/ApplicationInfo;

    .line 376
    .restart local v49       #appInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 377
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 382
    .end local v49           #appInfo:Landroid/content/pm/ApplicationInfo;
    :pswitch_4c2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    new-instance v59, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v59 .. v59}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 384
    .local v59, mi:Landroid/os/Debug$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    const/4 v5, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 387
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 392
    .end local v59           #mi:Landroid/os/Debug$MemoryInfo;
    :pswitch_4e5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 394
    .local v53, cmd:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v61

    .line 395
    .local v61, packages:[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 396
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 401
    .end local v53           #cmd:I
    .end local v61           #packages:[Ljava/lang/String;
    :pswitch_501
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v60

    .line 403
    .local v60, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 404
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 409
    .end local v60           #msg:Ljava/lang/String;
    :pswitch_517
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v64

    .line 411
    .local v64, seconds:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v64

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->requestDelayJITCompilation(J)V

    .line 412
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 309
    .end local v64           #seconds:J
    .restart local v50       #args:[Ljava/lang/String;
    .restart local v54       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v66       #service:Landroid/os/IBinder;
    :catch_52d
    move-exception v5

    goto/16 :goto_3ca

    .line 69
    :pswitch_data_530
    .packed-switch 0x1
        :pswitch_8
        :pswitch_3
        :pswitch_40
        :pswitch_69
        :pswitch_8c
        :pswitch_ad
        :pswitch_cc
        :pswitch_176
        :pswitch_195
        :pswitch_1bf
        :pswitch_202
        :pswitch_2af
        :pswitch_2c5
        :pswitch_339
        :pswitch_355
        :pswitch_36a
        :pswitch_277
        :pswitch_387
        :pswitch_395
        :pswitch_224
        :pswitch_255
        :pswitch_3a3
        :pswitch_3cd
        :pswitch_41a
        :pswitch_420
        :pswitch_126
        :pswitch_3
        :pswitch_435
        :pswitch_46c
        :pswitch_482
        :pswitch_4a5
        :pswitch_4c2
        :pswitch_347
        :pswitch_4e5
        :pswitch_501
        :pswitch_517
    .end packed-switch
.end method

.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static gDefault:Landroid/app/IActivityManager;

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 122
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v1, 0x0

    .line 66
    :goto_3
    return-object v1

    .line 60
    :cond_4
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 62
    .local v0, in:Landroid/app/IActivityManager;
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 63
    goto :goto_3

    .line 66
    :cond_10
    new-instance v1, Landroid/app/ActivityManagerProxy;

    invoke-direct {v1, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 13
    .parameter "intent"
    .parameter "permission"

    .prologue
    .line 106
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 111
    :goto_11
    return-void

    .line 109
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .registers 2

    .prologue
    .line 74
    sget-object v1, Landroid/app/ActivityManagerNative;->gDefault:Landroid/app/IActivityManager;

    if-eqz v1, :cond_7

    .line 77
    sget-object v1, Landroid/app/ActivityManagerNative;->gDefault:Landroid/app/IActivityManager;

    .line 85
    :goto_6
    return-object v1

    .line 79
    :cond_7
    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 82
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityManagerNative;->gDefault:Landroid/app/IActivityManager;

    .line 85
    sget-object v1, Landroid/app/ActivityManagerNative;->gDefault:Landroid/app/IActivityManager;

    goto :goto_6
.end method

.method public static isSystemReady()Z
    .registers 1

    .prologue
    .line 92
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_e

    .line 93
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 95
    :cond_e
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .registers 3
    .parameter "ps"

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 118
    :goto_b
    return-void

    .line 116
    :catch_c
    move-exception v0

    goto :goto_b
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 1314
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 157
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
    .line 127
    packed-switch p1, :pswitch_data_1296

    .line 1309
    :pswitch_3
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .end local p1
    :goto_7
    return v5

    .line 130
    .restart local p1
    :pswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 132
    .local v83, b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 133
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 134
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 136
    .local v9, grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 137
    .local v10, grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 138
    .local v11, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 139
    .local v12, resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 140
    .local v13, requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_64

    const/4 v5, 0x1

    move v14, v5

    .line 141
    .local v14, onlyIfNeeded:Z
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_67

    const/4 v5, 0x1

    move v15, v5

    .local v15, debug:Z
    :goto_52
    move-object/from16 v5, p0

    .line 142
    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v139

    .line 145
    .local v139, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v5, 0x1

    goto :goto_7

    .line 140
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v139           #result:I
    :cond_64
    const/4 v5, 0x0

    move v14, v5

    goto :goto_4a

    .line 141
    .restart local v14       #onlyIfNeeded:Z
    :cond_67
    const/4 v5, 0x0

    move v15, v5

    goto :goto_52

    .line 152
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 154
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 155
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 156
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 157
    .restart local v8       #resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 158
    .restart local v9       #grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 159
    .restart local v10       #grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 160
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 161
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 162
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c9

    const/4 v5, 0x1

    move v14, v5

    .line 163
    .restart local v14       #onlyIfNeeded:Z
    :goto_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_cc

    const/4 v5, 0x1

    move v15, v5

    .restart local v15       #debug:Z
    :goto_b4
    move-object/from16 v5, p0

    .line 164
    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)Landroid/app/IActivityManager$WaitResult;

    move-result-object v139

    .line 167
    .local v139, result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v5, 0x0

    move-object/from16 v0, v139

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 169
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 162
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v139           #result:Landroid/app/IActivityManager$WaitResult;
    :cond_c9
    const/4 v5, 0x0

    move v14, v5

    goto :goto_ac

    .line 163
    .restart local v14       #onlyIfNeeded:Z
    :cond_cc
    const/4 v5, 0x0

    move v15, v5

    goto :goto_b4

    .line 174
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_cf
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 176
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 177
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 178
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 179
    .restart local v8       #resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 180
    .restart local v9       #grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 181
    .restart local v10       #grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 182
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 183
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 184
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_137

    const/4 v5, 0x1

    move v14, v5

    .line 185
    .restart local v14       #onlyIfNeeded:Z
    :goto_111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13a

    const/4 v5, 0x1

    move v15, v5

    .line 186
    .restart local v15       #debug:Z
    :goto_119
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .local v16, config:Landroid/content/res/Configuration;
    move-object/from16 v5, p0

    .line 187
    invoke-virtual/range {v5 .. v16}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLandroid/content/res/Configuration;)I

    move-result v139

    .line 190
    .local v139, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 184
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v16           #config:Landroid/content/res/Configuration;
    .end local v139           #result:I
    :cond_137
    const/4 v5, 0x0

    move v14, v5

    goto :goto_111

    .line 185
    .restart local v14       #onlyIfNeeded:Z
    :cond_13a
    const/4 v5, 0x0

    move v15, v5

    goto :goto_119

    .line 197
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_13d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 199
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 200
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .line 201
    .local v7, intent:Landroid/content/IntentSender;
    const/16 v20, 0x0

    .line 202
    .local v20, fillInIntent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16b

    .line 203
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #fillInIntent:Landroid/content/Intent;
    check-cast v20, Landroid/content/Intent;

    .line 205
    .restart local v20       #fillInIntent:Landroid/content/Intent;
    :cond_16b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 206
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 207
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 208
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 209
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 210
    .local v25, flagsMask:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, flagsValues:I
    move-object/from16 v17, p0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v24, v13

    .line 211
    invoke-virtual/range {v17 .. v26}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I

    move-result v139

    .line 214
    .restart local v139       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 221
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/IntentSender;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v20           #fillInIntent:Landroid/content/Intent;
    .end local v25           #flagsMask:I
    .end local v26           #flagsValues:I
    .end local v83           #b:Landroid/os/IBinder;
    .end local v139           #result:I
    :pswitch_1a2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v86

    .line 223
    .local v86, callingActivity:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 224
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;)Z

    move-result v139

    .line 225
    .local v139, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v139, :cond_1d1

    const/4 v5, 0x1

    :goto_1c8
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 226
    :cond_1d1
    const/4 v5, 0x0

    goto :goto_1c8

    .line 231
    .end local v7           #intent:Landroid/content/Intent;
    .end local v86           #callingActivity:Landroid/os/IBinder;
    .end local v139           #result:Z
    :pswitch_1d3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 233
    .local v46, token:Landroid/os/IBinder;
    const/16 v33, 0x0

    .line 234
    .local v33, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 235
    .local v32, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f6

    .line 236
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    .end local v33           #resultData:Landroid/content/Intent;
    check-cast v33, Landroid/content/Intent;

    .line 238
    .restart local v33       #resultData:Landroid/content/Intent;
    :cond_1f6
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v138

    .line 239
    .local v138, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v138, :cond_211

    const/4 v5, 0x1

    :goto_208
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 240
    :cond_211
    const/4 v5, 0x0

    goto :goto_208

    .line 245
    .end local v32           #resultCode:I
    .end local v33           #resultData:Landroid/content/Intent;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v138           #res:Z
    :pswitch_213
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 247
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 248
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 249
    .restart local v13       #requestCode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object v2, v12

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 255
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_236
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 257
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v138

    .line 258
    .restart local v138       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v138, :cond_259

    const/4 v5, 0x1

    :goto_250
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 259
    :cond_259
    const/4 v5, 0x0

    goto :goto_250

    .line 265
    .end local v46           #token:Landroid/os/IBinder;
    .end local v138           #res:Z
    :pswitch_25b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 267
    .restart local v83       #b:Landroid/os/IBinder;
    if-eqz v83, :cond_2ad

    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v5

    move-object v6, v5

    .line 269
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_26e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 270
    if-eqz v83, :cond_2b0

    invoke-static/range {v83 .. v83}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v5

    move-object/from16 v133, v5

    .line 272
    .local v133, rec:Landroid/content/IIntentReceiver;
    :goto_27a
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v98

    check-cast v98, Landroid/content/IntentFilter;

    .line 273
    .local v98, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 274
    .local v35, perm:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v133

    move-object/from16 v3, v98

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 275
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v7, :cond_2b4

    .line 277
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 282
    :goto_2aa
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 267
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v35           #perm:Ljava/lang/String;
    .end local v98           #filter:Landroid/content/IntentFilter;
    .end local v133           #rec:Landroid/content/IIntentReceiver;
    :cond_2ad
    const/4 v5, 0x0

    move-object v6, v5

    goto :goto_26e

    .line 270
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :cond_2b0
    const/4 v5, 0x0

    move-object/from16 v133, v5

    goto :goto_27a

    .line 280
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v35       #perm:Ljava/lang/String;
    .restart local v98       #filter:Landroid/content/IntentFilter;
    .restart local v133       #rec:Landroid/content/IIntentReceiver;
    :cond_2b4
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2aa

    .line 287
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v35           #perm:Ljava/lang/String;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v98           #filter:Landroid/content/IntentFilter;
    .end local v133           #rec:Landroid/content/IIntentReceiver;
    :pswitch_2bc
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 289
    .restart local v83       #b:Landroid/os/IBinder;
    if-nez v83, :cond_2cd

    .line 290
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 292
    :cond_2cd
    invoke-static/range {v83 .. v83}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v133

    .line 293
    .restart local v133       #rec:Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 300
    .end local v83           #b:Landroid/os/IBinder;
    .end local v133           #rec:Landroid/content/IIntentReceiver;
    :pswitch_2de
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 302
    .restart local v83       #b:Landroid/os/IBinder;
    if-eqz v83, :cond_348

    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v5

    move-object v6, v5

    .line 304
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_2f1
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 305
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 306
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 307
    if-eqz v83, :cond_34b

    invoke-static/range {v83 .. v83}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v5

    move-object v11, v5

    .line 309
    .local v11, resultTo:Landroid/content/IIntentReceiver;
    :goto_30b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 310
    .restart local v32       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 311
    .local v33, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v34

    .line 312
    .local v34, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 313
    .restart local v35       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34e

    const/4 v5, 0x1

    move/from16 v36, v5

    .line 314
    .local v36, serialized:Z
    :goto_324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_352

    const/4 v5, 0x1

    move/from16 v37, v5

    .local v37, sticky:Z
    :goto_32d
    move-object/from16 v27, p0

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v11

    .line 315
    invoke-virtual/range {v27 .. v37}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I

    move-result v138

    .line 318
    .local v138, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    move-object/from16 v0, p3

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 302
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/content/IIntentReceiver;
    .end local v32           #resultCode:I
    .end local v33           #resultData:Ljava/lang/String;
    .end local v34           #resultExtras:Landroid/os/Bundle;
    .end local v35           #perm:Ljava/lang/String;
    .end local v36           #serialized:Z
    .end local v37           #sticky:Z
    .end local v138           #res:I
    :cond_348
    const/4 v5, 0x0

    move-object v6, v5

    goto :goto_2f1

    .line 307
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #resolvedType:Ljava/lang/String;
    :cond_34b
    const/4 v5, 0x0

    move-object v11, v5

    goto :goto_30b

    .line 313
    .restart local v11       #resultTo:Landroid/content/IIntentReceiver;
    .restart local v32       #resultCode:I
    .restart local v33       #resultData:Ljava/lang/String;
    .restart local v34       #resultExtras:Landroid/os/Bundle;
    .restart local v35       #perm:Ljava/lang/String;
    :cond_34e
    const/4 v5, 0x0

    move/from16 v36, v5

    goto :goto_324

    .line 314
    .restart local v36       #serialized:Z
    :cond_352
    const/4 v5, 0x0

    move/from16 v37, v5

    goto :goto_32d

    .line 325
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/content/IIntentReceiver;
    .end local v32           #resultCode:I
    .end local v33           #resultData:Ljava/lang/String;
    .end local v34           #resultExtras:Landroid/os/Bundle;
    .end local v35           #perm:Ljava/lang/String;
    .end local v36           #serialized:Z
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_356
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 327
    .restart local v83       #b:Landroid/os/IBinder;
    if-eqz v83, :cond_381

    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v5

    move-object v6, v5

    .line 328
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_369
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 329
    .restart local v7       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 327
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_381
    const/4 v5, 0x0

    move-object v6, v5

    goto :goto_369

    .line 335
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_384
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 337
    .local v39, who:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 338
    .restart local v32       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 339
    .restart local v33       #resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v34

    .line 340
    .restart local v34       #resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b8

    const/4 v5, 0x1

    move/from16 v43, v5

    .line 341
    .local v43, resultAbort:Z
    :goto_3a5
    if-eqz v39, :cond_3b2

    move-object/from16 v38, p0

    move/from16 v40, v32

    move-object/from16 v41, v33

    move-object/from16 v42, v34

    .line 342
    invoke-virtual/range {v38 .. v43}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 344
    :cond_3b2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 340
    .end local v43           #resultAbort:Z
    :cond_3b8
    const/4 v5, 0x0

    move/from16 v43, v5

    goto :goto_3a5

    .line 349
    .end local v32           #resultCode:I
    .end local v33           #resultData:Ljava/lang/String;
    .end local v34           #resultExtras:Landroid/os/Bundle;
    .end local v39           #who:Landroid/os/IBinder;
    :pswitch_3bc
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 352
    .restart local v6       #app:Landroid/app/IApplicationThread;
    if-eqz v6, :cond_3d4

    .line 353
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 355
    :cond_3d4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 360
    .end local v6           #app:Landroid/app/IApplicationThread;
    :pswitch_3da
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 362
    .restart local v46       #token:Landroid/os/IBinder;
    const/16 v16, 0x0

    .line 363
    .restart local v16       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f9

    .line 364
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #config:Landroid/content/res/Configuration;
    check-cast v16, Landroid/content/res/Configuration;

    .line 366
    .restart local v16       #config:Landroid/content/res/Configuration;
    :cond_3f9
    if-eqz v46, :cond_404

    .line 367
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 369
    :cond_404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 374
    .end local v16           #config:Landroid/content/res/Configuration;
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_40a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 376
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v111

    .line 377
    .local v111, map:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v111

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 383
    .end local v46           #token:Landroid/os/IBinder;
    .end local v111           #map:Landroid/os/Bundle;
    :pswitch_429
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 385
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_464

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    move-object/from16 v147, p1

    .line 387
    .local v147, thumbnail:Landroid/graphics/Bitmap;
    :goto_448
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Ljava/lang/CharSequence;

    .line 388
    .local v92, description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v147

    move-object/from16 v3, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 385
    .end local v92           #description:Ljava/lang/CharSequence;
    .end local v147           #thumbnail:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_464
    const/4 v5, 0x0

    move-object/from16 v147, v5

    goto :goto_448

    .line 394
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_468
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 396
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 402
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_481
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 404
    .restart local v46       #token:Landroid/os/IBinder;
    if-eqz v46, :cond_4a6

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v138, v5

    .line 405
    .local v138, res:Ljava/lang/String;
    :goto_499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    move-object/from16 v0, p3

    move-object/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 404
    .end local v138           #res:Ljava/lang/String;
    :cond_4a6
    const/4 v5, 0x0

    move-object/from16 v138, v5

    goto :goto_499

    .line 411
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_4aa
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 413
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v89

    .line 414
    .local v89, cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    move-object/from16 v0, v89

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 416
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 420
    .end local v46           #token:Landroid/os/IBinder;
    .end local v89           #cn:Landroid/content/ComponentName;
    :pswitch_4cb
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 422
    .local v113, maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 423
    .local v56, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v135

    .line 424
    .local v135, receiverBinder:Landroid/os/IBinder;
    if-eqz v135, :cond_523

    invoke-static/range {v135 .. v135}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v5

    move-object/from16 v134, v5

    .line 427
    .local v134, receiver:Landroid/app/IThumbnailReceiver;
    :goto_4e7
    move-object/from16 v0, p0

    move/from16 v1, v113

    move/from16 v2, v56

    move-object/from16 v3, v134

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v106

    .line 428
    .local v106, list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v106, :cond_527

    invoke-interface/range {v106 .. v106}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v79, v5

    .line 430
    .local v79, N:I
    :goto_4fe
    move-object/from16 v0, p3

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    const/16 v99, 0x0

    .local v99, i:I
    :goto_507
    move/from16 v0, v99

    move/from16 v1, v79

    if-ge v0, v1, :cond_52b

    .line 433
    move-object/from16 v0, v106

    move/from16 v1, v99

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 435
    .local v101, info:Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v101

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 432
    add-int/lit8 v99, v99, 0x1

    goto :goto_507

    .line 424
    .end local v79           #N:I
    .end local v99           #i:I
    .end local v101           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v106           #list:Ljava/util/List;
    .end local v134           #receiver:Landroid/app/IThumbnailReceiver;
    :cond_523
    const/4 v5, 0x0

    move-object/from16 v134, v5

    goto :goto_4e7

    .line 429
    .restart local v106       #list:Ljava/util/List;
    .restart local v134       #receiver:Landroid/app/IThumbnailReceiver;
    :cond_527
    const/4 v5, -0x1

    move/from16 v79, v5

    goto :goto_4fe

    .line 437
    .restart local v79       #N:I
    .restart local v99       #i:I
    :cond_52b
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 441
    .end local v56           #fl:I
    .end local v79           #N:I
    .end local v99           #i:I
    .end local v106           #list:Ljava/util/List;
    .end local v113           #maxNum:I
    .end local v134           #receiver:Landroid/app/IThumbnailReceiver;
    .end local v135           #receiverBinder:Landroid/os/IBinder;
    :pswitch_52e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 443
    .restart local v113       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 444
    .restart local v56       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v113

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getRecentTasks(II)Ljava/util/List;

    move-result-object v108

    .line 446
    .local v108, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    move-object/from16 v0, p3

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 448
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 452
    .end local v56           #fl:I
    .end local v108           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v113           #maxNum:I
    :pswitch_555
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 454
    .restart local v113       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 455
    .restart local v56       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v113

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v106

    .line 456
    .restart local v106       #list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    if-eqz v106, :cond_59f

    invoke-interface/range {v106 .. v106}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v79, v5

    .line 458
    .restart local v79       #N:I
    :goto_57a
    move-object/from16 v0, p3

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    const/16 v99, 0x0

    .restart local v99       #i:I
    :goto_583
    move/from16 v0, v99

    move/from16 v1, v79

    if-ge v0, v1, :cond_5a3

    .line 461
    move-object/from16 v0, v106

    move/from16 v1, v99

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 463
    .local v101, info:Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v101

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 460
    add-int/lit8 v99, v99, 0x1

    goto :goto_583

    .line 457
    .end local v79           #N:I
    .end local v99           #i:I
    .end local v101           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_59f
    const/4 v5, -0x1

    move/from16 v79, v5

    goto :goto_57a

    .line 465
    .restart local v79       #N:I
    .restart local v99       #i:I
    :cond_5a3
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 469
    .end local v56           #fl:I
    .end local v79           #N:I
    .end local v99           #i:I
    .end local v106           #list:Ljava/util/List;
    .end local v113           #maxNum:I
    :pswitch_5a6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v107

    .line 471
    .local v107, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 473
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 477
    .end local v107           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_5bf
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v109

    .line 479
    .local v109, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    move-object/from16 v0, p3

    move-object/from16 v1, v109

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 481
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 485
    .end local v109           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_5d8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v110

    .line 487
    .local v110, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    move-object/from16 v0, p3

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 489
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 493
    .end local v110           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_5f1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v146

    .line 495
    .local v146, task:I
    move-object/from16 v0, p0

    move/from16 v1, v146

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToFront(I)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 501
    .end local v146           #task:I
    :pswitch_60a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v146

    .line 503
    .restart local v146       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v146

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 509
    .end local v146           #task:I
    :pswitch_623
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 511
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_651

    const/4 v5, 0x1

    move/from16 v117, v5

    .line 512
    .local v117, nonRoot:Z
    :goto_638
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v117

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v138

    .line 513
    .local v138, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v138, :cond_655

    const/4 v5, 0x1

    :goto_648
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 511
    .end local v117           #nonRoot:Z
    .end local v138           #res:Z
    :cond_651
    const/4 v5, 0x0

    move/from16 v117, v5

    goto :goto_638

    .line 514
    .restart local v117       #nonRoot:Z
    .restart local v138       #res:Z
    :cond_655
    const/4 v5, 0x0

    goto :goto_648

    .line 519
    .end local v46           #token:Landroid/os/IBinder;
    .end local v117           #nonRoot:Z
    .end local v138           #res:Z
    :pswitch_657
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v146

    .line 521
    .restart local v146       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v146

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 527
    .end local v146           #task:I
    :pswitch_670
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 529
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6a0

    const/4 v5, 0x1

    move/from16 v119, v5

    .line 530
    .local v119, onlyRoot:Z
    :goto_685
    if-eqz v46, :cond_6a4

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v119

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v5

    move/from16 v138, v5

    .line 532
    .local v138, res:I
    :goto_693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    move-object/from16 v0, p3

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 529
    .end local v119           #onlyRoot:Z
    .end local v138           #res:I
    :cond_6a0
    const/4 v5, 0x0

    move/from16 v119, v5

    goto :goto_685

    .line 530
    .restart local v119       #onlyRoot:Z
    :cond_6a4
    const/4 v5, -0x1

    move/from16 v138, v5

    goto :goto_693

    .line 538
    .end local v46           #token:Landroid/os/IBinder;
    .end local v119           #onlyRoot:Z
    :pswitch_6a8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 540
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v45

    .line 541
    .local v45, className:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->finishOtherInstances(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 547
    .end local v45           #className:Landroid/content/ComponentName;
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_6c7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 549
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_702

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    move-object/from16 v147, p1

    .line 551
    .restart local v147       #thumbnail:Landroid/graphics/Bitmap;
    :goto_6e6
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Ljava/lang/CharSequence;

    .line 552
    .restart local v92       #description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v147

    move-object/from16 v3, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 549
    .end local v92           #description:Ljava/lang/CharSequence;
    .end local v147           #thumbnail:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_702
    const/4 v5, 0x0

    move-object/from16 v147, v5

    goto :goto_6e6

    .line 558
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_706
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 560
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 561
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v116

    .line 562
    .local v116, name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v116

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v91

    .line 563
    .local v91, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v91, :cond_73b

    .line 565
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    const/4 v5, 0x0

    move-object/from16 v0, v91

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 570
    :goto_738
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 568
    :cond_73b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_738

    .line 574
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v91           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v116           #name:Ljava/lang/String;
    :pswitch_743
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 576
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 577
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v130

    .line 579
    .local v130, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v130

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 585
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v130           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_76a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 587
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 588
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v116

    .line 589
    .restart local v116       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v116

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 595
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v116           #name:Ljava/lang/String;
    :pswitch_78c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/ComponentName;

    .line 597
    .local v90, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v123

    .line 598
    .local v123, pi:Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    move-object/from16 v0, v123

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 600
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 604
    .end local v90           #comp:Landroid/content/ComponentName;
    .end local v123           #pi:Landroid/app/PendingIntent;
    :pswitch_7b4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 606
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 607
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .line 608
    .local v53, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 609
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v53

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v89

    .line 610
    .restart local v89       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    move-object/from16 v0, v89

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 612
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 616
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v53           #service:Landroid/content/Intent;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v89           #cn:Landroid/content/ComponentName;
    :pswitch_7ea
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 618
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 619
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .line 620
    .restart local v53       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 621
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v53

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v138

    .line 622
    .restart local v138       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    move-object/from16 v0, p3

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 628
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v53           #service:Landroid/content/Intent;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v138           #res:I
    :pswitch_820
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v45

    .line 630
    .restart local v45       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 631
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v143

    .line 632
    .local v143, startId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    move/from16 v3, v143

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v138

    .line 633
    .local v138, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    if-eqz v138, :cond_84f

    const/4 v5, 0x1

    :goto_846
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 634
    :cond_84f
    const/4 v5, 0x0

    goto :goto_846

    .line 639
    .end local v45           #className:Landroid/content/ComponentName;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v138           #res:Z
    .end local v143           #startId:I
    :pswitch_851
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v45

    .line 641
    .restart local v45       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 642
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 643
    .local v47, id:I
    const/16 v48, 0x0

    .line 644
    .local v48, notification:Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_878

    .line 645
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    .end local v48           #notification:Landroid/app/Notification;
    check-cast v48, Landroid/app/Notification;

    .line 647
    .restart local v48       #notification:Landroid/app/Notification;
    :cond_878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_88c

    const/4 v5, 0x1

    move/from16 v49, v5

    .local v49, removeNotification:Z
    :goto_881
    move-object/from16 v44, p0

    .line 648
    invoke-virtual/range {v44 .. v49}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 647
    .end local v49           #removeNotification:Z
    :cond_88c
    const/4 v5, 0x0

    move/from16 v49, v5

    goto :goto_881

    .line 654
    .end local v45           #className:Landroid/content/ComponentName;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v47           #id:I
    .end local v48           #notification:Landroid/app/Notification;
    :pswitch_890
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 656
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 657
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 658
    .restart local v46       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .line 659
    .restart local v53       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 660
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 662
    .restart local v56       #fl:I
    invoke-static/range {v83 .. v83}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v55

    .local v55, conn:Landroid/app/IServiceConnection;
    move-object/from16 v50, p0

    move-object/from16 v51, v6

    move-object/from16 v52, v46

    move-object/from16 v54, v8

    .line 663
    invoke-virtual/range {v50 .. v56}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;I)I

    move-result v138

    .line 664
    .local v138, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    move-object/from16 v0, p3

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 670
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v53           #service:Landroid/content/Intent;
    .end local v55           #conn:Landroid/app/IServiceConnection;
    .end local v56           #fl:I
    .end local v83           #b:Landroid/os/IBinder;
    .end local v138           #res:I
    :pswitch_8d8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 672
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v55

    .line 673
    .restart local v55       #conn:Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v138

    .line 674
    .local v138, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    if-eqz v138, :cond_8ff

    const/4 v5, 0x1

    :goto_8f6
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 675
    :cond_8ff
    const/4 v5, 0x0

    goto :goto_8f6

    .line 680
    .end local v55           #conn:Landroid/app/IServiceConnection;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v138           #res:Z
    :pswitch_901
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 682
    .restart local v46       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 683
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v53

    .line 684
    .local v53, service:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object v2, v7

    move-object/from16 v3, v53

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 685
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 690
    .end local v7           #intent:Landroid/content/Intent;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v53           #service:Landroid/os/IBinder;
    :pswitch_92c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 692
    .restart local v46       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 693
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_95c

    const/4 v5, 0x1

    move/from16 v93, v5

    .line 694
    .local v93, doRebind:Z
    :goto_94c
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object v2, v7

    move/from16 v3, v93

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 693
    .end local v93           #doRebind:Z
    :cond_95c
    const/4 v5, 0x0

    move/from16 v93, v5

    goto :goto_94c

    .line 700
    .end local v7           #intent:Landroid/content/Intent;
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_960
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 702
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v64

    .line 703
    .local v64, type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v143

    .line 704
    .restart local v143       #startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v138

    .line 705
    .local v138, res:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v64

    move/from16 v3, v143

    move/from16 v4, v138

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 711
    .end local v46           #token:Landroid/os/IBinder;
    .end local v64           #type:I
    .end local v138           #res:I
    .end local v143           #startId:I
    :pswitch_98b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v45

    .line 713
    .restart local v45       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v59

    .line 714
    .local v59, profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 715
    .restart local v56       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v61

    .line 716
    .local v61, arguments:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 717
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v62

    .local v62, w:Landroid/app/IInstrumentationWatcher;
    move-object/from16 v57, p0

    move-object/from16 v58, v45

    move/from16 v60, v56

    .line 718
    invoke-virtual/range {v57 .. v62}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v138

    .line 719
    .local v138, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    if-eqz v138, :cond_9c4

    const/4 v5, 0x1

    :goto_9bb
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 720
    :cond_9c4
    const/4 v5, 0x0

    goto :goto_9bb

    .line 726
    .end local v45           #className:Landroid/content/ComponentName;
    .end local v56           #fl:I
    .end local v59           #profileFile:Ljava/lang/String;
    .end local v61           #arguments:Landroid/os/Bundle;
    .end local v62           #w:Landroid/app/IInstrumentationWatcher;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v138           #res:Z
    :pswitch_9c6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 728
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 729
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 730
    .restart local v32       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v140

    .line 731
    .local v140, results:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v32

    move-object/from16 v3, v140

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 737
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v32           #resultCode:I
    .end local v83           #b:Landroid/os/IBinder;
    .end local v140           #results:Landroid/os/Bundle;
    :pswitch_9ee
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    .line 739
    .restart local v16       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 741
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 745
    .end local v16           #config:Landroid/content/res/Configuration;
    :pswitch_a09
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .line 747
    .restart local v16       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 753
    .end local v16           #config:Landroid/content/res/Configuration;
    :pswitch_a29
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 755
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v137

    .line 756
    .local v137, requestedOrientation:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 762
    .end local v46           #token:Landroid/os/IBinder;
    .end local v137           #requestedOrientation:I
    :pswitch_a48
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 764
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v136

    .line 765
    .local v136, req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    move-object/from16 v0, p3

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 771
    .end local v46           #token:Landroid/os/IBinder;
    .end local v136           #req:I
    :pswitch_a69
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 773
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v89

    .line 774
    .restart local v89       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    move-object/from16 v0, v89

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 776
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 780
    .end local v46           #token:Landroid/os/IBinder;
    .end local v89           #cn:Landroid/content/ComponentName;
    :pswitch_a8a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 782
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 784
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 788
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_aaa
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v64

    .line 790
    .restart local v64       #type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 791
    .local v65, packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 792
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 793
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 794
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b01

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/content/Intent;

    move-object/from16 v69, p1

    .line 796
    .local v69, requestIntent:Landroid/content/Intent;
    :goto_ad9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v70

    .line 797
    .local v70, requestResolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .restart local v56       #fl:I
    move-object/from16 v63, p0

    move-object/from16 v66, v46

    move-object/from16 v67, v12

    move/from16 v68, v13

    move/from16 v71, v56

    .line 798
    invoke-virtual/range {v63 .. v71}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v138

    .line 801
    .local v138, res:Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    if-eqz v138, :cond_b05

    invoke-interface/range {v138 .. v138}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_af8
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 803
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 794
    .end local v56           #fl:I
    .end local v69           #requestIntent:Landroid/content/Intent;
    .end local v70           #requestResolvedType:Ljava/lang/String;
    .end local v138           #res:Landroid/content/IIntentSender;
    .restart local p1
    :cond_b01
    const/4 v5, 0x0

    move-object/from16 v69, v5

    goto :goto_ad9

    .line 802
    .end local p1
    .restart local v56       #fl:I
    .restart local v69       #requestIntent:Landroid/content/Intent;
    .restart local v70       #requestResolvedType:Ljava/lang/String;
    .restart local v138       #res:Landroid/content/IIntentSender;
    :cond_b05
    const/4 v5, 0x0

    goto :goto_af8

    .line 807
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v46           #token:Landroid/os/IBinder;
    .end local v56           #fl:I
    .end local v64           #type:I
    .end local v65           #packageName:Ljava/lang/String;
    .end local v69           #requestIntent:Landroid/content/Intent;
    .end local v70           #requestResolvedType:Ljava/lang/String;
    .end local v138           #res:Landroid/content/IIntentSender;
    .restart local p1
    :pswitch_b07
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v131

    .line 810
    .local v131, r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 816
    .end local v131           #r:Landroid/content/IIntentSender;
    :pswitch_b24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v131

    .line 819
    .restart local v131       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v138

    .line 820
    .local v138, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    move-object/from16 v0, p3

    move-object/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 822
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 826
    .end local v131           #r:Landroid/content/IIntentSender;
    .end local v138           #res:Ljava/lang/String;
    :pswitch_b49
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 828
    .local v112, max:I
    move-object/from16 v0, p0

    move/from16 v1, v112

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 834
    .end local v112           #max:I
    :pswitch_b62
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v105

    .line 836
    .local v105, limit:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    move-object/from16 v0, p3

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 842
    .end local v105           #limit:I
    :pswitch_b7b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 844
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v124

    .line 845
    .local v124, pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ba5

    const/4 v5, 0x1

    move/from16 v104, v5

    .line 846
    .local v104, isForeground:Z
    :goto_b94
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v124

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 845
    .end local v104           #isForeground:Z
    :cond_ba5
    const/4 v5, 0x0

    move/from16 v104, v5

    goto :goto_b94

    .line 852
    .end local v46           #token:Landroid/os/IBinder;
    .end local v124           #pid:I
    :pswitch_ba9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 854
    .restart local v35       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v124

    .line 855
    .restart local v124       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 856
    .local v72, uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v124

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v138

    .line 857
    .local v138, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    move-object/from16 v0, p3

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 863
    .end local v35           #perm:Ljava/lang/String;
    .end local v72           #uid:I
    .end local v124           #pid:I
    .end local v138           #res:I
    :pswitch_bd6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 865
    .local v77, uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v124

    .line 866
    .restart local v124       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 867
    .restart local v72       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 868
    .local v78, mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move/from16 v2, v124

    move/from16 v3, v72

    move/from16 v4, v78

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v138

    .line 869
    .restart local v138       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    move-object/from16 v0, p3

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 875
    .end local v72           #uid:I
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    .end local v124           #pid:I
    .end local v138           #res:I
    :pswitch_c10
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 877
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v118

    .line 879
    .local v118, observer:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v118

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v138

    .line 880
    .local v138, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    if-eqz v138, :cond_c3d

    const/4 v5, 0x1

    :goto_c34
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 881
    :cond_c3d
    const/4 v5, 0x0

    goto :goto_c34

    .line 886
    .end local v65           #packageName:Ljava/lang/String;
    .end local v118           #observer:Landroid/content/pm/IPackageDataObserver;
    .end local v138           #res:Z
    :pswitch_c3f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 888
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 889
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 890
    .local v76, targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 891
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 892
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v76

    move-object/from16 v3, v77

    move/from16 v4, v78

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 898
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v76           #targetPkg:Ljava/lang/String;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_c74
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 900
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 901
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 902
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 903
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v77

    move/from16 v3, v78

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 909
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_ca3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 911
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 912
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_cca

    const/4 v5, 0x1

    move/from16 v149, v5

    .line 913
    .local v149, waiting:Z
    :goto_cbc
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v149

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 914
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 912
    .end local v149           #waiting:Z
    :cond_cca
    const/4 v5, 0x0

    move/from16 v149, v5

    goto :goto_cbc

    .line 919
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_cce
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    new-instance v115, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v115 .. v115}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 921
    .local v115, mi:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    const/4 v5, 0x0

    move-object/from16 v0, v115

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 924
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 928
    .end local v115           #mi:Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_cf1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 930
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 935
    :pswitch_d02
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v77

    .line 937
    .restart local v77       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v122

    .line 938
    .local v122, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    if-eqz v122, :cond_d32

    .line 940
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    const/4 v5, 0x1

    move-object/from16 v0, v122

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 945
    :goto_d2f
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 943
    :cond_d32
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d2f

    .line 949
    .end local v77           #uri:Landroid/net/Uri;
    .end local v122           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_d3a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 956
    :pswitch_d4b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 963
    :pswitch_d5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 965
    .local v127, pn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d8b

    const/4 v5, 0x1

    move/from16 v151, v5

    .line 966
    .local v151, wfd:Z
    :goto_d71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d8f

    const/4 v5, 0x1

    move/from16 v121, v5

    .line 967
    .local v121, per:Z
    :goto_d7a
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move/from16 v2, v151

    move/from16 v3, v121

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 968
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 965
    .end local v121           #per:Z
    .end local v151           #wfd:Z
    :cond_d8b
    const/4 v5, 0x0

    move/from16 v151, v5

    goto :goto_d71

    .line 966
    .restart local v151       #wfd:Z
    :cond_d8f
    const/4 v5, 0x0

    move/from16 v121, v5

    goto :goto_d7a

    .line 973
    .end local v127           #pn:Ljava/lang/String;
    .end local v151           #wfd:Z
    :pswitch_d93
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_db1

    const/4 v5, 0x1

    move/from16 v94, v5

    .line 975
    .local v94, enabled:Z
    :goto_da4
    move-object/from16 v0, p0

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 974
    .end local v94           #enabled:Z
    :cond_db1
    const/4 v5, 0x0

    move/from16 v94, v5

    goto :goto_da4

    .line 981
    :pswitch_db5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v150

    .line 984
    .local v150, watcher:Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 985
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 989
    .end local v150           #watcher:Landroid/app/IActivityController;
    :pswitch_dcf
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 996
    :pswitch_de0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v103

    .line 999
    .local v103, is:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1005
    .end local v103           #is:Landroid/content/IIntentSender;
    :pswitch_dfd
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v125

    .line 1007
    .local v125, pids:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v132

    .line 1008
    .local v132, reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v125

    move-object/from16 v2, v132

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;)Z

    move-result v138

    .line 1009
    .restart local v138       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    if-eqz v138, :cond_e26

    const/4 v5, 0x1

    :goto_e1d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1010
    :cond_e26
    const/4 v5, 0x0

    goto :goto_e1d

    .line 1015
    .end local v125           #pids:[I
    .end local v132           #reason:Ljava/lang/String;
    .end local v138           #res:Z
    :pswitch_e28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v126

    .line 1017
    .local v126, pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v88

    .line 1018
    .local v88, cls:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v80

    .line 1019
    .local v80, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v100

    .line 1020
    .local v100, indata:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    move-object/from16 v2, v88

    move-object/from16 v3, v80

    move-object/from16 v4, v100

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1026
    .end local v80           #action:Ljava/lang/String;
    .end local v88           #cls:Ljava/lang/String;
    .end local v100           #indata:Ljava/lang/String;
    .end local v126           #pkg:Ljava/lang/String;
    :pswitch_e53
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1028
    .local v6, app:Landroid/os/IBinder;
    new-instance v87, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v87

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1029
    .local v87, ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1035
    .end local v6           #app:Landroid/os/IBinder;
    .end local v87           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_e76
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1037
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v145

    .line 1038
    .local v145, tag:Ljava/lang/String;
    new-instance v87, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v87

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1039
    .restart local v87       #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v145

    move-object/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v138

    .line 1040
    .restart local v138       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    if-eqz v138, :cond_ea9

    const/4 v5, 0x1

    :goto_ea0
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1041
    :cond_ea9
    const/4 v5, 0x0

    goto :goto_ea0

    .line 1046
    .end local v6           #app:Landroid/os/IBinder;
    .end local v87           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v138           #res:Z
    .end local v145           #tag:Ljava/lang/String;
    :pswitch_eab
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1048
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v148

    .line 1049
    .local v148, violationMask:I
    new-instance v101, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1050
    .local v101, info:Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v148

    move-object/from16 v3, v101

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1056
    .end local v6           #app:Landroid/os/IBinder;
    .end local v101           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v148           #violationMask:I
    :pswitch_ed4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 1058
    .local v141, sig:I
    move-object/from16 v0, p0

    move/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1059
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1064
    .end local v141           #sig:I
    :pswitch_eed
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1066
    .restart local v65       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1072
    .end local v65           #packageName:Ljava/lang/String;
    :pswitch_f06
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1074
    .restart local v65       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1080
    .end local v65           #packageName:Ljava/lang/String;
    :pswitch_f1f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v16

    .line 1082
    .local v16, config:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1084
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1088
    .end local v16           #config:Landroid/content/pm/ConfigurationInfo;
    :pswitch_f3a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v128

    .line 1090
    .local v128, process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f7c

    const/4 v5, 0x1

    move/from16 v142, v5

    .line 1091
    .local v142, start:Z
    :goto_f4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 1092
    .local v120, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object/from16 v97, v5

    .line 1094
    .local v97, fd:Landroid/os/ParcelFileDescriptor;
    :goto_f5f
    move-object/from16 v0, p0

    move-object/from16 v1, v128

    move/from16 v2, v142

    move-object/from16 v3, v120

    move-object/from16 v4, v97

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v138

    .line 1095
    .restart local v138       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    if-eqz v138, :cond_f84

    const/4 v5, 0x1

    :goto_f73
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1090
    .end local v97           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v120           #path:Ljava/lang/String;
    .end local v138           #res:Z
    .end local v142           #start:Z
    :cond_f7c
    const/4 v5, 0x0

    move/from16 v142, v5

    goto :goto_f4f

    .line 1092
    .restart local v120       #path:Ljava/lang/String;
    .restart local v142       #start:Z
    :cond_f80
    const/4 v5, 0x0

    move-object/from16 v97, v5

    goto :goto_f5f

    .line 1096
    .restart local v97       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v138       #res:Z
    :cond_f84
    const/4 v5, 0x0

    goto :goto_f73

    .line 1101
    .end local v97           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v120           #path:Ljava/lang/String;
    .end local v128           #process:Ljava/lang/String;
    .end local v138           #res:Z
    .end local v142           #start:Z
    :pswitch_f86
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v138

    .line 1103
    .restart local v138       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    if-eqz v138, :cond_fa8

    const/4 v5, 0x1

    :goto_f9f
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1104
    :cond_fa8
    const/4 v5, 0x0

    goto :goto_f9f

    .line 1109
    .end local v138           #res:Z
    :pswitch_faa
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1110
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1116
    :pswitch_fbb
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1123
    :pswitch_fcc
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .line 1125
    .local v53, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1126
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v85

    .line 1127
    .local v85, binder:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    move-object/from16 v0, p3

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1129
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1133
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v53           #service:Landroid/content/Intent;
    .end local v85           #binder:Landroid/os/IBinder;
    :pswitch_ff9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/content/pm/ApplicationInfo;

    .line 1135
    .local v101, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v84

    .line 1136
    .local v84, backupRestoreMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v144

    .line 1137
    .local v144, success:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    if-eqz v144, :cond_1029

    const/4 v5, 0x1

    :goto_1020
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1138
    :cond_1029
    const/4 v5, 0x0

    goto :goto_1020

    .line 1143
    .end local v84           #backupRestoreMode:I
    .end local v101           #info:Landroid/content/pm/ApplicationInfo;
    .end local v144           #success:Z
    :pswitch_102b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1145
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v81

    .line 1146
    .local v81, agent:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1152
    .end local v65           #packageName:Ljava/lang/String;
    .end local v81           #agent:Landroid/os/IBinder;
    :pswitch_104a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/content/pm/ApplicationInfo;

    .line 1154
    .restart local v101       #info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1160
    .end local v101           #info:Landroid/content/pm/ApplicationInfo;
    :pswitch_106a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v150

    .line 1163
    .local v150, watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1164
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1168
    .end local v150           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_1084
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v150

    .line 1171
    .restart local v150       #watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1172
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1177
    .end local v150           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_109e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1179
    .restart local v72       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1180
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1181
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1182
    .local v11, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1183
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1184
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10ec

    const/4 v5, 0x1

    move v14, v5

    .restart local v14       #onlyIfNeeded:Z
    :goto_10cd
    move-object/from16 v71, p0

    move-object/from16 v73, v7

    move-object/from16 v74, v8

    move-object/from16 v75, v11

    move-object/from16 v76, v12

    move/from16 v77, v13

    move/from16 v78, v14

    .line 1185
    invoke-virtual/range {v71 .. v78}, Landroid/app/ActivityManagerNative;->startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IZ)I

    move-result v139

    .line 1187
    .local v139, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1184
    .end local v14           #onlyIfNeeded:Z
    .end local v139           #result:I
    :cond_10ec
    const/4 v5, 0x0

    move v14, v5

    goto :goto_10cd

    .line 1193
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v72           #uid:I
    :pswitch_10ef
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v126

    .line 1195
    .restart local v126       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1196
    .restart local v72       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationWithUid(Ljava/lang/String;I)V

    .line 1197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1202
    .end local v72           #uid:I
    .end local v126           #pkg:Ljava/lang/String;
    :pswitch_110e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v132

    .line 1204
    .restart local v132       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v132

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1210
    .end local v132           #reason:Ljava/lang/String;
    :pswitch_1127
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v125

    .line 1212
    .restart local v125       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v125

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v138

    .line 1213
    .local v138, res:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v138

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1215
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1219
    .end local v125           #pids:[I
    .end local v138           #res:[Landroid/os/Debug$MemoryInfo;
    :pswitch_114a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v129

    .line 1221
    .local v129, processName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1222
    .restart local v72       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1228
    .end local v72           #uid:I
    .end local v129           #processName:Ljava/lang/String;
    :pswitch_1169
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 1230
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1231
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v95

    .line 1232
    .local v95, enterAnim:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .line 1233
    .local v96, exitAnim:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v65

    move/from16 v3, v95

    move/from16 v4, v96

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1239
    .end local v46           #token:Landroid/os/IBinder;
    .end local v65           #packageName:Ljava/lang/String;
    .end local v95           #enterAnim:I
    .end local v96           #exitAnim:I
    :pswitch_1194
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v82

    .line 1241
    .local v82, areThey:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    if-eqz v82, :cond_11af

    const/4 v5, 0x1

    :goto_11a6
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1242
    :cond_11af
    const/4 v5, 0x0

    goto :goto_11a6

    .line 1247
    .end local v82           #areThey:Z
    :pswitch_11b1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1254
    :pswitch_11c2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1256
    .restart local v72       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v102

    .line 1257
    .local v102, initialPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1258
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v114

    .line 1259
    .local v114, message:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v72

    move/from16 v2, v102

    move-object/from16 v3, v65

    move-object/from16 v4, v114

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1265
    .end local v65           #packageName:Ljava/lang/String;
    .end local v72           #uid:I
    .end local v102           #initialPid:I
    .end local v114           #message:Ljava/lang/String;
    :pswitch_11ed
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 1267
    .restart local v77       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v64

    .line 1268
    .local v64, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    move-object/from16 v0, p3

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1270
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1274
    .end local v64           #type:Ljava/lang/String;
    .end local v77           #uri:Landroid/net/Uri;
    :pswitch_1215
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v116

    .line 1276
    .restart local v116       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v35

    .line 1277
    .local v35, perm:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1279
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1283
    .end local v35           #perm:Landroid/os/IBinder;
    .end local v116           #name:Ljava/lang/String;
    :pswitch_1236
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v74

    .line 1285
    .local v74, owner:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v75

    .line 1286
    .local v75, fromUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 1287
    .restart local v76       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 1288
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .restart local v78       #mode:I
    move-object/from16 v73, p0

    .line 1289
    invoke-virtual/range {v73 .. v78}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1295
    .end local v74           #owner:Landroid/os/IBinder;
    .end local v75           #fromUid:I
    .end local v76           #targetPkg:Ljava/lang/String;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    :pswitch_1264
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v74

    .line 1297
    .restart local v74       #owner:Landroid/os/IBinder;
    const/16 v77, 0x0

    .line 1298
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1280

    .line 1299
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1301
    :cond_1280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1302
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move-object/from16 v2, v77

    move/from16 v3, v78

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 127
    nop

    :pswitch_data_1296
    .packed-switch 0x1
        :pswitch_e28
        :pswitch_e53
        :pswitch_8
        :pswitch_cf1
        :pswitch_d02
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1d3
        :pswitch_25b
        :pswitch_2bc
        :pswitch_2de
        :pswitch_356
        :pswitch_384
        :pswitch_3bc
        :pswitch_3da
        :pswitch_40a
        :pswitch_429
        :pswitch_481
        :pswitch_4aa
        :pswitch_4cb
        :pswitch_5f1
        :pswitch_60a
        :pswitch_657
        :pswitch_670
        :pswitch_6c7
        :pswitch_706
        :pswitch_743
        :pswitch_3
        :pswitch_213
        :pswitch_78c
        :pswitch_7b4
        :pswitch_7ea
        :pswitch_890
        :pswitch_8d8
        :pswitch_901
        :pswitch_6a8
        :pswitch_d3a
        :pswitch_d4b
        :pswitch_d5c
        :pswitch_d93
        :pswitch_98b
        :pswitch_9c6
        :pswitch_9ee
        :pswitch_a09
        :pswitch_820
        :pswitch_a69
        :pswitch_a8a
        :pswitch_b49
        :pswitch_b62
        :pswitch_ba9
        :pswitch_bd6
        :pswitch_c3f
        :pswitch_c74
        :pswitch_db5
        :pswitch_ca3
        :pswitch_ed4
        :pswitch_52e
        :pswitch_960
        :pswitch_468
        :pswitch_aaa
        :pswitch_b07
        :pswitch_b24
        :pswitch_dcf
        :pswitch_1a2
        :pswitch_de0
        :pswitch_76a
        :pswitch_a29
        :pswitch_a48
        :pswitch_92c
        :pswitch_b7b
        :pswitch_851
        :pswitch_623
        :pswitch_cce
        :pswitch_5a6
        :pswitch_c10
        :pswitch_f06
        :pswitch_dfd
        :pswitch_555
        :pswitch_3
        :pswitch_5bf
        :pswitch_f1f
        :pswitch_fcc
        :pswitch_f3a
        :pswitch_f86
        :pswitch_faa
        :pswitch_fbb
        :pswitch_ff9
        :pswitch_102b
        :pswitch_104a
        :pswitch_106a
        :pswitch_1084
        :pswitch_109e
        :pswitch_10ef
        :pswitch_110e
        :pswitch_1127
        :pswitch_114a
        :pswitch_13d
        :pswitch_1169
        :pswitch_e76
        :pswitch_eed
        :pswitch_1194
        :pswitch_6a
        :pswitch_236
        :pswitch_cf
        :pswitch_5d8
        :pswitch_11b1
        :pswitch_eab
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_11c2
        :pswitch_11ed
        :pswitch_1215
        :pswitch_1236
        :pswitch_1264
    .end packed-switch
.end method

.class public Lcom/android/internal/telephony/IccCardApplication;
.super Ljava/lang/Object;
.source "IccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardApplication$PinState;,
        Lcom/android/internal/telephony/IccCardApplication$PersoSubState;,
        Lcom/android/internal/telephony/IccCardApplication$AppState;,
        Lcom/android/internal/telephony/IccCardApplication$AppType;
    }
.end annotation


# instance fields
.field public aid:Ljava/lang/String;

.field public app_label:Ljava/lang/String;

.field public app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

.field public app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

.field public perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

.field public pin1:Lcom/android/internal/telephony/IccCardApplication$PinState;

.field public pin1_replaced:I

.field public pin2:Lcom/android/internal/telephony/IccCardApplication$PinState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;
    .registers 6
    .parameter "state"

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_32

    .line 208
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 211
    .local v0, newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :goto_1e
    return-object v0

    .line 201
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_1e

    .line 202
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_22
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_1e

    .line 203
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_25
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_1e

    .line 204
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_28
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_1e

    .line 205
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_2b
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_1e

    .line 206
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_2e
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_ILLEGAL:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_1e

    .line 199
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;
    .registers 6
    .parameter "type"

    .prologue
    .line 183
    packed-switch p1, :pswitch_data_2c

    .line 190
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 193
    .local v0, newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_1e
    return-object v0

    .line 185
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_1e

    .line 186
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_22
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_1e

    .line 187
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_25
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_1e

    .line 188
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_28
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_1e

    .line 183
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    .registers 6
    .parameter "substate"

    .prologue
    .line 217
    packed-switch p1, :pswitch_data_68

    .line 244
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PersoSubstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 247
    .local v0, newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :goto_1e
    return-object v0

    .line 219
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 220
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_22
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 221
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_25
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 222
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_28
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 223
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_2b
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 224
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_2e
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 225
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_31
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 226
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_34
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 227
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_37
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 228
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_3a
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 229
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_3d
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 230
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_40
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 231
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_43
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 232
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_46
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 233
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_49
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 234
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_4c
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 235
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_4f
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 236
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_52
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 237
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_55
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 238
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_58
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 239
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_5b
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 240
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_5e
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 241
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_61
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 242
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_64
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_1e

    .line 217
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
        :pswitch_5e
        :pswitch_61
        :pswitch_64
    .end packed-switch
.end method

.method PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PinState;
    .registers 6
    .parameter "type"

    .prologue
    .line 253
    packed-switch p1, :pswitch_data_2e

    .line 261
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PIN_STATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$PinState;

    .line 264
    .local v0, newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    :goto_1e
    return-object v0

    .line 255
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardApplication$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    goto :goto_1e

    .line 256
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    :pswitch_22
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardApplication$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    goto :goto_1e

    .line 257
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    :pswitch_25
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardApplication$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    goto :goto_1e

    .line 258
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    :pswitch_28
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardApplication$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    goto :goto_1e

    .line 259
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    :pswitch_2b
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardApplication$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$PinState;
    goto :goto_1e

    .line 253
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

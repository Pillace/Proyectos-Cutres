.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0xf

.field static final TRANSACTION_addWindowToken:I = 0xd

.field static final TRANSACTION_closeSystemDialogs:I = 0x27

.field static final TRANSACTION_disableKeyguard:I = 0x23

.field static final TRANSACTION_executeAppTransition:I = 0x17

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x25

.field static final TRANSACTION_getAnimationScale:I = 0x28

.field static final TRANSACTION_getAnimationScales:I = 0x29

.field static final TRANSACTION_getAppOrientation:I = 0x12

.field static final TRANSACTION_getCurrentDockState:I = 0x40

.field static final TRANSACTION_getDPadKeycodeState:I = 0x35

.field static final TRANSACTION_getDPadScancodeState:I = 0x31

.field static final TRANSACTION_getInputDevice:I = 0x38

.field static final TRANSACTION_getInputDeviceIds:I = 0x39

.field static final TRANSACTION_getKeycodeState:I = 0x32

.field static final TRANSACTION_getKeycodeStateForDevice:I = 0x33

.field static final TRANSACTION_getPendingAppTransition:I = 0x15

.field static final TRANSACTION_getRotation:I = 0x3c

.field static final TRANSACTION_getScancodeState:I = 0x2e

.field static final TRANSACTION_getScancodeStateForDevice:I = 0x2f

.field static final TRANSACTION_getSwitchState:I = 0x2c

.field static final TRANSACTION_getSwitchStateForDevice:I = 0x2d

.field static final TRANSACTION_getTrackballKeycodeState:I = 0x34

.field static final TRANSACTION_getTrackballScancodeState:I = 0x30

.field static final TRANSACTION_hasKeys:I = 0x37

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x26

.field static final TRANSACTION_injectInputEventNoWait:I = 0x9

.field static final TRANSACTION_injectKeyEvent:I = 0x6

.field static final TRANSACTION_injectPointerEvent:I = 0x7

.field static final TRANSACTION_injectTrackballEvent:I = 0x8

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isSystemKeyEventRequested:I = 0x3f

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_monitorInput:I = 0x36

.field static final TRANSACTION_moveAppToken:I = 0x1e

.field static final TRANSACTION_moveAppTokensToBottom:I = 0x20

.field static final TRANSACTION_moveAppTokensToTop:I = 0x1f

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x16

.field static final TRANSACTION_pauseKeyDispatching:I = 0xa

.field static final TRANSACTION_prepareAppTransition:I = 0x14

.field static final TRANSACTION_reenableKeyguard:I = 0x24

.field static final TRANSACTION_removeAppToken:I = 0x1d

.field static final TRANSACTION_removeWindowToken:I = 0xe

.field static final TRANSACTION_requestSystemKeyEvent:I = 0x3e

.field static final TRANSACTION_resumeKeyDispatching:I = 0xb

.field static final TRANSACTION_setAnimationScale:I = 0x2a

.field static final TRANSACTION_setAnimationScales:I = 0x2b

.field static final TRANSACTION_setAppGroupId:I = 0x10

.field static final TRANSACTION_setAppOrientation:I = 0x11

.field static final TRANSACTION_setAppStartingWindow:I = 0x18

.field static final TRANSACTION_setAppVisibility:I = 0x1a

.field static final TRANSACTION_setAppWillBeHidden:I = 0x19

.field static final TRANSACTION_setCurrentDockState:I = 0x41

.field static final TRANSACTION_setEventDispatching:I = 0xc

.field static final TRANSACTION_setFocusedApp:I = 0x13

.field static final TRANSACTION_setInTouchMode:I = 0x3a

.field static final TRANSACTION_setMouseCursor:I = 0x42

.field static final TRANSACTION_setNewConfiguration:I = 0x22

.field static final TRANSACTION_setRotation:I = 0x3b

.field static final TRANSACTION_startAppFreezingScreen:I = 0x1b

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x1c

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x21

.field static final TRANSACTION_watchRotation:I = 0x3d


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
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
    const-string v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_14

    .line 34
    check-cast v0, Landroid/view/IWindowManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 16
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
    sparse-switch p1, :sswitch_data_6f8

    .line 802
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 48
    :sswitch_8
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    goto :goto_7

    .line 53
    :sswitch_f
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v10

    .line 57
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v10, :cond_27

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v0, 0x1

    goto :goto_7

    .line 58
    :cond_27
    const/4 v0, 0x0

    goto :goto_22

    .line 63
    .end local v1           #_arg0:I
    .end local v10           #_result:Z
    :sswitch_29
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v10

    .line 65
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v10, :cond_3d

    const/4 v0, 0x1

    :goto_38
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v0, 0x1

    goto :goto_7

    .line 66
    :cond_3d
    const/4 v0, 0x0

    goto :goto_38

    .line 71
    .end local v10           #_result:Z
    :sswitch_3f
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v10

    .line 73
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v10, :cond_53

    const/4 v0, 0x1

    :goto_4e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v0, 0x1

    goto :goto_7

    .line 74
    :cond_53
    const/4 v0, 0x0

    goto :goto_4e

    .line 79
    .end local v10           #_result:Z
    :sswitch_55
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 83
    .local v1, _arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v2

    .line 84
    .local v2, _arg1:Lcom/android/internal/view/IInputContext;
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v10

    .line 85
    .local v10, _result:Landroid/view/IWindowSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v10, :cond_7c

    invoke-interface {v10}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_77
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 87
    const/4 v0, 0x1

    goto :goto_7

    .line 86
    :cond_7c
    const/4 v0, 0x0

    goto :goto_77

    .line 91
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v2           #_arg1:Lcom/android/internal/view/IInputContext;
    .end local v10           #_result:Landroid/view/IWindowSession;
    :sswitch_7e
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 94
    .restart local v1       #_arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v10

    .line 95
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v10, :cond_9b

    const/4 v0, 0x1

    :goto_95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 96
    :cond_9b
    const/4 v0, 0x0

    goto :goto_95

    .line 101
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v10           #_result:Z
    :sswitch_9d
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c8

    .line 104
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 110
    .local v1, _arg0:Landroid/view/KeyEvent;
    :goto_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ca

    const/4 v0, 0x1

    move v2, v0

    .line 111
    .local v2, _arg1:Z
    :goto_b8
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v10

    .line 112
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v10, :cond_cd

    const/4 v0, 0x1

    :goto_c2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 107
    .end local v1           #_arg0:Landroid/view/KeyEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :cond_c8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/KeyEvent;
    goto :goto_b0

    .line 110
    :cond_ca
    const/4 v0, 0x0

    move v2, v0

    goto :goto_b8

    .line 113
    .restart local v2       #_arg1:Z
    .restart local v10       #_result:Z
    :cond_cd
    const/4 v0, 0x0

    goto :goto_c2

    .line 118
    .end local v1           #_arg0:Landroid/view/KeyEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :sswitch_cf
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_fa

    .line 121
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 127
    .local v1, _arg0:Landroid/view/MotionEvent;
    :goto_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_fc

    const/4 v0, 0x1

    move v2, v0

    .line 128
    .restart local v2       #_arg1:Z
    :goto_ea
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    move-result v10

    .line 129
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v10, :cond_ff

    const/4 v0, 0x1

    :goto_f4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 124
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :cond_fa
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/MotionEvent;
    goto :goto_e2

    .line 127
    :cond_fc
    const/4 v0, 0x0

    move v2, v0

    goto :goto_ea

    .line 130
    .restart local v2       #_arg1:Z
    .restart local v10       #_result:Z
    :cond_ff
    const/4 v0, 0x0

    goto :goto_f4

    .line 135
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :sswitch_101
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12c

    .line 138
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 144
    .restart local v1       #_arg0:Landroid/view/MotionEvent;
    :goto_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12e

    const/4 v0, 0x1

    move v2, v0

    .line 145
    .restart local v2       #_arg1:Z
    :goto_11c
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z

    move-result v10

    .line 146
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v10, :cond_131

    const/4 v0, 0x1

    :goto_126
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 141
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :cond_12c
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/MotionEvent;
    goto :goto_114

    .line 144
    :cond_12e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_11c

    .line 147
    .restart local v2       #_arg1:Z
    .restart local v10       #_result:Z
    :cond_131
    const/4 v0, 0x0

    goto :goto_126

    .line 152
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :sswitch_133
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_156

    .line 155
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 160
    .local v1, _arg0:Landroid/view/InputEvent;
    :goto_146
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->injectInputEventNoWait(Landroid/view/InputEvent;)Z

    move-result v10

    .line 161
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v10, :cond_158

    const/4 v0, 0x1

    :goto_150
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 158
    .end local v1           #_arg0:Landroid/view/InputEvent;
    .end local v10           #_result:Z
    :cond_156
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/InputEvent;
    goto :goto_146

    .line 162
    .restart local v10       #_result:Z
    :cond_158
    const/4 v0, 0x0

    goto :goto_150

    .line 167
    .end local v1           #_arg0:Landroid/view/InputEvent;
    .end local v10           #_result:Z
    :sswitch_15a
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 170
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 176
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_16c
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 179
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 185
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_17e
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_194

    const/4 v0, 0x1

    move v1, v0

    .line 188
    .local v1, _arg0:Z
    :goto_18b
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 187
    .end local v1           #_arg0:Z
    :cond_194
    const/4 v0, 0x0

    move v1, v0

    goto :goto_18b

    .line 194
    :sswitch_197
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 198
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 205
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_1ad
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 208
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 214
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_1bf
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 220
    .local v2, _arg1:Landroid/view/IApplicationToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 224
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ea

    const/4 v0, 0x1

    move v5, v0

    .local v5, _arg4:Z
    :goto_1e0
    move-object v0, p0

    .line 225
    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 224
    .end local v5           #_arg4:Z
    :cond_1ea
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1e0

    .line 231
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/view/IApplicationToken;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_1ed
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 235
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 242
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_203
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v1

    .line 246
    .local v1, _arg0:Landroid/view/IApplicationToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 247
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 253
    .end local v1           #_arg0:Landroid/view/IApplicationToken;
    .end local v2           #_arg1:I
    :sswitch_21d
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v1

    .line 256
    .restart local v1       #_arg0:Landroid/view/IApplicationToken;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v10

    .line 257
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 263
    .end local v1           #_arg0:Landroid/view/IApplicationToken;
    .end local v10           #_result:I
    :sswitch_237
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 267
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_251

    const/4 v0, 0x1

    move v2, v0

    .line 268
    .local v2, _arg1:Z
    :goto_248
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 267
    .end local v2           #_arg1:Z
    :cond_251
    const/4 v0, 0x0

    move v2, v0

    goto :goto_248

    .line 274
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_254
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(I)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 283
    .end local v1           #_arg0:I
    :sswitch_266
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v10

    .line 285
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 291
    .end local v10           #_result:I
    :sswitch_278
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 297
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 298
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;II)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 304
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_292
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 311
    :sswitch_2a0
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 315
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 319
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2dd

    .line 320
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 326
    .local v4, _arg3:Ljava/lang/CharSequence;
    :goto_2bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 328
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 330
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 332
    .local v7, _arg6:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2df

    const/4 v0, 0x1

    move v8, v0

    .local v8, _arg7:Z
    :goto_2d3
    move-object v0, p0

    .line 333
    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 323
    .end local v4           #_arg3:Ljava/lang/CharSequence;
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Landroid/os/IBinder;
    .end local v8           #_arg7:Z
    :cond_2dd
    const/4 v4, 0x0

    .restart local v4       #_arg3:Ljava/lang/CharSequence;
    goto :goto_2bf

    .line 332
    .restart local v5       #_arg4:I
    .restart local v6       #_arg5:I
    .restart local v7       #_arg6:Landroid/os/IBinder;
    :cond_2df
    const/4 v0, 0x0

    move v8, v0

    goto :goto_2d3

    .line 339
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/CharSequence;
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Landroid/os/IBinder;
    :sswitch_2e2
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 342
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 348
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_2f4
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 352
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30e

    const/4 v0, 0x1

    move v2, v0

    .line 353
    .local v2, _arg1:Z
    :goto_305
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 352
    .end local v2           #_arg1:Z
    :cond_30e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_305

    .line 359
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_311
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 363
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 370
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_327
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 374
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_341

    const/4 v0, 0x1

    move v2, v0

    .line 375
    .local v2, _arg1:Z
    :goto_338
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 374
    .end local v2           #_arg1:Z
    :cond_341
    const/4 v0, 0x0

    move v2, v0

    goto :goto_338

    .line 381
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_344
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 384
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 390
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_356
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 394
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 395
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->moveAppToken(ILandroid/os/IBinder;)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 401
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_36c
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 404
    .local v9, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v9}, Landroid/view/IWindowManager$Stub;->moveAppTokensToTop(Ljava/util/List;)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 410
    .end local v9           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_37e
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 413
    .restart local v9       #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v9}, Landroid/view/IWindowManager$Stub;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 419
    .end local v9           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_390
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3bb

    .line 422
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 428
    .local v1, _arg0:Landroid/content/res/Configuration;
    :goto_3a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 429
    .restart local v2       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v10

    .line 430
    .local v10, _result:Landroid/content/res/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v10, :cond_3bd

    .line 432
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 438
    :goto_3b8
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 425
    .end local v1           #_arg0:Landroid/content/res/Configuration;
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v10           #_result:Landroid/content/res/Configuration;
    :cond_3bb
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/res/Configuration;
    goto :goto_3a3

    .line 436
    .restart local v2       #_arg1:Landroid/os/IBinder;
    .restart local v10       #_result:Landroid/content/res/Configuration;
    :cond_3bd
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b8

    .line 442
    .end local v1           #_arg0:Landroid/content/res/Configuration;
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v10           #_result:Landroid/content/res/Configuration;
    :sswitch_3c2
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3de

    .line 445
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 450
    .restart local v1       #_arg0:Landroid/content/res/Configuration;
    :goto_3d5
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 448
    .end local v1           #_arg0:Landroid/content/res/Configuration;
    :cond_3de
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/res/Configuration;
    goto :goto_3d5

    .line 456
    .end local v1           #_arg0:Landroid/content/res/Configuration;
    :sswitch_3e0
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 460
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 467
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_3f6
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 470
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 476
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_408
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v1

    .line 479
    .local v1, _arg0:Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 485
    .end local v1           #_arg0:Landroid/view/IOnKeyguardExitResult;
    :sswitch_41e
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v10

    .line 487
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    if-eqz v10, :cond_433

    const/4 v0, 0x1

    :goto_42d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 488
    :cond_433
    const/4 v0, 0x0

    goto :goto_42d

    .line 493
    .end local v10           #_result:Z
    :sswitch_435
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 502
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_447
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 505
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v10

    .line 506
    .local v10, _result:F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeFloat(F)V

    .line 508
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 512
    .end local v1           #_arg0:I
    .end local v10           #_result:F
    :sswitch_45d
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v10

    .line 514
    .local v10, _result:[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 516
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 520
    .end local v10           #_result:[F
    :sswitch_46f
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 524
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 525
    .local v2, _arg1:F
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 531
    .end local v1           #_arg0:I
    .end local v2           #_arg1:F
    :sswitch_485
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    .line 534
    .local v1, _arg0:[F
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 540
    .end local v1           #_arg0:[F
    :sswitch_497
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 543
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getSwitchState(I)I

    move-result v10

    .line 544
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 550
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_4ad
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 554
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 555
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->getSwitchStateForDevice(II)I

    move-result v10

    .line 556
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 562
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:I
    :sswitch_4c7
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 565
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getScancodeState(I)I

    move-result v10

    .line 566
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 572
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_4dd
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 576
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 577
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->getScancodeStateForDevice(II)I

    move-result v10

    .line 578
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 584
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:I
    :sswitch_4f7
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 587
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getTrackballScancodeState(I)I

    move-result v10

    .line 588
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 594
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_50d
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 597
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getDPadScancodeState(I)I

    move-result v10

    .line 598
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 604
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_523
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 607
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getKeycodeState(I)I

    move-result v10

    .line 608
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 614
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_539
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 618
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 619
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->getKeycodeStateForDevice(II)I

    move-result v10

    .line 620
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 626
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:I
    :sswitch_553
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 629
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getTrackballKeycodeState(I)I

    move-result v10

    .line 630
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 636
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_569
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 639
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getDPadKeycodeState(I)I

    move-result v10

    .line 640
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 646
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_57f
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v10

    .line 650
    .local v10, _result:Landroid/view/InputChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v10, :cond_59c

    .line 652
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 658
    :goto_599
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 656
    :cond_59c
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_599

    .line 662
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:Landroid/view/InputChannel;
    :sswitch_5a1
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 666
    .local v1, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    .line 667
    .local v2, _arg1:[Z
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->hasKeys([I[Z)Z

    move-result v10

    .line 668
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    if-eqz v10, :cond_5c1

    const/4 v0, 0x1

    :goto_5b8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 671
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 669
    :cond_5c1
    const/4 v0, 0x0

    goto :goto_5b8

    .line 675
    .end local v1           #_arg0:[I
    .end local v2           #_arg1:[Z
    .end local v10           #_result:Z
    :sswitch_5c3
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 678
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v10

    .line 679
    .local v10, _result:Landroid/view/InputDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    if-eqz v10, :cond_5e0

    .line 681
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 687
    :goto_5dd
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 685
    :cond_5e0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5dd

    .line 691
    .end local v1           #_arg0:I
    .end local v10           #_result:Landroid/view/InputDevice;
    :sswitch_5e5
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getInputDeviceIds()[I

    move-result-object v10

    .line 693
    .local v10, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 695
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 699
    .end local v10           #_result:[I
    :sswitch_5f7
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_60d

    const/4 v0, 0x1

    move v1, v0

    .line 702
    .local v1, _arg0:Z
    :goto_604
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 701
    .end local v1           #_arg0:Z
    :cond_60d
    const/4 v0, 0x0

    move v1, v0

    goto :goto_604

    .line 708
    :sswitch_610
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 712
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_62e

    const/4 v0, 0x1

    move v2, v0

    .line 714
    .local v2, _arg1:Z
    :goto_621
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 715
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->setRotation(IZI)V

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 712
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:I
    :cond_62e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_621

    .line 721
    .end local v1           #_arg0:I
    :sswitch_631
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v10

    .line 723
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 729
    .end local v10           #_result:I
    :sswitch_643
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v1

    .line 732
    .local v1, _arg0:Landroid/view/IRotationWatcher;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v10

    .line 733
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 739
    .end local v1           #_arg0:Landroid/view/IRotationWatcher;
    .end local v10           #_result:I
    :sswitch_65d
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 743
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_68c

    .line 744
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 750
    .local v2, _arg1:Landroid/content/ComponentName;
    :goto_674
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_68e

    const/4 v0, 0x1

    move v3, v0

    .line 751
    .local v3, _arg2:Z
    :goto_67c
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v10

    .line 752
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    if-eqz v10, :cond_691

    const/4 v0, 0x1

    :goto_686
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 747
    .end local v2           #_arg1:Landroid/content/ComponentName;
    .end local v3           #_arg2:Z
    .end local v10           #_result:Z
    :cond_68c
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_674

    .line 750
    :cond_68e
    const/4 v0, 0x0

    move v3, v0

    goto :goto_67c

    .line 753
    .restart local v3       #_arg2:Z
    .restart local v10       #_result:Z
    :cond_691
    const/4 v0, 0x0

    goto :goto_686

    .line 758
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/content/ComponentName;
    .end local v3           #_arg2:Z
    .end local v10           #_result:Z
    :sswitch_693
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 762
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6ba

    .line 763
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 768
    .restart local v2       #_arg1:Landroid/content/ComponentName;
    :goto_6aa
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v10

    .line 769
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    if-eqz v10, :cond_6bc

    const/4 v0, 0x1

    :goto_6b4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 766
    .end local v2           #_arg1:Landroid/content/ComponentName;
    .end local v10           #_result:Z
    :cond_6ba
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_6aa

    .line 770
    .restart local v10       #_result:Z
    :cond_6bc
    const/4 v0, 0x0

    goto :goto_6b4

    .line 775
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/content/ComponentName;
    .end local v10           #_result:Z
    :sswitch_6be
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentDockState()I

    move-result v10

    .line 777
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 783
    .end local v10           #_result:I
    :sswitch_6d0
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 786
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setCurrentDockState(I)V

    .line 787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 792
    .end local v1           #_arg0:I
    :sswitch_6e2
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 796
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 797
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setMouseCursor(II)V

    .line 798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 44
    :sswitch_data_6f8
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_29
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_55
        0x5 -> :sswitch_7e
        0x6 -> :sswitch_9d
        0x7 -> :sswitch_cf
        0x8 -> :sswitch_101
        0x9 -> :sswitch_133
        0xa -> :sswitch_15a
        0xb -> :sswitch_16c
        0xc -> :sswitch_17e
        0xd -> :sswitch_197
        0xe -> :sswitch_1ad
        0xf -> :sswitch_1bf
        0x10 -> :sswitch_1ed
        0x11 -> :sswitch_203
        0x12 -> :sswitch_21d
        0x13 -> :sswitch_237
        0x14 -> :sswitch_254
        0x15 -> :sswitch_266
        0x16 -> :sswitch_278
        0x17 -> :sswitch_292
        0x18 -> :sswitch_2a0
        0x19 -> :sswitch_2e2
        0x1a -> :sswitch_2f4
        0x1b -> :sswitch_311
        0x1c -> :sswitch_327
        0x1d -> :sswitch_344
        0x1e -> :sswitch_356
        0x1f -> :sswitch_36c
        0x20 -> :sswitch_37e
        0x21 -> :sswitch_390
        0x22 -> :sswitch_3c2
        0x23 -> :sswitch_3e0
        0x24 -> :sswitch_3f6
        0x25 -> :sswitch_408
        0x26 -> :sswitch_41e
        0x27 -> :sswitch_435
        0x28 -> :sswitch_447
        0x29 -> :sswitch_45d
        0x2a -> :sswitch_46f
        0x2b -> :sswitch_485
        0x2c -> :sswitch_497
        0x2d -> :sswitch_4ad
        0x2e -> :sswitch_4c7
        0x2f -> :sswitch_4dd
        0x30 -> :sswitch_4f7
        0x31 -> :sswitch_50d
        0x32 -> :sswitch_523
        0x33 -> :sswitch_539
        0x34 -> :sswitch_553
        0x35 -> :sswitch_569
        0x36 -> :sswitch_57f
        0x37 -> :sswitch_5a1
        0x38 -> :sswitch_5c3
        0x39 -> :sswitch_5e5
        0x3a -> :sswitch_5f7
        0x3b -> :sswitch_610
        0x3c -> :sswitch_631
        0x3d -> :sswitch_643
        0x3e -> :sswitch_65d
        0x3f -> :sswitch_693
        0x40 -> :sswitch_6be
        0x41 -> :sswitch_6d0
        0x42 -> :sswitch_6e2
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

.class public Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
.super Ljava/lang/Object;
.source "PasswordEntryKeyboardHelper.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# static fields
.field public static final KEYBOARD_MODE_ALPHA:I = 0x0

.field public static final KEYBOARD_MODE_NUMERIC:I = 0x1

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field private static PasswordEntryKeyboard:Z = false

.field private static final TAG:Ljava/lang/String; = "PasswordEntryKeyboardHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyboardMode:I

.field private mKeyboardState:I

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mTargetView:Landroid/view/View;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->PasswordEntryKeyboard:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V
    .registers 5
    .parameter "context"
    .parameter "keyboardView"
    .parameter "targetView"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 44
    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 59
    iput-object p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    .line 61
    iput-object p2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 62
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->createKeyboards()V

    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 64
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibrator:Landroid/os/Vibrator;

    .line 65
    return-void
.end method

.method private createKeyboards()V
    .registers 6

    .prologue
    const v4, 0x1020297

    const/4 v3, 0x1

    .line 75
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0004

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 76
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0006

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 78
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 80
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0007

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 84
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    .line 86
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0008

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 87
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 89
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0009

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    .line 94
    sput-boolean v3, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->PasswordEntryKeyboard:Z

    .line 95
    return-void
.end method

.method private handleBackspace()V
    .registers 2

    .prologue
    .line 201
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->sendDownUpKeyEvents(I)V

    .line 202
    return-void
.end method

.method private handleCharacter(I[I)V
    .registers 4
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x20

    if-eq p1, v0, :cond_14

    const/16 v0, 0xa

    if-eq p1, v0, :cond_14

    .line 234
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 236
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->sendKeyEventsToTarget(I)V

    .line 237
    return-void
.end method

.method private handleClose()V
    .registers 1

    .prologue
    .line 241
    return-void
.end method

.method private handleModeChange()V
    .registers 4

    .prologue
    .line 187
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 188
    .local v0, current:Landroid/inputmethodservice/Keyboard;
    const/4 v1, 0x0

    .line 189
    .local v1, next:Landroid/inputmethodservice/Keyboard;
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v2, :cond_f

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v2, :cond_1c

    .line 190
    :cond_f
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 194
    :cond_11
    :goto_11
    if-eqz v1, :cond_1b

    .line 195
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 196
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 198
    :cond_1b
    return-void

    .line 191
    :cond_1c
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v2, :cond_24

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v2, :cond_11

    .line 192
    :cond_24
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    goto :goto_11
.end method

.method private handleShift()V
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 205
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-nez v3, :cond_8

    .line 229
    :cond_7
    :goto_7
    return-void

    .line 208
    :cond_8
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 209
    .local v0, current:Landroid/inputmethodservice/Keyboard;
    const/4 v2, 0x0

    .line 210
    .local v2, next:Lcom/android/internal/widget/PasswordEntryKeyboard;
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v3, :cond_17

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v3, :cond_42

    :cond_17
    move v1, v5

    .line 212
    .local v1, isAlphaMode:Z
    :goto_18
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-nez v3, :cond_4a

    .line 213
    if-eqz v1, :cond_44

    move v3, v5

    :goto_1f
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 214
    if-eqz v1, :cond_46

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    .line 222
    :cond_26
    :goto_26
    if-eqz v2, :cond_7

    .line 223
    if-eq v2, v0, :cond_2f

    .line 224
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 226
    :cond_2f
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v3, v4, :cond_6a

    move v3, v5

    :goto_34
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShiftLocked(Z)V

    .line 227
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-eqz v4, :cond_6c

    move v4, v5

    :goto_3e
    invoke-virtual {v3, v4}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    goto :goto_7

    .end local v1           #isAlphaMode:Z
    :cond_42
    move v1, v6

    .line 210
    goto :goto_18

    .restart local v1       #isAlphaMode:Z
    :cond_44
    move v3, v4

    .line 213
    goto :goto_1f

    .line 214
    :cond_46
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    goto :goto_26

    .line 215
    :cond_4a
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v3, v5, :cond_5a

    .line 216
    iput v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 217
    if-eqz v1, :cond_56

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    :goto_55
    goto :goto_26

    :cond_56
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    goto :goto_55

    .line 218
    :cond_5a
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v3, v4, :cond_26

    .line 219
    iput v6, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 220
    if-eqz v1, :cond_66

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    :goto_65
    goto :goto_26

    :cond_66
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    goto :goto_65

    :cond_6a
    move v3, v6

    .line 226
    goto :goto_34

    :cond_6c
    move v4, v6

    .line 227
    goto :goto_3e
.end method

.method public static isPasswordEntryKeyboard()Z
    .registers 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->PasswordEntryKeyboard:Z

    return v0
.end method

.method private sendKeyEventsToTarget(I)V
    .registers 11
    .parameter "character"

    .prologue
    .line 117
    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 118
    .local v3, handler:Landroid/os/Handler;
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    int-to-char v8, p1

    aput-char v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 120
    .local v2, events:[Landroid/view/KeyEvent;
    if-eqz v2, :cond_36

    .line 121
    array-length v0, v2

    .line 122
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1a
    if-ge v4, v0, :cond_36

    .line 123
    aget-object v1, v2, v4

    .line 124
    .local v1, event:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x4

    invoke-static {v1, v5}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 126
    const/16 v5, 0x3ed

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 129
    .end local v0           #N:I
    .end local v1           #event:Landroid/view/KeyEvent;
    .end local v4           #i:I
    :cond_36
    return-void
.end method


# virtual methods
.method public isAlpha()Z
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onKey(I[I)V
    .registers 5
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 143
    const/4 v0, -0x5

    if-ne p1, v0, :cond_7

    .line 144
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleBackspace()V

    .line 161
    :cond_6
    :goto_6
    return-void

    .line 145
    :cond_7
    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    .line 146
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_6

    .line 147
    :cond_e
    const/4 v0, -0x3

    if-ne p1, v0, :cond_15

    .line 148
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleClose()V

    goto :goto_6

    .line 150
    :cond_15
    const/4 v0, -0x2

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v0, :cond_20

    .line 151
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleModeChange()V

    goto :goto_6

    .line 153
    :cond_20
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleCharacter(I[I)V

    .line 155
    iget v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 157
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 158
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_6
.end method

.method public onPress(I)V
    .registers 5
    .parameter "primaryCode"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    if-eqz v0, :cond_c

    .line 245
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 247
    :cond_c
    return-void
.end method

.method public onRelease(I)V
    .registers 2
    .parameter "primaryCode"

    .prologue
    .line 251
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 255
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .registers 16
    .parameter "keyEventCode"

    .prologue
    .line 132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 133
    .local v1, eventTime:J
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 134
    .local v12, handler:Landroid/os/Handler;
    const/16 v13, 0x3f3

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    const/16 v13, 0x3f3

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method

.method public setKeyboardMode(I)V
    .registers 7
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    packed-switch p1, :pswitch_data_38

    .line 113
    :goto_5
    iput p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 114
    return-void

    .line 100
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 101
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 102
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_password"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_27

    move v0, v4

    .line 105
    .local v0, visiblePassword:Z
    :goto_21
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_5

    .end local v0           #visiblePassword:Z
    :cond_27
    move v0, v3

    .line 102
    goto :goto_21

    .line 108
    :pswitch_29
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 109
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 110
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_5

    .line 98
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_8
        :pswitch_29
    .end packed-switch
.end method

.method public setVibratePattern(I)V
    .registers 8
    .parameter "id"

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 170
    .local v2, tmpArray:[I
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_a} :catch_11

    move-result-object v2

    .line 176
    :cond_b
    :goto_b
    if-nez v2, :cond_1d

    .line 177
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    .line 184
    :cond_10
    return-void

    .line 171
    :catch_11
    move-exception v3

    move-object v0, v3

    .line 172
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    if-eqz p1, :cond_b

    .line 173
    const-string v3, "PasswordEntryKeyboardHelper"

    const-string v4, "Vibrate pattern missing"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 180
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_1d
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    .line 181
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    array-length v3, v2

    if-ge v1, v3, :cond_10

    .line 182
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    aget v4, v2, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_23
.end method

.method public swipeDown()V
    .registers 1

    .prologue
    .line 259
    return-void
.end method

.method public swipeLeft()V
    .registers 1

    .prologue
    .line 263
    return-void
.end method

.method public swipeRight()V
    .registers 1

    .prologue
    .line 267
    return-void
.end method

.method public swipeUp()V
    .registers 1

    .prologue
    .line 271
    return-void
.end method

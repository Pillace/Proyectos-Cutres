.class public Landroid/view/SoundEffectConstants;
.super Ljava/lang/Object;
.source "SoundEffectConstants.java"


# static fields
.field public static final CLICK:I = 0x0

.field public static final NAVIGATION_DOWN:I = 0x4

.field public static final NAVIGATION_LEFT:I = 0x1

.field public static final NAVIGATION_RIGHT:I = 0x3

.field public static final NAVIGATION_UP:I = 0x2

.field public static final SOUND_GLASS_UNLOCK:I = 0xb

.field public static final SOUND_MAX_INDEX:I = 0xc

.field public static final SOUND_MIN_INDEX:I = 0x9

.field public static final SOUND_NONE:I = -0x1

.field public static final SOUND_PUZZLE_UNLOCK:I = 0xc

.field public static final SOUND_TOUCH:I = 0x9

.field public static final SOUND_WATER_DROP:I = 0xa


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContantForFocusDirection(I)I
    .registers 3
    .parameter "direction"

    .prologue
    .line 55
    sparse-switch p0, :sswitch_data_14

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :sswitch_b
    const/4 v0, 0x3

    .line 65
    :goto_c
    return v0

    .line 60
    :sswitch_d
    const/4 v0, 0x4

    goto :goto_c

    .line 62
    :sswitch_f
    const/4 v0, 0x1

    goto :goto_c

    .line 65
    :sswitch_11
    const/4 v0, 0x2

    goto :goto_c

    .line 55
    nop

    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_d
        0x11 -> :sswitch_f
        0x21 -> :sswitch_11
        0x42 -> :sswitch_b
        0x82 -> :sswitch_d
    .end sparse-switch
.end method

.class public abstract Landroid/view/OrientationEventListener;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OrientationEventListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final ORIENTATION_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OrientationEventListener"

.field private static final localLOGV:Z


# instance fields
.field private mEnabled:Z

.field private mOldListener:Landroid/view/OrientationListener;

.field private mOrientation:I

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "rate"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 70
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 71
    iput p2, p0, Landroid/view/OrientationEventListener;->mRate:I

    .line 72
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    .line 73
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2a

    .line 75
    new-instance v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Landroid/view/OrientationEventListener$SensorEventListenerImpl;-><init>(Landroid/view/OrientationEventListener;)V

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 77
    :cond_2a
    return-void
.end method

.method static synthetic access$000(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/OrientationEventListener;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return v0
.end method

.method static synthetic access$102(Landroid/view/OrientationEventListener;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return p1
.end method


# virtual methods
.method public canDetectOrientation()Z
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public disable()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_c

    .line 104
    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_b
    :goto_b
    return-void

    .line 107
    :cond_c
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 109
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    goto :goto_b
.end method

.method public enable()V
    .registers 5

    .prologue
    .line 88
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_c

    .line 89
    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_b
    :goto_b
    return-void

    .line 92
    :cond_c
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    if-nez v0, :cond_b

    .line 94
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/OrientationEventListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    goto :goto_b
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method registerListener(Landroid/view/OrientationListener;)V
    .registers 2
    .parameter "lis"

    .prologue
    .line 80
    iput-object p1, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    .line 81
    return-void
.end method

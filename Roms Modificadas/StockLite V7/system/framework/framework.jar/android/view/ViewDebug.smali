.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$DumpZ;,
        Landroid/view/ViewDebug$ViewOperation;,
        Landroid/view/ViewDebug$MotionEventTraceType;,
        Landroid/view/ViewDebug$RecyclerTrace;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$ExportedProperty;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMEOUT:I = 0xfa0

.field public static final CONSISTENCY_DRAWING:I = 0x2

.field public static final CONSISTENCY_LAYOUT:I = 0x1

.field public static final CONSISTENCY_LOG_TAG:Ljava/lang/String; = "ViewConsistency"

.field private static final REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field private static final REMOTE_COMMAND_DUMPQ:Ljava/lang/String; = "DUMPZ"

.field private static final REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field static final SYSTEM_PROPERTY_CAPTURE_EVENT:Ljava/lang/String; = "debug.captureevent"

.field static final SYSTEM_PROPERTY_CAPTURE_VIEW:Ljava/lang/String; = "debug.captureview"

.field public static final TRACE_HIERARCHY:Z

.field public static final TRACE_MOTION_EVENTS:Z

.field public static final TRACE_RECYCLER:Z

.field public static consistencyCheckEnabled:Z
    .annotation runtime Landroid/os/Debug$DebugProperty;
    .end annotation
.end field

.field private static mCapturedViewFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static mCapturedViewMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static profileDrawing:Z
    .annotation runtime Landroid/os/Debug$DebugProperty;
    .end annotation
.end field

.field public static profileLayout:Z
    .annotation runtime Landroid/os/Debug$DebugProperty;
    .end annotation
.end field

.field private static sAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/AccessibleObject;",
            "Landroid/view/ViewDebug$ExportedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sHierarchyTracePrefix:Ljava/lang/String;

.field private static sHierarchyTraces:Ljava/io/BufferedWriter;

.field private static sHierarhcyRoot:Landroid/view/ViewRoot;

.field private static sMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sMotionEventRoot:Landroid/view/ViewRoot;

.field private static sMotionEventTracePrefix:Ljava/lang/String;

.field private static sMotionEventTraces:Ljava/io/BufferedWriter;

.field private static sRecyclerOwnerView:Landroid/view/View;

.field private static sRecyclerTracePrefix:Ljava/lang/String;

.field private static sRecyclerTraces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewDebug$RecyclerTrace;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecyclerViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static showFps:Z
    .annotation runtime Landroid/os/Debug$DebugProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 124
    sput-boolean v0, Landroid/view/ViewDebug;->profileDrawing:Z

    .line 132
    sput-boolean v0, Landroid/view/ViewDebug;->profileLayout:Z

    .line 140
    sput-boolean v0, Landroid/view/ViewDebug;->showFps:Z

    .line 155
    sput-boolean v0, Landroid/view/ViewDebug;->consistencyCheckEnabled:Z

    .line 350
    sput-object v1, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 351
    sput-object v1, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1818
    return-void
.end method

.method private static capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 10
    .parameter "root"
    .parameter "clientStream"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1144
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 1145
    .local v1, captureView:Landroid/view/View;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1147
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_19

    .line 1148
    const-string v4, "View"

    const-string v5, "Failed to create capture bitmap!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1154
    :cond_19
    const/4 v2, 0x0

    .line 1156
    .local v2, out:Ljava/io/BufferedOutputStream;
    :try_start_1a
    new-instance v3, Ljava/io/BufferedOutputStream;

    const v4, 0x8000

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_35

    .line 1157
    .end local v2           #out:Ljava/io/BufferedOutputStream;
    .local v3, out:Ljava/io/BufferedOutputStream;
    :try_start_22
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1158
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_3f

    .line 1160
    if-eqz v3, :cond_31

    .line 1161
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 1163
    :cond_31
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1165
    return-void

    .line 1160
    .end local v3           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #out:Ljava/io/BufferedOutputStream;
    :catchall_35
    move-exception v4

    :goto_36
    if-eqz v2, :cond_3b

    .line 1161
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 1163
    :cond_3b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    throw v4

    .line 1160
    .end local v2           #out:Ljava/io/BufferedOutputStream;
    .restart local v3       #out:Ljava/io/BufferedOutputStream;
    :catchall_3f
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #out:Ljava/io/BufferedOutputStream;
    goto :goto_36
.end method

.method private static captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .registers 5
    .parameter "root"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1078
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_2a

    .line 1080
    .local v0, outRect:Landroid/graphics/Rect;
    :try_start_5
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_2f

    .line 1085
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1086
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1088
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 1090
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_2a

    .line 1092
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 1094
    return-void

    .line 1092
    .end local v0           #outRect:Landroid/graphics/Rect;
    :catchall_2a
    move-exception v1

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    throw v1

    .line 1081
    .restart local v0       #outRect:Landroid/graphics/Rect;
    :catch_2f
    move-exception v1

    goto :goto_10
.end method

.method private static captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .registers 17
    .parameter "view"
    .parameter "clientStream"
    .parameter "visible"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1099
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_90

    if-eqz p2, :cond_90

    move v7, v12

    .line 1101
    .local v7, localVisible:Z
    :goto_b
    iget v10, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v10, v10, 0x80

    const/16 v11, 0x80

    if-eq v10, v11, :cond_77

    .line 1102
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v6

    .line 1103
    .local v6, id:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 1104
    .local v8, name:Ljava/lang/String;
    const/4 v10, -0x1

    if-eq v6, v10, :cond_2e

    .line 1105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1108
    :cond_2e
    invoke-virtual {p1, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 1109
    invoke-virtual {p1, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1110
    if-eqz v7, :cond_93

    move v10, v12

    :goto_37
    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1112
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 1114
    .local v9, position:[I
    invoke-virtual {p0, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1116
    aget v10, v9, v13

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1117
    aget v10, v9, v12

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1118
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 1120
    invoke-static {p0, v12}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1121
    .local v2, b:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_74

    .line 1122
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v1, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1124
    .local v1, arrayOut:Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v2, v10, v11, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1125
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1126
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 1128
    .end local v1           #arrayOut:Ljava/io/ByteArrayOutputStream;
    :cond_74
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 1131
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v6           #id:I
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #position:[I
    :cond_77
    instance-of v10, p0, Landroid/view/ViewGroup;

    if-eqz v10, :cond_95

    .line 1132
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 1133
    .local v4, group:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 1135
    .local v3, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_84
    if-ge v5, v3, :cond_95

    .line 1136
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, p1, v7}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 1135
    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    .end local v3           #count:I
    .end local v4           #group:Landroid/view/ViewGroup;
    .end local v5           #i:I
    .end local v7           #localVisible:Z
    :cond_90
    move v7, v13

    .line 1099
    goto/16 :goto_b

    .restart local v6       #id:I
    .restart local v7       #localVisible:Z
    .restart local v8       #name:Ljava/lang/String;
    :cond_93
    move v10, v13

    .line 1110
    goto :goto_37

    .line 1139
    .end local v6           #id:I
    .end local v8           #name:Ljava/lang/String;
    :cond_95
    return-void
.end method

.method private static capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "obj"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v8, "null"

    .line 1768
    if-nez p0, :cond_8

    .line 1769
    const-string v7, "null"

    move-object v7, v8

    .line 1797
    :goto_7
    return-object v7

    .line 1772
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1773
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1775
    .local v3, fields:[Ljava/lang/reflect/Field;
    array-length v0, v3

    .line 1776
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_13
    if-ge v4, v0, :cond_4b

    .line 1777
    aget-object v1, v3, v4

    .line 1779
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_17
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1781
    .local v2, fieldValue:Ljava/lang/Object;
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    if-eqz v2, :cond_43

    .line 1786
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1787
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    .end local v6           #value:Ljava/lang/String;
    :goto_3b
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1776
    .end local v2           #fieldValue:Ljava/lang/Object;
    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1789
    .restart local v2       #fieldValue:Ljava/lang/Object;
    :cond_43
    const-string v7, "null"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_48} :catch_49

    goto :goto_3b

    .line 1792
    .end local v2           #fieldValue:Ljava/lang/Object;
    :catch_49
    move-exception v7

    goto :goto_40

    .line 1797
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_4b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7
.end method

.method private static capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "obj"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v10, "null"

    .line 1724
    if-nez p0, :cond_8

    .line 1725
    const-string v9, "null"

    move-object v9, v10

    .line 1763
    :goto_7
    return-object v9

    .line 1728
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1729
    .local v7, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1731
    .local v4, methods:[Ljava/lang/reflect/Method;
    array-length v0, v4

    .line 1732
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v0, :cond_81

    .line 1733
    aget-object v2, v4, v1

    .line 1735
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    :try_start_18
    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1736
    .local v3, methodValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 1738
    .local v6, returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v9, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$CapturedViewProperty;

    .line 1739
    .local v5, property:Landroid/view/ViewDebug$CapturedViewProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v9

    if-eqz v9, :cond_51

    .line 1741
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v6, v9}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    .end local v3           #methodValue:Ljava/lang/Object;
    .end local v5           #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1743
    .restart local v3       #methodValue:Ljava/lang/Object;
    .restart local v5       #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_51
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    const-string v9, "()="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    if-eqz v3, :cond_79

    .line 1748
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    const-string v11, "\\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1749
    .local v8, value:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    .end local v8           #value:Ljava/lang/String;
    :goto_71
    const-string v9, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 1755
    .end local v3           #methodValue:Ljava/lang/Object;
    .end local v5           #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_77
    move-exception v9

    goto :goto_4e

    .line 1751
    .restart local v3       #methodValue:Ljava/lang/Object;
    .restart local v5       #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_79
    const-string v9, "null"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7e
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_7e} :catch_77
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_7e} :catch_7f

    goto :goto_71

    .line 1758
    .end local v3           #methodValue:Ljava/lang/Object;
    .end local v5           #property:Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_7f
    move-exception v9

    goto :goto_4e

    .line 1763
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_81
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_7
.end method

.method private static capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1662
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_b

    .line 1663
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1665
    :cond_b
    sget-object v6, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1667
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1668
    .local v2, fields:[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_17

    move-object v3, v2

    .line 1687
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .local v3, fields:[Ljava/lang/reflect/Field;
    :goto_16
    return-object v3

    .line 1672
    .end local v3           #fields:[Ljava/lang/reflect/Field;
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    :cond_17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1673
    .local v4, foundFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1675
    array-length v0, v2

    .line 1676
    .local v0, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_22
    if-ge v5, v0, :cond_38

    .line 1677
    aget-object v1, v2, v5

    .line 1678
    .local v1, field:Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1679
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1680
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1676
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 1684
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_38
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #fields:[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1685
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1687
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .restart local v3       #fields:[Ljava/lang/reflect/Field;
    goto :goto_16
.end method

.method private static capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1691
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_b

    .line 1692
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1694
    :cond_b
    sget-object v3, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1696
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1697
    .local v5, methods:[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_17

    move-object v6, v5

    .line 1718
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .local v6, methods:[Ljava/lang/reflect/Method;
    :goto_16
    return-object v6

    .line 1701
    .end local v6           #methods:[Ljava/lang/reflect/Method;
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    .local v1, foundMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1704
    array-length v0, v5

    .line 1705
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_22
    if-ge v2, v0, :cond_47

    .line 1706
    aget-object v4, v5, v2

    .line 1707
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_44

    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-eq v7, v8, :cond_44

    .line 1710
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1711
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 1715
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5           #methods:[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1716
    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 1718
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    .restart local v6       #methods:[Ljava/lang/reflect/Method;
    goto :goto_16
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 7
    .parameter "view"
    .parameter "command"
    .parameter "parameters"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 863
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 865
    const-string v1, "DUMP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 866
    invoke-static {p0, p3}, Landroid/view/ViewDebug;->dump(Landroid/view/View;Ljava/io/OutputStream;)V

    .line 883
    :cond_10
    :goto_10
    return-void

    .line 867
    :cond_11
    const-string v1, "DUMPZ"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 868
    invoke-static {p0, p3}, Landroid/view/ViewDebug$DumpZ;->access$100(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_10

    .line 869
    :cond_1d
    const-string v1, "CAPTURE_LAYERS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 870
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_10

    .line 872
    :cond_2e
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, params:[Ljava/lang/String;
    const-string v1, "CAPTURE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 874
    aget-object v1, v0, v2

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_10

    .line 875
    :cond_42
    const-string v1, "INVALIDATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 876
    aget-object v1, v0, v2

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_10

    .line 877
    :cond_50
    const-string v1, "REQUEST_LAYOUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 878
    aget-object v1, v0, v2

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_10

    .line 879
    :cond_5e
    const-string v1, "PROFILE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 880
    aget-object v1, v0, v2

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private static dump(Landroid/view/View;Ljava/io/OutputStream;)V
    .registers 10
    .parameter "root"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1203
    const/4 v3, 0x0

    .line 1205
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string/jumbo v7, "utf-8"

    invoke-direct {v6, p1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v7, 0x8000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_34

    .line 1206
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_11
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 1207
    .local v5, view:Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_25

    .line 1208
    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 1209
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v7}, Landroid/view/ViewDebug;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1211
    .end local v2           #group:Landroid/view/ViewGroup;
    :cond_25
    const-string v6, "DONE."

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2d} :catch_4d

    .line 1216
    if-eqz v4, :cond_51

    .line 1217
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    move-object v3, v4

    .line 1220
    .end local v4           #out:Ljava/io/BufferedWriter;
    .end local v5           #view:Landroid/view/View;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_33
    :goto_33
    return-void

    .line 1213
    :catch_34
    move-exception v6

    move-object v1, v6

    .line 1214
    .local v1, e:Ljava/lang/Exception;
    :goto_36
    :try_start_36
    const-string v6, "View"

    const-string v7, "Problem dumping the view:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_43

    .line 1216
    if-eqz v3, :cond_33

    .line 1217
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_33

    .line 1216
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_43
    move-exception v6

    :goto_44
    if-eqz v3, :cond_49

    .line 1217
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_49
    throw v6

    .line 1216
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_4a
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_44

    .line 1213
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_4d
    move-exception v6

    move-object v1, v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_36

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    .restart local v5       #view:Landroid/view/View;
    :cond_51
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_33
.end method

.method public static dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "tag"
    .parameter "view"

    .prologue
    const-string v4, ""

    .line 1808
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1809
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1810
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, ""

    invoke-static {p1, v0, v4}, Landroid/view/ViewDebug;->capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    const-string v2, ""

    invoke-static {p1, v0, v4}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    return-void
.end method

.method private static dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .registers 7
    .parameter "view"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1647
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p2, :cond_b

    .line 1648
    const/16 v2, 0x20

    :try_start_5
    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1647
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1650
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1651
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1652
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_29} :catch_2b

    .line 1658
    const/4 v2, 0x1

    :goto_2a
    return v2

    .line 1654
    :catch_2b
    move-exception v2

    move-object v0, v2

    .line 1655
    .local v0, e:Ljava/io/IOException;
    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method private static dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .registers 7
    .parameter "group"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1630
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1643
    :cond_6
    return-void

    .line 1634
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1635
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_6

    .line 1636
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1637
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_20

    .line 1638
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1635
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1640
    .restart local v2       #view:Landroid/view/View;
    :cond_20
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1d
.end method

.method private static dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .registers 8
    .parameter "context"
    .parameter "group"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1249
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug;->dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1262
    :cond_6
    return-void

    .line 1253
    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1254
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_6

    .line 1255
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1256
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_20

    .line 1257
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1254
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1259
    .restart local v2       #view:Landroid/view/View;
    :cond_20
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug;->dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    goto :goto_1d
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .registers 4
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1359
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1360
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1368
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1369
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1370
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1371
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 1372
    return-void
.end method

.method private static dumpViewWithProperties(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;I)Z
    .registers 8
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter "level"

    .prologue
    .line 1268
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p3, :cond_b

    .line 1269
    const/16 v2, 0x20

    :try_start_5
    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1268
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1271
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1272
    const/16 v2, 0x40

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1273
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1274
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1275
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1276
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_31} :catch_33

    .line 1281
    const/4 v2, 0x1

    :goto_32
    return v2

    .line 1277
    :catch_33
    move-exception v2

    move-object v0, v2

    .line 1278
    .local v0, e:Ljava/io/IOException;
    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const/4 v2, 0x0

    goto :goto_32
.end method

.method private static exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 21
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1450
    .local p3, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 1452
    .local v12, fields:[Ljava/lang/reflect/Field;
    array-length v11, v12

    .line 1453
    .local v11, count:I
    const/16 p3, 0x0

    .local p3, i:I
    move/from16 v13, p3

    .end local p3           #i:I
    .local v13, i:I
    :goto_9
    if-ge v13, v11, :cond_13c

    .line 1454
    aget-object v5, v12, v13

    .line 1458
    .local v5, field:Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    .line 1459
    .local v6, fieldValue:Ljava/lang/Object;
    :try_start_e
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 1460
    .local v8, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object p3, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewDebug$ExportedProperty;

    .line 1461
    .local v7, property:Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_91

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v9, ":"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1464
    .local p3, categoryPrefix:Ljava/lang/String;
    :goto_44
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_f8

    .line 1466
    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v8

    .end local v8           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v8, :cond_94

    if-eqz p0, :cond_94

    .line 1467
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 1468
    .local v6, id:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v6

    .line 1512
    .end local v6           #id:I
    .end local v7           #property:Landroid/view/ViewDebug$ExportedProperty;
    :cond_5e
    :goto_5e
    if-nez v6, :cond_67

    .line 1513
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1516
    :cond_67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #categoryPrefix:Ljava/lang/String;
    invoke-virtual/range {p3 .. p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .end local v5           #field:Ljava/lang/reflect/Field;
    const-string v7, ""

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v5

    move-object v3, v7

    move-object v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1453
    :goto_8b
    add-int/lit8 p3, v13, 0x1

    .end local v13           #i:I
    .local p3, i:I
    move/from16 v13, p3

    .end local p3           #i:I
    .restart local v13       #i:I
    goto/16 :goto_9

    .line 1461
    .restart local v5       #field:Ljava/lang/reflect/Field;
    .local v6, fieldValue:Ljava/lang/Object;
    .restart local v7       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v8       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_91
    const-string p3, ""

    goto :goto_44

    .line 1470
    .end local v8           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, categoryPrefix:Ljava/lang/String;
    :cond_94
    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v8

    .line 1471
    .local v8, flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    array-length v9, v8

    if-lez v9, :cond_cf

    .line 1472
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    .line 1473
    .local v10, intValue:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v9

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v14, 0x5f

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1475
    .local v9, valuePrefix:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v8

    move v2, v10

    move-object v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1478
    .end local v9           #valuePrefix:Ljava/lang/String;
    .end local v10           #intValue:I
    :cond_cf
    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v10

    .line 1479
    .local v10, mapping:[Landroid/view/ViewDebug$IntToString;
    array-length v7, v10

    .end local v7           #property:Landroid/view/ViewDebug$ExportedProperty;
    if-lez v7, :cond_5e

    .line 1480
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    .line 1481
    .local v7, intValue:I
    array-length v14, v10

    .line 1482
    .local v14, mappingCount:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_df
    if-ge v8, v14, :cond_ed

    .line 1483
    aget-object v9, v10, v8

    .line 1484
    .local v9, mapped:Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v15

    if-ne v15, v7, :cond_f5

    .line 1485
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v6

    .line 1490
    .end local v6           #fieldValue:Ljava/lang/Object;
    .end local v9           #mapped:Landroid/view/ViewDebug$IntToString;
    :cond_ed
    if-nez v6, :cond_5e

    .line 1491
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .local v6, fieldValue:Ljava/lang/Integer;
    goto/16 :goto_5e

    .line 1482
    .local v6, fieldValue:Ljava/lang/Object;
    .restart local v9       #mapped:Landroid/view/ViewDebug$IntToString;
    :cond_f5
    add-int/lit8 v8, v8, 0x1

    goto :goto_df

    .line 1495
    .end local v9           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v10           #mapping:[Landroid/view/ViewDebug$IntToString;
    .end local v14           #mappingCount:I
    .local v7, property:Landroid/view/ViewDebug$ExportedProperty;
    .local v8, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_f8
    const-class v9, [I

    if-ne v8, v9, :cond_13d

    .line 1496
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #fieldValue:Ljava/lang/Object;
    check-cast v6, [I

    move-object v0, v6

    check-cast v0, [I

    move-object v8, v0

    .line 1497
    .local v8, array:[I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #categoryPrefix:Ljava/lang/String;
    invoke-virtual/range {p3 .. p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .end local v5           #field:Ljava/lang/reflect/Field;
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v5, 0x5f

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1498
    .local v9, valuePrefix:Ljava/lang/String;
    const-string p3, ""

    .line 1500
    .local p3, suffix:Ljava/lang/String;
    const-string v10, ""

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-static/range {v5 .. v10}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1520
    .end local v7           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v8           #array:[I
    .end local v9           #valuePrefix:Ljava/lang/String;
    .end local p3           #suffix:Ljava/lang/String;
    :cond_13c
    return-void

    .line 1504
    .restart local v5       #field:Ljava/lang/reflect/Field;
    .restart local v6       #fieldValue:Ljava/lang/Object;
    .restart local v7       #property:Landroid/view/ViewDebug$ExportedProperty;
    .local v8, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, categoryPrefix:Ljava/lang/String;
    :cond_13d
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    .end local v8           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v8, :cond_5e

    .line 1505
    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 1506
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local p3           #categoryPrefix:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #field:Ljava/lang/reflect/Field;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v6

    .end local v6           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_172
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_172} :catch_174

    goto/16 :goto_8b

    .line 1517
    .end local v7           #property:Landroid/view/ViewDebug$ExportedProperty;
    :catch_174
    move-exception p3

    goto/16 :goto_8b
.end method

.method private static exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 22
    .parameter "context"
    .parameter "view"
    .parameter "out"
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1377
    .local p3, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v15

    .line 1379
    .local v15, methods:[Ljava/lang/reflect/Method;
    array-length v11, v15

    .line 1380
    .local v11, count:I
    const/16 p3, 0x0

    .local p3, i:I
    move/from16 v12, p3

    .end local p3           #i:I
    .local v12, i:I
    :goto_9
    if-ge v12, v11, :cond_140

    .line 1381
    aget-object v13, v15, v12

    .line 1385
    .local v13, method:Ljava/lang/reflect/Method;
    const/16 p3, 0x0

    :try_start_f
    check-cast p3, [Ljava/lang/Object;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1386
    .local v14, methodValue:Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 1387
    .local v5, returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object p3, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewDebug$ExportedProperty;

    .line 1388
    .local v7, property:Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_93

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v6, ":"

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1391
    .local p3, categoryPrefix:Ljava/lang/String;
    :goto_50
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_103

    .line 1393
    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v5

    .end local v5           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v5, :cond_96

    if-eqz p0, :cond_96

    .line 1394
    check-cast v14, Ljava/lang/Integer;

    .end local v14           #methodValue:Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1395
    .local v5, id:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v5

    .line 1440
    .end local v5           #id:I
    .end local v7           #property:Landroid/view/ViewDebug$ExportedProperty;
    :goto_69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #categoryPrefix:Ljava/lang/String;
    invoke-virtual/range {p3 .. p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "()"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v6

    move-object v3, v7

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1380
    :goto_8d
    add-int/lit8 p3, v12, 0x1

    .end local v12           #i:I
    .local p3, i:I
    move/from16 v12, p3

    .end local p3           #i:I
    .restart local v12       #i:I
    goto/16 :goto_9

    .line 1388
    .local v5, returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v7       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v14       #methodValue:Ljava/lang/Object;
    :cond_93
    const-string p3, ""

    goto :goto_50

    .line 1397
    .end local v5           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, categoryPrefix:Ljava/lang/String;
    :cond_96
    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v5

    .line 1398
    .local v5, flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    array-length v6, v5

    if-lez v6, :cond_d3

    .line 1399
    move-object v0, v14

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1400
    .local v6, intValue:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1402
    .local v9, valuePrefix:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move-object v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1405
    .end local v6           #intValue:I
    .end local v9           #valuePrefix:Ljava/lang/String;
    :cond_d3
    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v9

    .line 1406
    .local v9, mapping:[Landroid/view/ViewDebug$IntToString;
    array-length v5, v9

    .end local v5           #flagsMapping:[Landroid/view/ViewDebug$FlagToString;
    if-lez v5, :cond_177

    .line 1407
    move-object v0, v14

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1408
    .local v5, intValue:I
    const/4 v7, 0x0

    .line 1409
    .local v7, mapped:Z
    array-length v10, v9

    .line 1410
    .local v10, mappingCount:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_e6
    if-ge v6, v10, :cond_17d

    .line 1411
    aget-object v8, v9, v6

    .line 1412
    .local v8, mapper:Landroid/view/ViewDebug$IntToString;
    invoke-interface {v8}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_100

    .line 1413
    invoke-interface {v8}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v7

    .line 1414
    .local v7, methodValue:Ljava/lang/String;
    const/4 v6, 0x1

    .line 1419
    .end local v7           #methodValue:Ljava/lang/String;
    .end local v8           #mapper:Landroid/view/ViewDebug$IntToString;
    .end local v14           #methodValue:Ljava/lang/Object;
    .local v6, mapped:Z
    :goto_f8
    if-nez v6, :cond_17a

    .line 1420
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, methodValue:Ljava/lang/Integer;
    goto/16 :goto_69

    .line 1410
    .local v5, intValue:I
    .local v6, j:I
    .local v7, mapped:Z
    .restart local v8       #mapper:Landroid/view/ViewDebug$IntToString;
    .restart local v14       #methodValue:Ljava/lang/Object;
    :cond_100
    add-int/lit8 v6, v6, 0x1

    goto :goto_e6

    .line 1424
    .end local v6           #j:I
    .end local v8           #mapper:Landroid/view/ViewDebug$IntToString;
    .end local v9           #mapping:[Landroid/view/ViewDebug$IntToString;
    .end local v10           #mappingCount:I
    .local v5, returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v7, property:Landroid/view/ViewDebug$ExportedProperty;
    :cond_103
    const-class v6, [I

    if-ne v5, v6, :cond_141

    .line 1425
    check-cast v14, [I

    .end local v14           #methodValue:Ljava/lang/Object;
    move-object v0, v14

    check-cast v0, [I

    move-object v8, v0

    .line 1426
    .local v8, array:[I
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #categoryPrefix:Ljava/lang/String;
    invoke-virtual/range {p3 .. p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v5, 0x5f

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1427
    .local v9, valuePrefix:Ljava/lang/String;
    const-string p3, "()"

    .line 1429
    .local p3, suffix:Ljava/lang/String;
    const-string v10, "()"

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-static/range {v5 .. v10}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1445
    .end local v7           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v8           #array:[I
    .end local v9           #valuePrefix:Ljava/lang/String;
    .end local v13           #method:Ljava/lang/reflect/Method;
    .end local p3           #suffix:Ljava/lang/String;
    :cond_140
    return-void

    .line 1433
    .restart local v5       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v7       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v13       #method:Ljava/lang/reflect/Method;
    .restart local v14       #methodValue:Ljava/lang/Object;
    .local p3, categoryPrefix:Ljava/lang/String;
    :cond_141
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    .end local v5           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v5, :cond_177

    .line 1434
    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v5

    if-eqz v5, :cond_177

    .line 1435
    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3           #categoryPrefix:Ljava/lang/String;
    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {v7}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_16f
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_16f} :catch_171
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_16f} :catch_174

    goto/16 :goto_8d

    .line 1441
    .end local v7           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v14           #methodValue:Ljava/lang/Object;
    :catch_171
    move-exception p3

    goto/16 :goto_8d

    .line 1442
    :catch_174
    move-exception p3

    goto/16 :goto_8d

    .restart local v7       #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v14       #methodValue:Ljava/lang/Object;
    .restart local p3       #categoryPrefix:Ljava/lang/String;
    :cond_177
    move-object v5, v14

    goto/16 :goto_69

    .end local v7           #property:Landroid/view/ViewDebug$ExportedProperty;
    .end local v14           #methodValue:Ljava/lang/Object;
    .local v5, intValue:I
    .local v6, mapped:Z
    .local v9, mapping:[Landroid/view/ViewDebug$IntToString;
    .restart local v10       #mappingCount:I
    :cond_17a
    move-object v5, v7

    goto/16 :goto_69

    .local v6, j:I
    .local v7, mapped:Z
    .restart local v14       #methodValue:Ljava/lang/Object;
    :cond_17d
    move v6, v7

    .end local v7           #mapped:Z
    .local v6, mapped:Z
    move-object v7, v14

    .end local v14           #methodValue:Ljava/lang/Object;
    .local v7, methodValue:Ljava/lang/Object;
    goto/16 :goto_f8
.end method

.method private static exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .registers 24
    .parameter "context"
    .parameter "out"
    .parameter "property"
    .parameter "array"
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1554
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v7

    .line 1555
    .local v7, indexMapping:[Landroid/view/ViewDebug$IntToString;
    array-length v5, v7

    if-lez v5, :cond_7c

    const/4 v5, 0x1

    .line 1557
    .local v5, hasIndexMapping:Z
    :goto_8
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v11

    .line 1558
    .local v11, mapping:[Landroid/view/ViewDebug$IntToString;
    array-length v6, v11

    if-lez v6, :cond_7e

    const/4 v6, 0x1

    .line 1560
    .local v6, hasMapping:Z
    :goto_10
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result p2

    .end local p2
    if-eqz p2, :cond_80

    if-eqz p0, :cond_80

    const/16 p2, 0x1

    move/from16 v14, p2

    .line 1561
    .local v14, resolveId:Z
    :goto_1c
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    .line 1563
    .local v16, valuesCount:I
    const/16 p2, 0x0

    .local p2, j:I
    move/from16 v8, p2

    .end local p2           #j:I
    .local v8, j:I
    :goto_25
    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_90

    .line 1565
    const/4 v15, 0x0

    .line 1567
    .local v15, value:Ljava/lang/String;
    aget p2, p3, v8

    .line 1569
    .local p2, intValue:I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1570
    .local v13, name:Ljava/lang/String;
    if-eqz v5, :cond_47

    .line 1571
    array-length v12, v7

    .line 1572
    .local v12, mappingCount:I
    const/4 v9, 0x0

    .local v9, k:I
    :goto_35
    if-ge v9, v12, :cond_47

    .line 1573
    aget-object v10, v7, v9

    .line 1574
    .local v10, mapped:Landroid/view/ViewDebug$IntToString;
    invoke-interface {v10}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-ne v0, v1, :cond_85

    .line 1575
    invoke-interface {v10}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v9

    .end local v13           #name:Ljava/lang/String;
    .local v9, name:Ljava/lang/String;
    move-object v13, v9

    .line 1581
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v12           #mappingCount:I
    .restart local v13       #name:Ljava/lang/String;
    :cond_47
    if-eqz v6, :cond_94

    .line 1582
    array-length v12, v11

    .line 1583
    .restart local v12       #mappingCount:I
    const/4 v9, 0x0

    .local v9, k:I
    :goto_4b
    if-ge v9, v12, :cond_94

    .line 1584
    aget-object v10, v11, v9

    .line 1585
    .restart local v10       #mapped:Landroid/view/ViewDebug$IntToString;
    invoke-interface {v10}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_88

    .line 1586
    invoke-interface {v10}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v9

    .line 1592
    .end local v10           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v12           #mappingCount:I
    .end local v15           #value:Ljava/lang/String;
    .local v9, value:Ljava/lang/String;
    :goto_5d
    if-eqz v14, :cond_8b

    .line 1593
    if-nez v9, :cond_91

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #intValue:I
    check-cast p2, Ljava/lang/String;

    .line 1598
    .end local v9           #value:Ljava/lang/String;
    .local p2, value:Ljava/lang/String;
    :goto_6b
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object v2, v13

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1563
    add-int/lit8 p2, v8, 0x1

    .end local v8           #j:I
    .local p2, j:I
    move/from16 v8, p2

    .end local p2           #j:I
    .restart local v8       #j:I
    goto :goto_25

    .line 1555
    .end local v5           #hasIndexMapping:Z
    .end local v6           #hasMapping:Z
    .end local v8           #j:I
    .end local v11           #mapping:[Landroid/view/ViewDebug$IntToString;
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #resolveId:Z
    .end local v16           #valuesCount:I
    .local p2, property:Landroid/view/ViewDebug$ExportedProperty;
    :cond_7c
    const/4 v5, 0x0

    goto :goto_8

    .line 1558
    .restart local v5       #hasIndexMapping:Z
    .restart local v11       #mapping:[Landroid/view/ViewDebug$IntToString;
    :cond_7e
    const/4 v6, 0x0

    goto :goto_10

    .line 1560
    .end local p2           #property:Landroid/view/ViewDebug$ExportedProperty;
    .restart local v6       #hasMapping:Z
    :cond_80
    const/16 p2, 0x0

    move/from16 v14, p2

    goto :goto_1c

    .line 1572
    .restart local v8       #j:I
    .local v9, k:I
    .restart local v10       #mapped:Landroid/view/ViewDebug$IntToString;
    .restart local v12       #mappingCount:I
    .restart local v13       #name:Ljava/lang/String;
    .restart local v14       #resolveId:Z
    .restart local v15       #value:Ljava/lang/String;
    .restart local v16       #valuesCount:I
    .local p2, intValue:I
    :cond_85
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    .line 1583
    :cond_88
    add-int/lit8 v9, v9, 0x1

    goto :goto_4b

    .line 1595
    .end local v10           #mapped:Landroid/view/ViewDebug$IntToString;
    .end local v12           #mappingCount:I
    .end local v15           #value:Ljava/lang/String;
    .local v9, value:Ljava/lang/String;
    :cond_8b
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .end local v9           #value:Ljava/lang/String;
    .local p2, value:Ljava/lang/String;
    goto :goto_6b

    .line 1600
    .end local v13           #name:Ljava/lang/String;
    .end local p2           #value:Ljava/lang/String;
    :cond_90
    return-void

    .restart local v9       #value:Ljava/lang/String;
    .restart local v13       #name:Ljava/lang/String;
    .local p2, intValue:I
    :cond_91
    move-object/from16 p2, v9

    .end local v9           #value:Ljava/lang/String;
    .local p2, value:Ljava/lang/String;
    goto :goto_6b

    .restart local v15       #value:Ljava/lang/String;
    .local p2, intValue:I
    :cond_94
    move-object v9, v15

    .end local v15           #value:Ljava/lang/String;
    .restart local v9       #value:Ljava/lang/String;
    goto :goto_5d
.end method

.method private static exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .registers 14
    .parameter "out"
    .parameter "mapping"
    .parameter "intValue"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1536
    array-length v0, p1

    .line 1537
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v0, :cond_46

    .line 1538
    aget-object v1, p1, v3

    .line 1539
    .local v1, flagMapping:Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v2

    .line 1540
    .local v2, ifTrue:Z
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v8

    and-int v4, p2, v8

    .line 1541
    .local v4, maskResult:I
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v8

    if-ne v4, v8, :cond_43

    const/4 v8, 0x1

    move v6, v8

    .line 1542
    .local v6, test:Z
    :goto_18
    if-eqz v6, :cond_1c

    if-nez v2, :cond_20

    :cond_1c
    if-nez v6, :cond_40

    if-nez v2, :cond_40

    .line 1543
    :cond_20
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v5

    .line 1544
    .local v5, name:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1545
    .local v7, value:Ljava/lang/String;
    const-string v8, ""

    invoke-static {p0, p3, v5, v8, v7}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1537
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1541
    .end local v6           #test:Z
    :cond_43
    const/4 v8, 0x0

    move v6, v8

    goto :goto_18

    .line 1548
    .end local v1           #flagMapping:Landroid/view/ViewDebug$FlagToString;
    .end local v2           #ifTrue:Z
    .end local v4           #maskResult:I
    :cond_46
    return-void
.end method

.method private static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 10
    .parameter "root"
    .parameter "parameter"

    .prologue
    const/4 v7, 0x0

    .line 887
    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2c

    .line 888
    const-string v5, "@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 889
    .local v3, ids:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v0, v3, v5

    .line 890
    .local v0, className:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v3, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v1, v5

    .line 892
    .local v1, hashCode:I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 893
    .local v4, view:Landroid/view/View;
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3d

    .line 894
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #view:Landroid/view/View;
    invoke-static {v4, v0, v1}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    .line 902
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #hashCode:I
    .end local v3           #ids:[Ljava/lang/String;
    :goto_2b
    return-object v5

    .line 898
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 899
    .local v2, id:I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_2b

    .end local v2           #id:I
    .restart local v0       #className:Ljava/lang/String;
    .restart local v1       #hashCode:I
    .restart local v3       #ids:[Ljava/lang/String;
    .restart local v4       #view:Landroid/view/View;
    :cond_3d
    move-object v5, v7

    .line 902
    goto :goto_2b
.end method

.method private static findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .registers 8
    .parameter "group"
    .parameter "className"
    .parameter "hashCode"

    .prologue
    .line 1223
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, p0

    .line 1240
    :goto_7
    return-object v4

    .line 1227
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1228
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    if-ge v2, v0, :cond_2c

    .line 1229
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1230
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_21

    .line 1231
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #view:Landroid/view/View;
    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 1232
    .local v1, found:Landroid/view/View;
    if-eqz v1, :cond_29

    move-object v4, v1

    .line 1233
    goto :goto_7

    .line 1235
    .end local v1           #found:Landroid/view/View;
    .restart local v3       #view:Landroid/view/View;
    :cond_21
    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object v4, v3

    .line 1236
    goto :goto_7

    .line 1228
    .end local v3           #view:Landroid/view/View;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1240
    :cond_2c
    const/4 v4, 0x0

    goto :goto_7
.end method

.method private static getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v10, Landroid/view/ViewDebug$ExportedProperty;

    .line 1285
    sget-object v8, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    if-nez v8, :cond_d

    .line 1286
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 1288
    :cond_d
    sget-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v8, :cond_1a

    .line 1289
    new-instance v8, Ljava/util/HashMap;

    const/16 v9, 0x200

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    sput-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1292
    :cond_1a
    sget-object v7, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 1293
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    sget-object v0, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1295
    .local v0, annotations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/reflect/AccessibleObject;Landroid/view/ViewDebug$ExportedProperty;>;"
    invoke-virtual {v7, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Field;

    .line 1296
    .local v3, fields:[Ljava/lang/reflect/Field;
    if-eqz v3, :cond_28

    move-object v4, v3

    .line 1316
    .end local v3           #fields:[Ljava/lang/reflect/Field;
    .local v4, fields:[Ljava/lang/reflect/Field;
    :goto_27
    return-object v4

    .line 1300
    .end local v4           #fields:[Ljava/lang/reflect/Field;
    .restart local v3       #fields:[Ljava/lang/reflect/Field;
    :cond_28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    .local v5, foundFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1303
    array-length v1, v3

    .line 1304
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_33
    if-ge v6, v1, :cond_52

    .line 1305
    aget-object v2, v3, v6

    .line 1306
    .local v2, field:Ljava/lang/reflect/Field;
    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 1307
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1308
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 1313
    .end local v2           #field:Ljava/lang/reflect/Field;
    :cond_52
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/reflect/Field;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #fields:[Ljava/lang/reflect/Field;
    check-cast v3, [Ljava/lang/reflect/Field;

    .line 1314
    .restart local v3       #fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v7, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    .line 1316
    .end local v3           #fields:[Ljava/lang/reflect/Field;
    .restart local v4       #fields:[Ljava/lang/reflect/Field;
    goto :goto_27
.end method

.method private static getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v10, Landroid/view/ViewDebug$ExportedProperty;

    .line 1320
    sget-object v8, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    if-nez v8, :cond_f

    .line 1321
    new-instance v8, Ljava/util/HashMap;

    const/16 v9, 0x64

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    sput-object v8, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1323
    :cond_f
    sget-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v8, :cond_1c

    .line 1324
    new-instance v8, Ljava/util/HashMap;

    const/16 v9, 0x200

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    sput-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1327
    :cond_1c
    sget-object v4, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1328
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    sget-object v0, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1330
    .local v0, annotations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/reflect/AccessibleObject;Landroid/view/ViewDebug$ExportedProperty;>;"
    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Method;

    .line 1331
    .local v6, methods:[Ljava/lang/reflect/Method;
    if-eqz v6, :cond_2a

    move-object v7, v6

    .line 1353
    .end local v6           #methods:[Ljava/lang/reflect/Method;
    .local v7, methods:[Ljava/lang/reflect/Method;
    :goto_29
    return-object v7

    .line 1335
    .end local v7           #methods:[Ljava/lang/reflect/Method;
    .restart local v6       #methods:[Ljava/lang/reflect/Method;
    :cond_2a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    .local v2, foundMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1338
    array-length v1, v6

    .line 1339
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_35
    if-ge v3, v1, :cond_63

    .line 1340
    aget-object v5, v6, v3

    .line 1341
    .local v5, method:Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_60

    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Void;

    if-eq v8, v9, :cond_60

    .line 1344
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1345
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 1350
    .end local v5           #method:Ljava/lang/reflect/Method;
    :cond_63
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/reflect/Method;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6           #methods:[Ljava/lang/reflect/Method;
    check-cast v6, [Ljava/lang/reflect/Method;

    .line 1351
    .restart local v6       #methods:[Ljava/lang/reflect/Method;
    invoke-virtual {v4, p0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    .line 1353
    .end local v6           #methods:[Ljava/lang/reflect/Method;
    .restart local v7       #methods:[Ljava/lang/reflect/Method;
    goto :goto_29
.end method

.method public static getViewInstanceCount()J
    .registers 2

    .prologue
    .line 433
    sget-wide v0, Landroid/view/View;->sInstanceCount:J

    return-wide v0
.end method

.method public static getViewRootInstanceCount()J
    .registers 2

    .prologue
    .line 444
    invoke-static {}, Landroid/view/ViewRoot;->getInstanceCount()J

    move-result-wide v0

    return-wide v0
.end method

.method private static invalidate(Landroid/view/View;Ljava/lang/String;)V
    .registers 3
    .parameter "root"
    .parameter "parameter"

    .prologue
    .line 906
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 907
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_9

    .line 908
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 910
    :cond_9
    return-void
.end method

.method private static isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .registers 4
    .parameter "view"
    .parameter "className"
    .parameter "hashCode"

    .prologue
    .line 1244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v0, p2, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "captureView"
    .parameter "skpiChildren"

    .prologue
    const/4 v3, 0x1

    .line 1168
    if-eqz p0, :cond_3e

    .line 1169
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1170
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [Landroid/graphics/Bitmap;

    .line 1172
    .local v0, cache:[Landroid/graphics/Bitmap;
    new-instance v3, Landroid/view/ViewDebug$6;

    invoke-direct {v3, v0, p0, p1, v2}, Landroid/view/ViewDebug$6;-><init>([Landroid/graphics/Bitmap;Landroid/view/View;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1191
    const-wide/16 v3, 0xfa0

    :try_start_14
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1192
    const/4 v3, 0x0

    aget-object v3, v0, v3
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1c} :catch_1d

    .line 1199
    .end local v0           #cache:[Landroid/graphics/Bitmap;
    .end local v2           #latch:Ljava/util/concurrent/CountDownLatch;
    :goto_1c
    return-object v3

    .line 1193
    .restart local v0       #cache:[Landroid/graphics/Bitmap;
    .restart local v2       #latch:Ljava/util/concurrent/CountDownLatch;
    :catch_1d
    move-exception v3

    move-object v1, v3

    .line 1194
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not complete the capture of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1199
    .end local v0           #cache:[Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #latch:Ljava/util/concurrent/CountDownLatch;
    :cond_3e
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method private static profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 9
    .parameter "root"
    .parameter "clientStream"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 926
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 927
    .local v3, view:Landroid/view/View;
    const/4 v1, 0x0

    .line 929
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_5
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v5, 0x8000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_49

    .line 931
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    if-eqz v3, :cond_26

    .line 932
    :try_start_14
    invoke-static {v3, v2}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    .line 937
    :goto_17
    const-string v4, "DONE."

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_2f

    .line 942
    if-eqz v2, :cond_4c

    .line 943
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    move-object v1, v2

    .line 946
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :cond_25
    :goto_25
    return-void

    .line 934
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_26
    :try_start_26
    const-string v4, "-1 -1 -1"

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_17

    .line 939
    :catch_2f
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .line 940
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :goto_32
    :try_start_32
    const-string v4, "View"

    const-string v5, "Problem profiling the view:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3f

    .line 942
    if-eqz v1, :cond_25

    .line 943
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_25

    .line 942
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3f
    move-exception v4

    :goto_40
    if-eqz v1, :cond_45

    .line 943
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_45
    throw v4

    .line 942
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_46
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_40

    .line 939
    :catch_49
    move-exception v4

    move-object v0, v4

    goto :goto_32

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_4c
    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_25
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .registers 3
    .parameter "view"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 950
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 951
    return-void
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
    .registers 10
    .parameter "view"
    .parameter "out"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 956
    if-nez p2, :cond_8

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_77

    :cond_8
    new-instance v1, Landroid/view/ViewDebug$2;

    invoke-direct {v1, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v1

    move-wide v5, v1

    .line 983
    .local v5, durationMeasure:J
    :goto_12
    if-nez p2, :cond_1a

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_7b

    :cond_1a
    new-instance v1, Landroid/view/ViewDebug$3;

    invoke-direct {v1, p0}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/View;)V

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v1

    move-wide v3, v1

    .line 997
    .local v3, durationLayout:J
    :goto_24
    if-nez p2, :cond_32

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result p2

    .end local p2
    if-eqz p2, :cond_32

    iget p2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_7f

    :cond_32
    new-instance p2, Landroid/view/ViewDebug$4;

    invoke-direct {p2, p0}, Landroid/view/ViewDebug$4;-><init>(Landroid/view/View;)V

    invoke-static {p0, p2}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v1

    .line 1021
    .local v1, durationDraw:J
    :goto_3b
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1022
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1023
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1024
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1025
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1027
    instance-of p2, p0, Landroid/view/ViewGroup;

    if-eqz p2, :cond_82

    .line 1028
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object p2, v0

    .line 1029
    .local p2, group:Landroid/view/ViewGroup;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    .line 1030
    .local p0, count:I
    const/4 v1, 0x0

    .end local v3           #durationLayout:J
    .local v1, i:I
    :goto_6a
    if-ge v1, p0, :cond_82

    .line 1031
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 1030
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 956
    .end local v1           #i:I
    .end local v5           #durationMeasure:J
    .local p0, view:Landroid/view/View;
    .local p2, root:Z
    :cond_77
    const-wide/16 v1, 0x0

    move-wide v5, v1

    goto :goto_12

    .line 983
    .restart local v5       #durationMeasure:J
    :cond_7b
    const-wide/16 v1, 0x0

    move-wide v3, v1

    goto :goto_24

    .line 997
    .end local p2           #root:Z
    .restart local v3       #durationLayout:J
    :cond_7f
    const-wide/16 v1, 0x0

    goto :goto_3b

    .line 1034
    .end local v3           #durationLayout:J
    .end local p0           #view:Landroid/view/View;
    :cond_82
    return-void
.end method

.method private static profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .registers 12
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Landroid/view/ViewDebug$ViewOperation",
            "<TT;>;)J"
        }
    .end annotation

    .prologue
    .local p1, operation:Landroid/view/ViewDebug$ViewOperation;,"Landroid/view/ViewDebug$ViewOperation<TT;>;"
    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    const-string v9, "View"

    const-string v8, "Could not complete the profiling of the view "

    .line 1043
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1044
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [J

    .line 1046
    .local v0, duration:[J
    new-instance v3, Landroid/view/ViewDebug$5;

    invoke-direct {v3, p1, v0, v2}, Landroid/view/ViewDebug$5;-><init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1061
    const-wide/16 v3, 0xfa0

    :try_start_18
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 1062
    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not complete the profiling of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_38} :catch_3a

    move-wide v3, v6

    .line 1071
    :goto_39
    return-wide v3

    .line 1065
    :catch_3a
    move-exception v3

    move-object v1, v3

    .line 1066
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not complete the profiling of the view "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    move-wide v3, v6

    .line 1068
    goto :goto_39

    .line 1071
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_5d
    const/4 v3, 0x0

    aget-wide v3, v0, v3

    goto :goto_39
.end method

.method private static requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .parameter "root"
    .parameter "parameter"

    .prologue
    .line 913
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 914
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_e

    .line 915
    new-instance v1, Landroid/view/ViewDebug$1;

    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 921
    :cond_e
    return-void
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .registers 7
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1604
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1605
    .local v2, resources:Landroid/content/res/Resources;
    if-ltz p1, :cond_40

    .line 1607
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_24} :catch_26

    move-result-object v1

    .line 1615
    .local v1, fieldValue:Ljava/lang/String;
    :goto_25
    return-object v1

    .line 1609
    .end local v1           #fieldValue:Ljava/lang/String;
    :catch_26
    move-exception v3

    move-object v0, v3

    .line 1610
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id/0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1611
    .restart local v1       #fieldValue:Ljava/lang/String;
    goto :goto_25

    .line 1613
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #fieldValue:Ljava/lang/String;
    :cond_40
    const-string v1, "NO_ID"

    .restart local v1       #fieldValue:Ljava/lang/String;
    goto :goto_25
.end method

.method public static startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .registers 2
    .parameter "prefix"
    .parameter "view"

    .prologue
    .line 636
    return-void
.end method

.method public static startMotionEventTracing(Ljava/lang/String;Landroid/view/View;)V
    .registers 2
    .parameter "prefix"
    .parameter "view"

    .prologue
    .line 774
    return-void
.end method

.method public static startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .registers 2
    .parameter "prefix"
    .parameter "view"

    .prologue
    .line 497
    return-void
.end method

.method public static stopHierarchyTracing()V
    .registers 0

    .prologue
    .line 677
    return-void
.end method

.method public static stopMotionEventTracing()V
    .registers 0

    .prologue
    .line 817
    return-void
.end method

.method public static stopRecyclerTracing()V
    .registers 0

    .prologue
    .line 529
    return-void
.end method

.method public static trace(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/ViewDebug$MotionEventTraceType;)V
    .registers 7
    .parameter "view"
    .parameter "event"
    .parameter "type"

    .prologue
    .line 730
    sget-object v1, Landroid/view/ViewDebug;->sMotionEventTraces:Ljava/io/BufferedWriter;

    if-nez v1, :cond_5

    .line 746
    :goto_4
    return-void

    .line 735
    :cond_5
    :try_start_5
    sget-object v1, Landroid/view/ViewDebug;->sMotionEventTraces:Ljava/io/BufferedWriter;

    invoke-virtual {p2}, Landroid/view/ViewDebug$MotionEventTraceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 736
    sget-object v1, Landroid/view/ViewDebug;->sMotionEventTraces:Ljava/io/BufferedWriter;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 737
    sget-object v1, Landroid/view/ViewDebug;->sMotionEventTraces:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 738
    sget-object v1, Landroid/view/ViewDebug;->sMotionEventTraces:Ljava/io/BufferedWriter;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 739
    sget-object v1, Landroid/view/ViewDebug;->sMotionEventTraces:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 740
    sget-object v1, Landroid/view/ViewDebug;->sMotionEventTraces:Ljava/io/BufferedWriter;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 741
    sget-object v1, Landroid/view/ViewDebug;->sMotionEventTraces:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 742
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4b} :catch_4c

    goto :goto_4

    .line 743
    :catch_4c
    move-exception v1

    move-object v0, v1

    .line 744
    .local v0, e:Ljava/io/IOException;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while dumping trace of event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .registers 6
    .parameter "view"
    .parameter "type"

    .prologue
    .line 597
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    if-nez v1, :cond_5

    .line 611
    :goto_4
    return-void

    .line 602
    :cond_5
    :try_start_5
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Landroid/view/ViewDebug$HierarchyTraceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 603
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 604
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 605
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 606
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 607
    sget-object v1, Landroid/view/ViewDebug;->sHierarchyTraces:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3b} :catch_3c

    goto :goto_4

    .line 608
    :catch_3c
    move-exception v1

    move-object v0, v1

    .line 609
    .local v0, e:Ljava/io/IOException;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while dumping trace of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static varargs trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .registers 6
    .parameter "view"
    .parameter "type"
    .parameter "parameters"

    .prologue
    .line 456
    sget-object v2, Landroid/view/ViewDebug;->sRecyclerOwnerView:Landroid/view/View;

    if-eqz v2, :cond_8

    sget-object v2, Landroid/view/ViewDebug;->sRecyclerViews:Ljava/util/List;

    if-nez v2, :cond_9

    .line 473
    :cond_8
    :goto_8
    return-void

    .line 460
    :cond_9
    sget-object v2, Landroid/view/ViewDebug;->sRecyclerViews:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 461
    sget-object v2, Landroid/view/ViewDebug;->sRecyclerViews:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_16
    sget-object v2, Landroid/view/ViewDebug;->sRecyclerViews:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 466
    .local v0, index:I
    new-instance v1, Landroid/view/ViewDebug$RecyclerTrace;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/ViewDebug$RecyclerTrace;-><init>(Landroid/view/ViewDebug$1;)V

    .line 467
    .local v1, trace:Landroid/view/ViewDebug$RecyclerTrace;
    iput v0, v1, Landroid/view/ViewDebug$RecyclerTrace;->view:I

    .line 468
    iput-object p1, v1, Landroid/view/ViewDebug$RecyclerTrace;->type:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 469
    const/4 v2, 0x0

    aget v2, p2, v2

    iput v2, v1, Landroid/view/ViewDebug$RecyclerTrace;->position:I

    .line 470
    const/4 v2, 0x1

    aget v2, p2, v2

    iput v2, v1, Landroid/view/ViewDebug$RecyclerTrace;->indexOnScreen:I

    .line 472
    sget-object v2, Landroid/view/ViewDebug;->sRecyclerTraces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private static writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "out"
    .parameter "prefix"
    .parameter "name"
    .parameter "suffix"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1525
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1528
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1529
    invoke-static {p0, p4}, Landroid/view/ViewDebug;->writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    .line 1530
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 1531
    return-void
.end method

.method private static writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .registers 6
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1619
    if-eqz p1, :cond_22

    .line 1620
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1621
    .local v0, output:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1622
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1623
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1627
    .end local v0           #output:Ljava/lang/String;
    :goto_21
    return-void

    .line 1625
    :cond_22
    const-string v1, "4,null"

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_21
.end method

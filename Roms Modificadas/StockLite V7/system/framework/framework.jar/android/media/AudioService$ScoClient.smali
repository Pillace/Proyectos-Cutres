.class Landroid/media/AudioService$ScoClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mStartcount:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .registers 4
    .parameter
    .parameter "cb"

    .prologue
    .line 1059
    iput-object p1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    iput-object p2, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    .line 1061
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 1062
    return-void
.end method

.method private requestScoState(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1146
    invoke-virtual {p0}, Landroid/media/AudioService$ScoClient;->totalCount()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1100(Landroid/media/AudioService;)I

    move-result v0

    if-nez v0, :cond_22

    .line 1149
    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    .line 1150
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition()Z

    .line 1155
    :cond_22
    :goto_22
    return-void

    .line 1152
    :cond_23
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition()Z

    goto :goto_22
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    const-string v1, "AudioService"

    .line 1065
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1066
    :try_start_9
    const-string v2, "AudioService"

    const-string v3, "SCO client died"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1068
    .local v0, index:I
    if-gez v0, :cond_26

    .line 1069
    const-string v2, "AudioService"

    const-string/jumbo v3, "unregistered SCO client died"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :goto_24
    monitor-exit v1

    .line 1075
    return-void

    .line 1071
    :cond_26
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 1072
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_24

    .line 1074
    .end local v0           #index:I
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw v2
.end method

.method public clearCount(Z)V
    .registers 7
    .parameter "stopSco"

    .prologue
    .line 1111
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1112
    :try_start_7
    iget v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_3f

    if-eqz v2, :cond_11

    .line 1114
    :try_start_b
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_3f
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_11} :catch_1c

    .line 1119
    :cond_11
    :goto_11
    const/4 v2, 0x0

    :try_start_12
    iput v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 1120
    if-eqz p1, :cond_1a

    .line 1121
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/AudioService$ScoClient;->requestScoState(I)V

    .line 1123
    :cond_1a
    monitor-exit v1

    .line 1124
    return-void

    .line 1115
    :catch_1c
    move-exception v2

    move-object v0, v2

    .line 1116
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCount() mStartcount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != 0 but not registered to binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1123
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catchall_3f
    move-exception v2

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_12 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public decCount()V
    .registers 5

    .prologue
    const-string v1, "AudioService"

    .line 1093
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1094
    :try_start_9
    iget v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    if-nez v2, :cond_16

    .line 1095
    const-string v2, "AudioService"

    const-string v3, "ScoClient.decCount() already 0"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :goto_14
    monitor-exit v1

    .line 1108
    return-void

    .line 1097
    :cond_16
    iget v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 1098
    iget v2, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_2b

    if-nez v2, :cond_26

    .line 1100
    :try_start_20
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_2b
    .catch Ljava/util/NoSuchElementException; {:try_start_20 .. :try_end_26} :catch_2e

    .line 1105
    :cond_26
    :goto_26
    const/4 v2, 0x0

    :try_start_27
    invoke-direct {p0, v2}, Landroid/media/AudioService$ScoClient;->requestScoState(I)V

    goto :goto_14

    .line 1107
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2b

    throw v2

    .line 1101
    :catch_2e
    move-exception v2

    move-object v0, v2

    .line 1102
    .local v0, e:Ljava/util/NoSuchElementException;
    :try_start_30
    const-string v2, "AudioService"

    const-string v3, "decCount() going to 0 but not registered to binder"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_2b

    goto :goto_26
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1127
    iget v0, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    return v0
.end method

.method public incCount()V
    .registers 4

    .prologue
    .line 1078
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1079
    const/4 v1, 0x1

    :try_start_8
    invoke-direct {p0, v1}, Landroid/media/AudioService$ScoClient;->requestScoState(I)V

    .line 1080
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1d

    if-nez v1, :cond_15

    .line 1082
    :try_start_f
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1d
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_20

    .line 1088
    :cond_15
    :goto_15
    :try_start_15
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 1089
    monitor-exit v0

    .line 1090
    return-void

    .line 1089
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_1d

    throw v1

    .line 1083
    :catch_20
    move-exception v1

    goto :goto_15
.end method

.method public totalCount()I
    .registers 6

    .prologue
    .line 1135
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v3}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, count:I
    :try_start_8
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v3}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1138
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v2, :cond_29

    .line 1139
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-static {v3}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$ScoClient;

    invoke-virtual {v3}, Landroid/media/AudioService$ScoClient;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 1138
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1141
    :cond_29
    monitor-exit v4

    return v0

    .line 1142
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v3
.end method

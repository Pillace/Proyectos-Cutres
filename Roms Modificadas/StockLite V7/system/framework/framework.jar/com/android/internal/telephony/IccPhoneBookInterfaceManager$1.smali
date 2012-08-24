.class Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 70
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1ee

    .line 158
    :goto_7
    return-void

    .line 72
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 73
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 74
    :try_start_11
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_60

    .line 75
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_RECORD_SIZE Size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 85
    :cond_60
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit v2

    goto :goto_7

    :catchall_69
    move-exception v1

    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_11 .. :try_end_6b} :catchall_69

    throw v1

    .line 90
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_6c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 91
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 92
    :try_start_75
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_e8

    .line 93
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_RECORD_INFO_DONEtotal cnt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "used  cnt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "first index"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "text max "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "number max "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordInfo:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 104
    :cond_e8
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 105
    monitor-exit v2

    goto/16 :goto_7

    :catchall_f2
    move-exception v1

    monitor-exit v2
    :try_end_f4
    .catchall {:try_start_75 .. :try_end_f4} :catchall_f2

    throw v1

    .line 108
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_f5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 109
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 110
    :try_start_fe
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_124

    move v3, v5

    :goto_105
    iput-boolean v3, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-boolean v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    if-eqz v1, :cond_117

    .line 112
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    iget v1, v1, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    iput v1, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->returnIndex:I

    .line 114
    :cond_117
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 115
    monitor-exit v2

    goto/16 :goto_7

    :catchall_121
    move-exception v1

    monitor-exit v2
    :try_end_123
    .catchall {:try_start_fe .. :try_end_123} :catchall_121

    throw v1

    :cond_124
    move v3, v4

    .line 110
    goto :goto_105

    .line 118
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_126
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 119
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 120
    :try_start_12f
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_148

    .line 121
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    .line 129
    :cond_13b
    :goto_13b
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v2

    goto/16 :goto_7

    :catchall_145
    move-exception v1

    monitor-exit v2
    :try_end_147
    .catchall {:try_start_12f .. :try_end_147} :catchall_145

    throw v1

    .line 124
    :cond_148
    :try_start_148
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v3, "Cannot load ADN records"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    if-eqz v1, :cond_13b

    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_15c
    .catchall {:try_start_148 .. :try_end_15c} :catchall_145

    goto :goto_13b

    .line 134
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_15d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 135
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_166
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_198

    .line 137
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimPhonebookCapaInfo ar.result length = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v4, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    invoke-direct {v4, v1}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;-><init>([I)V

    iput-object v4, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mUsimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    .line 142
    :cond_198
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit v2

    goto/16 :goto_7

    :catchall_1a2
    move-exception v1

    monitor-exit v2
    :try_end_1a4
    .catchall {:try_start_166 .. :try_end_1a4} :catchall_1a2

    throw v1

    .line 147
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1a5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 148
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 149
    :try_start_1ae
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1e0

    .line 150
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get SIM file status info : = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v5, 0x0

    aget v1, v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v4, 0x0

    aget v1, v1, v4

    iput v1, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimFileStatusInfo:I

    .line 154
    :cond_1e0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 155
    monitor-exit v2

    goto/16 :goto_7

    :catchall_1ea
    move-exception v1

    monitor-exit v2
    :try_end_1ec
    .catchall {:try_start_1ae .. :try_end_1ec} :catchall_1ea

    throw v1

    .line 70
    nop

    :pswitch_data_1ee
    .packed-switch 0x1
        :pswitch_8
        :pswitch_126
        :pswitch_f5
        :pswitch_15d
        :pswitch_6c
        :pswitch_1a5
    .end packed-switch
.end method

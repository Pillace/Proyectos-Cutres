.class Landroid/webkit/WebViewCore$EventHub$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewCore$EventHub;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$EventHub;)V
    .registers 2
    .parameter

    .prologue
    .line 1110
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 78
    .parameter "msg"

    .prologue
    .line 1122
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    sparse-switch v5, :sswitch_data_e4e

    .line 1917
    .end local p0
    .end local p1
    :cond_8
    :goto_8
    return-void

    .line 1124
    .restart local p0
    .restart local p1
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)V

    goto :goto_8

    .line 1130
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    monitor-enter v5

    .line 1131
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/BrowserFrame;->destroy()V

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$702(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->onDestroyed()V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$902(Landroid/webkit/WebViewCore;I)I

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/webkit/WebViewCore;->access$1002(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 1136
    monitor-exit v5

    goto :goto_8

    :catchall_5b
    move-exception v6

    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_1c .. :try_end_5d} :catchall_5b

    throw v6

    .line 1140
    :sswitch_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1141
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v59, v0

    .line 1142
    .local v59, nodePointer:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1100(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v54

    .line 1144
    .local v54, label:Ljava/lang/String;
    if-eqz v54, :cond_8

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x7d

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v59

    move v3, v7

    move-object/from16 v4, v54

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    .line 1153
    .end local v54           #label:Ljava/lang/String;
    .end local v59           #nodePointer:I
    :sswitch_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1157
    :sswitch_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;FI)V

    goto/16 :goto_8

    .line 1162
    .restart local p0
    :sswitch_d6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Landroid/webkit/WebViewCore$GetUrlData;

    .line 1163
    .local v60, param:Landroid/webkit/WebViewCore$GetUrlData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v60

    iget-object v0, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    move-object v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1400(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_8

    .line 1168
    .end local v60           #param:Landroid/webkit/WebViewCore$GetUrlData;
    :sswitch_f4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Landroid/webkit/WebViewCore$PostUrlData;

    .line 1169
    .local v60, param:Landroid/webkit/WebViewCore$PostUrlData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v60

    iget-object v0, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/BrowserFrame;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_8

    .line 1173
    .end local v60           #param:Landroid/webkit/WebViewCore$PostUrlData;
    :sswitch_116
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/webkit/WebViewCore$BaseUrlData;

    .line 1174
    .local v55, loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    move-object v6, v0

    .line 1175
    .local v6, baseUrl:Ljava/lang/String;
    if-eqz v6, :cond_16f

    .line 1176
    const/16 v5, 0x3a

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v48

    .line 1177
    .local v48, i:I
    if-lez v48, :cond_16f

    .line 1188
    const/4 v5, 0x0

    move-object v0, v6

    move v1, v5

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v69

    .line 1189
    .local v69, scheme:Ljava/lang/String;
    const-string v5, "http"

    move-object/from16 v0, v69

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16f

    const-string v5, "ftp"

    move-object/from16 v0, v69

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16f

    const-string v5, "about"

    move-object/from16 v0, v69

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16f

    const-string v5, "javascript"

    move-object/from16 v0, v69

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16f

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$1500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    .line 1197
    .end local v48           #i:I
    .end local v69           #scheme:Ljava/lang/String;
    :cond_16f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1209
    .end local v6           #baseUrl:Ljava/lang/String;
    .end local v55           #loadParams:Landroid/webkit/WebViewCore$BaseUrlData;
    :sswitch_193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v5

    if-eqz v5, :cond_1c3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v5

    if-nez v5, :cond_1c3

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 1214
    :cond_1c3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->stopLoading()V

    goto/16 :goto_8

    .line 1218
    :sswitch_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_8

    .line 1222
    :sswitch_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_8

    .line 1226
    .restart local p0
    :sswitch_1f9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$1600(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_8

    .line 1230
    .restart local p0
    :sswitch_212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$1700(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_8

    .line 1234
    :sswitch_228
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebView$ViewSizeData;

    .line 1236
    .local v41, data:Landroid/webkit/WebView$ViewSizeData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    move v8, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    move v9, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    move v10, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    move v11, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    move v12, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    move v13, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    move v14, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/webkit/WebView$ViewSizeData;->mNeedAnchorDiff:Z

    move v15, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mViewportLeft:I

    move/from16 v16, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$ViewSizeData;->mViewportTop:I

    move/from16 v17, v0

    invoke-static/range {v7 .. v17}, Landroid/webkit/WebViewCore;->access$1800(Landroid/webkit/WebViewCore;IIIFIIZZII)V

    goto/16 :goto_8

    .line 1248
    .end local v41           #data:Landroid/webkit/WebView$ViewSizeData;
    :sswitch_270
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebView$PluginUpdateData;

    .line 1251
    .local v41, data:Landroid/webkit/WebView$PluginUpdateData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mMode:I

    move v8, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mViewLeft:I

    move v9, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mViewTop:I

    move v10, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mViewRight:I

    move v11, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mViewBottom:I

    move v12, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mScale:F

    move v13, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mAnchorX:I

    move v14, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/webkit/WebView$PluginUpdateData;->mAnchorY:I

    move v15, v0

    invoke-static/range {v7 .. v15}, Landroid/webkit/WebViewCore;->access$1900(Landroid/webkit/WebViewCore;IIIIIFII)V

    goto/16 :goto_8

    .line 1259
    .end local v41           #data:Landroid/webkit/WebView$PluginUpdateData;
    :sswitch_2ac
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/graphics/Point;

    .line 1260
    .local v62, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v7, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v8, v0

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$2000(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_8

    .line 1264
    .end local v62           #pt:Landroid/graphics/Point;
    :sswitch_2cf
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/graphics/Rect;

    .line 1265
    .local v63, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v63

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {v63 .. v63}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v63 .. v63}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$2100(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_8

    .line 1272
    .end local v63           #r:Landroid/graphics/Rect;
    :sswitch_2f5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->committed()Z

    move-result v5

    if-nez v5, :cond_330

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_330

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->loadType()I

    move-result v5

    if-nez v5, :cond_330

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_8

    .line 1277
    :cond_330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/BrowserFrame;->goBackOrForward(I)V

    goto/16 :goto_8

    .line 1282
    :sswitch_345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->stopLoading()V

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2200(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 1287
    :sswitch_360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebViewCore$EventHub;->access$2400(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore$EventHub;->access$2302(Landroid/webkit/WebViewCore$EventHub;I)I

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore$EventHub;->access$2400(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1290
    invoke-static {}, Landroid/webkit/WebViewCore;->pauseTimers()V

    .line 1291
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v5

    const/16 v6, 0x6f

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 1296
    :sswitch_391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore$EventHub;->access$2400(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebViewCore$EventHub;->access$2300(Landroid/webkit/WebViewCore$EventHub;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1297
    invoke-static {}, Landroid/webkit/WebViewCore;->resumeTimers()V

    .line 1298
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v5

    const/16 v6, 0x70

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 1303
    :sswitch_3b4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2500(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1307
    :sswitch_3c0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2600(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1311
    :sswitch_3cc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;Z)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$2800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1318
    :sswitch_3e3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELKEY_SIML_FOR_COUNT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2900(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 1324
    :sswitch_411
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebView$ResultTransport;

    .line 1325
    .local v26, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v61

    .line 1326
    .local v61, params:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object p1, v61, v5

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 1327
    .local v38, count:I
    const/4 v5, 0x1

    aget-object p1, v61, v5

    check-cast p1, Landroid/webkit/WebView$CursorDirection;

    sget-object v5, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    move-object/from16 v0, p1

    move-object v1, v5

    if-ne v0, v1, :cond_456

    const/4 v5, 0x1

    move/from16 v50, v5

    .line 1328
    .local v50, isBefore:Z
    :goto_435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move/from16 v1, v38

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$3000(Landroid/webkit/WebViewCore;IZ)Ljava/lang/String;

    move-result-object v71

    .line 1330
    .local v71, str:Ljava/lang/String;
    monitor-enter v26

    .line 1332
    :try_start_446
    move-object/from16 v0, v26

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1333
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 1335
    monitor-exit v26

    goto/16 :goto_8

    :catchall_453
    move-exception v5

    monitor-exit v26
    :try_end_455
    .catchall {:try_start_446 .. :try_end_455} :catchall_453

    throw v5

    .line 1327
    .end local v50           #isBefore:Z
    .end local v71           #str:Ljava/lang/String;
    :cond_456
    const/4 v5, 0x0

    move/from16 v50, v5

    goto :goto_435

    .line 1342
    .end local v26           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v38           #count:I
    .end local v61           #params:[Ljava/lang/Object;
    .restart local p1
    :sswitch_45a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$3100(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_8

    .line 1347
    :sswitch_470
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/webkit/WebView$ResultTransport;

    .line 1351
    .local v21, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3200(Landroid/webkit/WebViewCore;)Landroid/graphics/Point;

    move-result-object v67

    .line 1353
    .local v67, result:Landroid/graphics/Point;
    monitor-enter v21

    .line 1355
    :try_start_484
    move-object/from16 v0, v21

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1356
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notify()V

    .line 1358
    monitor-exit v21

    goto/16 :goto_8

    :catchall_491
    move-exception v5

    monitor-exit v21
    :try_end_493
    .catchall {:try_start_484 .. :try_end_493} :catchall_491

    throw v5

    .line 1364
    .end local v21           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    .end local v67           #result:Landroid/graphics/Point;
    :sswitch_494
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebView$ResultTransport;

    .line 1365
    .restart local v26       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3300(Landroid/webkit/WebViewCore;)Ljava/lang/String;

    move-result-object v71

    .line 1367
    .restart local v71       #str:Ljava/lang/String;
    monitor-enter v26

    .line 1369
    :try_start_4a8
    move-object/from16 v0, v26

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1370
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 1372
    monitor-exit v26

    goto/16 :goto_8

    :catchall_4b5
    move-exception v5

    monitor-exit v26
    :try_end_4b7
    .catchall {:try_start_4a8 .. :try_end_4b7} :catchall_4b5

    throw v5

    .line 1378
    .end local v26           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v71           #str:Ljava/lang/String;
    :sswitch_4b8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkit/WebView$ResultTransport;

    .line 1379
    .restart local v26       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3400(Landroid/webkit/WebViewCore;)Ljava/lang/String;

    move-result-object v71

    .line 1381
    .restart local v71       #str:Ljava/lang/String;
    monitor-enter v26

    .line 1383
    :try_start_4cc
    move-object/from16 v0, v26

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1384
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 1386
    monitor-exit v26

    goto/16 :goto_8

    :catchall_4d9
    move-exception v5

    monitor-exit v26
    :try_end_4db
    .catchall {:try_start_4cc .. :try_end_4db} :catchall_4d9

    throw v5

    .line 1391
    .end local v26           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v71           #str:Ljava/lang/String;
    :sswitch_4dc
    const/16 v51, 0x0

    .line 1392
    .local v51, isBodyEmpty:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebView$ResultTransport;

    .line 1393
    .local v24, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3500(Landroid/webkit/WebViewCore;)Z

    move-result v51

    .line 1395
    monitor-enter v24

    .line 1397
    :try_start_4f2
    invoke-static/range {v51 .. v51}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1398
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 1400
    monitor-exit v24

    goto/16 :goto_8

    :catchall_502
    move-exception v5

    monitor-exit v24
    :try_end_504
    .catchall {:try_start_4f2 .. :try_end_504} :catchall_502

    throw v5

    .line 1405
    .end local v24           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v51           #isBodyEmpty:Z
    :sswitch_505
    const/16 v70, -0x1

    .line 1406
    .local v70, selectedType:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$ResultTransport;

    .line 1407
    .local v25, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3600(Landroid/webkit/WebViewCore;)I

    move-result v70

    .line 1409
    monitor-enter v25

    .line 1411
    :try_start_51b
    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1412
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    .line 1414
    monitor-exit v25

    goto/16 :goto_8

    :catchall_52b
    move-exception v5

    monitor-exit v25
    :try_end_52d
    .catchall {:try_start_51b .. :try_end_52d} :catchall_52b

    throw v5

    .line 1421
    .end local v25           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v70           #selectedType:I
    :sswitch_52e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/webkit/WebView$ResultTransport;

    .line 1422
    .local v22, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/webkit/WebView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v61

    .line 1423
    .restart local v61       #params:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v46, v61, v5

    check-cast v46, Ljava/lang/Boolean;

    .line 1424
    .local v46, giveContentRect:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$3700(Landroid/webkit/WebViewCore;Z)Landroid/graphics/Rect;

    move-result-object v40

    .line 1426
    .local v40, cursurRect:Landroid/graphics/Rect;
    monitor-enter v22

    .line 1428
    :try_start_54f
    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1429
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notify()V

    .line 1431
    monitor-exit v22

    goto/16 :goto_8

    :catchall_55c
    move-exception v5

    monitor-exit v22
    :try_end_55e
    .catchall {:try_start_54f .. :try_end_55e} :catchall_55c

    throw v5

    .line 1438
    .end local v22           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    .end local v40           #cursurRect:Landroid/graphics/Rect;
    .end local v46           #giveContentRect:Ljava/lang/Boolean;
    .end local v61           #params:[Ljava/lang/Object;
    :sswitch_55f
    const/16 v52, 0x0

    .line 1439
    .local v52, isCommandSuces:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/webkit/WebView$CmdVal;

    .line 1440
    .local v37, cmdVal:Landroid/webkit/WebView$CmdVal;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$CmdVal;->command:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/webkit/WebView$CmdVal;->value:Ljava/lang/String;

    move-object v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$3800(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    .line 1441
    monitor-enter v37

    .line 1443
    :try_start_57f
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notify()V

    .line 1445
    monitor-exit v37

    goto/16 :goto_8

    :catchall_585
    move-exception v5

    monitor-exit v37
    :try_end_587
    .catchall {:try_start_57f .. :try_end_587} :catchall_585

    throw v5

    .line 1450
    .end local v37           #cmdVal:Landroid/webkit/WebView$CmdVal;
    .end local v52           #isCommandSuces:Z
    :sswitch_588
    const/16 v31, 0x0

    .line 1451
    .local v31, canUndo:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebView$ResultTransport;

    .line 1452
    .restart local v24       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$3900(Landroid/webkit/WebViewCore;)Z

    move-result v31

    .line 1453
    monitor-enter v24

    .line 1455
    :try_start_59e
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1456
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 1458
    monitor-exit v24

    goto/16 :goto_8

    :catchall_5ae
    move-exception v5

    monitor-exit v24
    :try_end_5b0
    .catchall {:try_start_59e .. :try_end_5b0} :catchall_5ae

    throw v5

    .line 1464
    .end local v24           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v31           #canUndo:Z
    :sswitch_5b1
    const/16 v30, 0x0

    .line 1465
    .local v30, canRedo:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkit/WebView$ResultTransport;

    .line 1466
    .restart local v24       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4000(Landroid/webkit/WebViewCore;)Z

    move-result v30

    .line 1467
    monitor-enter v24

    .line 1469
    :try_start_5c7
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1470
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 1472
    monitor-exit v24

    goto/16 :goto_8

    :catchall_5d7
    move-exception v5

    monitor-exit v24
    :try_end_5d9
    .catchall {:try_start_5c7 .. :try_end_5d9} :catchall_5d7

    throw v5

    .line 1476
    .end local v24           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v30           #canRedo:Z
    :sswitch_5da
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1482
    :sswitch_5e6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v75, v0

    check-cast v75, Ljava/lang/String;

    .line 1483
    .local v75, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move-object/from16 v1, v75

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$4200(Landroid/webkit/WebViewCore;Ljava/lang/String;)Z

    goto/16 :goto_8

    .line 1488
    .end local v75           #url:Ljava/lang/String;
    :sswitch_5fd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4300(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 1492
    :sswitch_60a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkit/WebView$ResultTransport;

    .line 1493
    .local v23, arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4400(Landroid/webkit/WebViewCore;)Landroid/webkit/WebHTMLMarkupData;

    move-result-object v71

    .line 1495
    .local v71, str:Landroid/webkit/WebHTMLMarkupData;
    monitor-enter v23

    .line 1497
    :try_start_61e
    move-object/from16 v0, v23

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1498
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notify()V

    .line 1500
    monitor-exit v23

    goto/16 :goto_8

    :catchall_62b
    move-exception v5

    monitor-exit v23
    :try_end_62d
    .catchall {:try_start_61e .. :try_end_62d} :catchall_62b

    throw v5

    .line 1505
    .end local v23           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    .end local v71           #str:Landroid/webkit/WebHTMLMarkupData;
    :sswitch_62e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_643

    const/4 v6, 0x1

    :goto_63e
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4500(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_8

    :cond_643
    const/4 v6, 0x0

    goto :goto_63e

    .line 1509
    :sswitch_645
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, Landroid/graphics/Point;

    .line 1510
    .local v64, recTwoIntObj:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v64

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$4600(Landroid/webkit/WebViewCore;II)V

    .line 1511
    monitor-enter v64

    .line 1513
    :try_start_662
    invoke-virtual/range {v64 .. v64}, Ljava/lang/Object;->notify()V

    .line 1515
    monitor-exit v64

    goto/16 :goto_8

    :catchall_668
    move-exception v5

    monitor-exit v64
    :try_end_66a
    .catchall {:try_start_662 .. :try_end_66a} :catchall_668

    throw v5

    .line 1523
    .end local v64           #recTwoIntObj:Landroid/graphics/Point;
    :sswitch_66b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$4700(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_8

    .line 1528
    :sswitch_681
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, Landroid/graphics/Point;

    .line 1529
    .restart local v64       #recTwoIntObj:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v64

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$4800(Landroid/webkit/WebViewCore;II)V

    .line 1530
    monitor-enter v64

    .line 1532
    :try_start_69e
    invoke-virtual/range {v64 .. v64}, Ljava/lang/Object;->notify()V

    .line 1534
    monitor-exit v64

    goto/16 :goto_8

    :catchall_6a4
    move-exception v5

    monitor-exit v64
    :try_end_6a6
    .catchall {:try_start_69e .. :try_end_6a6} :catchall_6a4

    throw v5

    .line 1541
    .end local v64           #recTwoIntObj:Landroid/graphics/Point;
    :sswitch_6a7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$4900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1546
    :sswitch_6b3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1549
    :sswitch_6bf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5100(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1554
    :sswitch_6cb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5200(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1558
    :sswitch_6d7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$5300(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_8

    .line 1562
    :sswitch_6ed
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$ResultTransport;

    .line 1563
    .restart local v25       #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v67, -0x1

    .line 1564
    .local v67, result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5400(Landroid/webkit/WebViewCore;)I

    move-result v67

    .line 1566
    monitor-enter v25

    .line 1568
    :try_start_703
    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 1569
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    .line 1571
    monitor-exit v25

    goto/16 :goto_8

    :catchall_713
    move-exception v5

    monitor-exit v25
    :try_end_715
    .catchall {:try_start_703 .. :try_end_715} :catchall_713

    throw v5

    .line 1576
    .end local v25           #arg:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v67           #result:I
    :sswitch_716
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/webkit/WebViewCore$EditableParams;

    .line 1577
    .local v43, editableParams:Landroid/webkit/WebViewCore$EditableParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/webkit/WebViewCore$EditableParams;->content:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$EditableParams;->newCursorPosition:I

    move v7, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$EditableParams;->composing:Z

    move v8, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/webkit/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    move-object v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$5500(Landroid/webkit/WebViewCore;Ljava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;

    move-result-object v67

    .line 1578
    .local v67, result:Landroid/graphics/Point;
    monitor-enter v43

    .line 1579
    :try_start_73e
    move-object/from16 v0, v67

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v43

    iput v0, v1, Landroid/webkit/WebViewCore$EditableParams;->startOffset:I

    .line 1580
    move-object/from16 v0, v67

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v43

    iput v0, v1, Landroid/webkit/WebViewCore$EditableParams;->endOffset:I

    .line 1581
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1582
    monitor-exit v43

    goto/16 :goto_8

    :catchall_758
    move-exception v5

    monitor-exit v43
    :try_end_75a
    .catchall {:try_start_73e .. :try_end_75a} :catchall_758

    throw v5

    .line 1589
    .end local v43           #editableParams:Landroid/webkit/WebViewCore$EditableParams;
    .end local v67           #result:Landroid/graphics/Point;
    :sswitch_75b
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_767

    .line 1590
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1593
    :cond_767
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_777

    const/4 v6, 0x1

    :goto_772
    invoke-virtual {v5, v6}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_8

    :cond_777
    const/4 v6, 0x0

    goto :goto_772

    .line 1598
    :sswitch_779
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_785

    .line 1599
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1602
    :cond_785
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Ljava/util/Map;

    .line 1603
    .local v56, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const-string/jumbo v6, "type"

    move-object/from16 v0, v56

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string/jumbo v6, "subtype"

    move-object/from16 v0, v56

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/JWebCoreJavaBridge;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1608
    .end local v56           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0
    .restart local p1
    :sswitch_7b1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7c6

    const/4 v6, 0x1

    :goto_7c1
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$2700(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_8

    :cond_7c6
    const/4 v6, 0x0

    goto :goto_7c1

    .line 1612
    :sswitch_7c8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$5600(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v6}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v6

    iget v6, v6, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebBackForwardList;->close(I)V

    goto/16 :goto_8

    .line 1617
    :sswitch_7e9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v66, v0

    check-cast v66, Landroid/webkit/WebViewCore$ReplaceTextData;

    .line 1618
    .local v66, rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v9, v0

    move-object/from16 v0, v66

    iget-object v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v66

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    move v11, v0

    move-object/from16 v0, v66

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    move v12, v0

    move-object/from16 v0, v66

    iget v0, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    move v13, v0

    invoke-static/range {v7 .. v13}, Landroid/webkit/WebViewCore;->access$5700(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V

    goto/16 :goto_8

    .line 1624
    .end local v66           #rep:Landroid/webkit/WebViewCore$ReplaceTextData;
    :sswitch_81b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Landroid/webkit/WebViewCore$JSKeyData;

    .line 1625
    .local v53, jsData:Landroid/webkit/WebViewCore$JSKeyData;
    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    move-object/from16 v44, v0

    .line 1626
    .local v44, evt:Landroid/view/KeyEvent;
    invoke-virtual/range {v44 .. v44}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 1627
    .local v10, keyCode:I
    invoke-virtual/range {v44 .. v44}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v11

    .line 1628
    .local v11, keyValue:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    .line 1629
    .local v8, generation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v7, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual/range {v44 .. v44}, Landroid/view/KeyEvent;->isDown()Z

    move-result v12

    invoke-virtual/range {v44 .. v44}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v13

    invoke-virtual/range {v44 .. v44}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v14

    invoke-virtual/range {v44 .. v44}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v15

    invoke-static/range {v7 .. v15}, Landroid/webkit/WebViewCore;->access$5800(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V

    goto/16 :goto_8

    .line 1640
    .end local v8           #generation:I
    .end local v10           #keyCode:I
    .end local v11           #keyValue:I
    .end local v44           #evt:Landroid/view/KeyEvent;
    .end local v53           #jsData:Landroid/webkit/WebViewCore$JSKeyData;
    :sswitch_857
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebViewCore$CursorData;

    .line 1641
    .local v28, cDat:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v28

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$5900(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 1646
    .end local v28           #cDat:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$6000(Landroid/webkit/WebViewCore;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/Network;->clearUserSslPrefTable()V

    goto/16 :goto_8

    .line 1651
    :sswitch_884
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Landroid/webkit/WebViewCore$TouchUpData;

    .line 1652
    .local v74, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v12, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    move v13, v0

    move-object/from16 v0, v74

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    move v14, v0

    move-object/from16 v0, v74

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    move v15, v0

    move-object/from16 v0, v74

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    move/from16 v16, v0

    move-object/from16 v0, v74

    iget v0, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    move/from16 v17, v0

    invoke-static/range {v12 .. v17}, Landroid/webkit/WebViewCore;->access$6100(Landroid/webkit/WebViewCore;IIIII)V

    goto/16 :goto_8

    .line 1658
    .end local v74           #touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    :sswitch_8b3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Landroid/webkit/WebViewCore$TouchEventData;

    .line 1659
    .local v72, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x73

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v8, v0

    iget-object v8, v8, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v9, v0

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    move v10, v0

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    move v11, v0

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move v12, v0

    invoke-static {v8, v9, v10, v11, v12}, Landroid/webkit/WebViewCore;->access$6200(Landroid/webkit/WebViewCore;IIII)Z

    move-result v8

    if-eqz v8, :cond_903

    const/4 v8, 0x1

    :goto_8f1
    move-object/from16 v0, v72

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move v9, v0

    if-eqz v9, :cond_905

    move-object/from16 v9, v72

    :goto_8fa
    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    :cond_903
    const/4 v8, 0x0

    goto :goto_8f1

    :cond_905
    const/4 v9, 0x0

    goto :goto_8fa

    .line 1670
    .end local v72           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_907
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_91c

    const/4 v6, 0x1

    :goto_917
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$6300(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_8

    :cond_91c
    const/4 v6, 0x0

    goto :goto_917

    .line 1674
    :sswitch_91e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Landroid/webkit/WebViewCore$JSInterfaceData;

    .line 1675
    .local v53, jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    move-object v6, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/BrowserFrame;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1680
    .end local v53           #jsData:Landroid/webkit/WebViewCore$JSInterfaceData;
    :sswitch_940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/BrowserFrame;->externalRepresentation(Landroid/os/Message;)V

    goto/16 :goto_8

    .line 1685
    .restart local p0
    :sswitch_95b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/BrowserFrame;->documentAsText(Landroid/os/Message;)V

    goto/16 :goto_8

    .line 1689
    .restart local p0
    :sswitch_976
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/webkit/WebViewCore$CursorData;

    .line 1690
    .local v45, focusData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v45

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mNode:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$6400(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_8

    .line 1694
    .end local v45           #focusData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_994
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebViewCore$CursorData;

    .line 1695
    .local v39, cursorData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move v7, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    move v8, v0

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$6500(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_8

    .line 1700
    .end local v39           #cursorData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_9b7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/WebViewCore$CursorData;

    .line 1701
    .local v29, cData:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    move v6, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v7, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    move v8, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    move v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$6600(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_8

    .line 1707
    .end local v29           #cData:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_9df
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/os/Message;

    .line 1708
    .local v47, hrefMsg:Landroid/os/Message;
    invoke-virtual/range {v47 .. v47}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "url"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v9, v0

    invoke-static {v7, v8, v9}, Landroid/webkit/WebViewCore;->access$6700(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    invoke-virtual/range {v47 .. v47}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v9, v0

    invoke-static {v7, v8, v9}, Landroid/webkit/WebViewCore;->access$6800(Landroid/webkit/WebViewCore;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    invoke-virtual/range {v47 .. v47}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    .line 1717
    .end local v47           #hrefMsg:Landroid/os/Message;
    :sswitch_a2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$6900(Landroid/webkit/WebViewCore;)V

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_a4f

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->postInvalidate()V

    .line 1722
    :cond_a4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$7000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1726
    :sswitch_a5b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Landroid/os/Message;

    .line 1727
    .local v49, imageResult:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->documentHasImages()Z

    move-result v5

    if-eqz v5, :cond_a7f

    const/4 v5, 0x1

    :goto_a75
    move v0, v5

    move-object/from16 v1, v49

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1729
    invoke-virtual/range {v49 .. v49}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    .line 1727
    :cond_a7f
    const/4 v5, 0x0

    goto :goto_a75

    .line 1733
    .end local v49           #imageResult:Landroid/os/Message;
    :sswitch_a81
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/webkit/WebViewCore$TextSelectionData;

    .line 1735
    .local v42, deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    move v6, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$7100(Landroid/webkit/WebViewCore;III)V

    goto/16 :goto_8

    .line 1740
    .end local v42           #deleteSelectionData:Landroid/webkit/WebViewCore$TextSelectionData;
    :sswitch_aa4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$7200(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_8

    .line 1744
    :sswitch_aba
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/util/SparseBooleanArray;

    .line 1746
    .local v33, choices:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    .line 1747
    .local v35, choicesSize:I
    move/from16 v0, v35

    new-array v0, v0, [Z

    move-object/from16 v34, v0

    .line 1748
    .local v34, choicesArray:[Z
    const/16 v27, 0x0

    .local v27, c:I
    :goto_ad0
    move/from16 v0, v27

    move/from16 v1, v35

    if-ge v0, v1, :cond_ae3

    .line 1749
    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    aput-boolean v5, v34, v27

    .line 1748
    add-int/lit8 v27, v27, 0x1

    goto :goto_ad0

    .line 1751
    :cond_ae3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object v0, v5

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewCore;->access$7300(Landroid/webkit/WebViewCore;[ZI)V

    goto/16 :goto_8

    .line 1756
    .end local v27           #c:I
    .end local v33           #choices:Landroid/util/SparseBooleanArray;
    .end local v34           #choicesArray:[Z
    .end local v35           #choicesSize:I
    :sswitch_af4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$7400(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 1760
    :sswitch_b05
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$7500(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 1764
    :sswitch_b16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b2b

    const/4 v6, 0x1

    :goto_b26
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$7600(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_8

    :cond_b2b
    const/4 v6, 0x0

    goto :goto_b26

    .line 1768
    :sswitch_b2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b42

    const/4 v6, 0x1

    :goto_b3d
    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$7700(Landroid/webkit/WebViewCore;Z)V

    goto/16 :goto_8

    :cond_b42
    const/4 v6, 0x0

    goto :goto_b3d

    .line 1772
    :sswitch_b44
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$7800(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1776
    :sswitch_b50
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$7900(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1780
    :sswitch_b5c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$8000(Landroid/webkit/WebViewCore;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1784
    .restart local p0
    :sswitch_b73
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/webkit/WebViewCore$GeolocationPermissionsData;

    .line 1786
    .local v41, data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    move v7, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    move v8, v0

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$8100(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V

    goto/16 :goto_8

    .line 1791
    .end local v41           #data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    :sswitch_b96
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$8202(Landroid/webkit/WebViewCore;I)I

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$8302(Landroid/webkit/WebViewCore;I)I

    goto/16 :goto_8

    .line 1796
    :sswitch_bb6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$8400(Landroid/webkit/WebViewCore;)V

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$8502(Landroid/webkit/WebViewCore;Z)Z

    goto/16 :goto_8

    .line 1804
    :sswitch_bcd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$8600(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_8

    .line 1808
    :sswitch_bd9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    instance-of v5, v5, Landroid/os/Message;

    if-eqz v5, :cond_8

    .line 1809
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    .line 1814
    .restart local p0
    :sswitch_bef
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$8700(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1818
    .restart local p0
    :sswitch_c08
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/webkit/WebViewCore$MotionUpData;

    .line 1819
    .local v58, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v58

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    move v7, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    move-object v8, v0

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$8800(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_c36

    .line 1822
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$6900(Landroid/webkit/WebViewCore;)V

    .line 1824
    :cond_c36
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x77

    move-object/from16 v0, v58

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    move v7, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v57

    .line 1827
    .local v57, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v0, v5

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_8

    .line 1833
    .end local v57           #message:Landroid/os/Message;
    .end local v58           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :sswitch_c68
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$8900(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 1837
    :sswitch_c79
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_c85

    .line 1838
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1841
    :cond_c85
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/util/Set;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/JWebCoreJavaBridge;->addPackageNames(Ljava/util/Set;)V

    goto/16 :goto_8

    .line 1846
    .restart local p0
    :sswitch_c97
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_ca3

    .line 1847
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1850
    :cond_ca3
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/JWebCoreJavaBridge;->addPackageName(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1855
    .restart local p0
    :sswitch_cb5
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v5, :cond_cc1

    .line 1856
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No WebView has been created in this process!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1859
    :cond_cc1
    sget-object v5, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/JWebCoreJavaBridge;->removePackageName(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1864
    .restart local p0
    :sswitch_cd3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Landroid/graphics/Point;

    .line 1865
    .local v73, touchPt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v73

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v73

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    const/high16 v8, 0x3f80

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->access$9000(Landroid/webkit/WebViewCore;IIF)Landroid/graphics/Rect;

    move-result-object v65

    .line 1866
    .local v65, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v5}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x82

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v65

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    .line 1872
    .end local v65           #rect:Landroid/graphics/Rect;
    .end local v73           #touchPt:Landroid/graphics/Point;
    :sswitch_d0e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/webkit/WebViewCore$CursorData;

    .line 1873
    .local v32, cd:Landroid/webkit/WebViewCore$CursorData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    move v6, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/webkit/WebViewCore$CursorData;->mNode:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$9100(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_8

    .line 1877
    .end local v32           #cd:Landroid/webkit/WebViewCore$CursorData;
    :sswitch_d2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v68, v0

    check-cast v68, Landroid/webkit/WebViewCore$SelectAndClickData;

    .line 1878
    .local v68, scdata:Landroid/webkit/WebViewCore$SelectAndClickData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v68

    iget v0, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->selectionStart:I

    move v6, v0

    move-object/from16 v0, v68

    iget v0, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->selectionEnd:I

    move v7, v0

    move-object/from16 v0, v68

    iget v0, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->cursorFrame:I

    move v8, v0

    move-object/from16 v0, v68

    iget v0, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->cursorNode:I

    move v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$9200(Landroid/webkit/WebViewCore;IIII)V

    goto/16 :goto_8

    .line 1883
    .end local v68           #scdata:Landroid/webkit/WebViewCore$SelectAndClickData;
    :sswitch_d54
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/webkit/WebViewCore$CopyParams;

    .line 1884
    .local v61, params:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v12, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v61

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v13, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v14, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move v15, v0

    move-object/from16 v0, v61

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    move/from16 v16, v0

    move-object/from16 v0, v61

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    move/from16 v17, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move/from16 v18, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    move/from16 v19, v0

    invoke-static/range {v12 .. v19}, Landroid/webkit/WebViewCore;->access$9300(Landroid/webkit/WebViewCore;IIIZZFI)V

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v61

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4300(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 1894
    .end local v61           #params:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_d9e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/webkit/WebViewCore$CopyParams;

    .line 1896
    .local v20, Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v6, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v7, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v9, v0

    iget-object v9, v9, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v9}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v9

    add-int/2addr v8, v9

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v10, v0

    iget-object v10, v10, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-static {v10}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewCore;->access$9400(Landroid/webkit/WebViewCore;IIII)V

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4300(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 1904
    .end local v20           #Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_df5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/webkit/WebViewCore$CopyParams;

    .line 1905
    .restart local v20       #Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v7, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v8, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    move v9, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    move v10, v0

    invoke-static {v6, v7, v8, v9, v10}, Landroid/webkit/WebViewCore;->access$9500(Landroid/webkit/WebViewCore;IIFZ)Z

    move-result v6

    if-ne v5, v6, :cond_8

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebViewCore;->access$4300(Landroid/webkit/WebViewCore;I)V

    goto/16 :goto_8

    .line 1912
    .end local v20           #Selvalue:Landroid/webkit/WebViewCore$CopyParams;
    :sswitch_e30
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/webkit/WebViewCore$CopyParams;

    .line 1913
    .local v36, clearSelection:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore$EventHub$1;->this$1:Landroid/webkit/WebViewCore$EventHub;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    move v6, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebViewCore;->access$9600(Landroid/webkit/WebViewCore;II)V

    goto/16 :goto_8

    .line 1122
    :sswitch_data_e4e
    .sparse-switch
        0x61 -> :sswitch_5e
        0x62 -> :sswitch_ad
        0x63 -> :sswitch_b9
        0x64 -> :sswitch_d6
        0x65 -> :sswitch_193
        0x66 -> :sswitch_1cf
        0x67 -> :sswitch_1e0
        0x68 -> :sswitch_1f9
        0x69 -> :sswitch_228
        0x6a -> :sswitch_2f5
        0x6b -> :sswitch_2ac
        0x6c -> :sswitch_345
        0x6d -> :sswitch_360
        0x6e -> :sswitch_391
        0x6f -> :sswitch_7b1
        0x70 -> :sswitch_7c8
        0x71 -> :sswitch_aa4
        0x72 -> :sswitch_7e9
        0x73 -> :sswitch_81b
        0x74 -> :sswitch_2cf
        0x75 -> :sswitch_a2a
        0x76 -> :sswitch_212
        0x77 -> :sswitch_75b
        0x78 -> :sswitch_a5b
        0x7a -> :sswitch_a81
        0x7b -> :sswitch_aba
        0x7c -> :sswitch_af4
        0x7d -> :sswitch_bd9
        0x7e -> :sswitch_b05
        0x7f -> :sswitch_976
        0x80 -> :sswitch_857
        0x82 -> :sswitch_9
        0x83 -> :sswitch_b96
        0x84 -> :sswitch_f4
        0x85 -> :sswitch_bb6
        0x86 -> :sswitch_bcd
        0x87 -> :sswitch_994
        0x88 -> :sswitch_9b7
        0x89 -> :sswitch_9df
        0x8a -> :sswitch_91e
        0x8b -> :sswitch_116
        0x8c -> :sswitch_884
        0x8d -> :sswitch_8b3
        0x8e -> :sswitch_907
        0x8f -> :sswitch_3b4
        0x90 -> :sswitch_3c0
        0x91 -> :sswitch_3cc
        0x92 -> :sswitch_c08
        0x96 -> :sswitch_870
        0xa0 -> :sswitch_940
        0xa1 -> :sswitch_95b
        0xaa -> :sswitch_b16
        0xab -> :sswitch_b2d
        0xac -> :sswitch_b44
        0xad -> :sswitch_b50
        0xae -> :sswitch_b5c
        0xb4 -> :sswitch_b73
        0xb5 -> :sswitch_bef
        0xb6 -> :sswitch_c68
        0xb7 -> :sswitch_779
        0xb8 -> :sswitch_c79
        0xb9 -> :sswitch_c97
        0xba -> :sswitch_cb5
        0xbb -> :sswitch_cd3
        0xbc -> :sswitch_d0e
        0xbe -> :sswitch_d2c
        0xc8 -> :sswitch_14
        0xd2 -> :sswitch_d54
        0xd3 -> :sswitch_e30
        0xd4 -> :sswitch_df5
        0xd5 -> :sswitch_270
        0xd8 -> :sswitch_d9e
        0x1fc -> :sswitch_3e3
        0x1fd -> :sswitch_411
        0x1fe -> :sswitch_645
        0x1ff -> :sswitch_45a
        0x200 -> :sswitch_4b8
        0x201 -> :sswitch_470
        0x202 -> :sswitch_494
        0x203 -> :sswitch_55f
        0x204 -> :sswitch_5e6
        0x205 -> :sswitch_5fd
        0x206 -> :sswitch_60a
        0x207 -> :sswitch_62e
        0x209 -> :sswitch_52e
        0x20b -> :sswitch_6a7
        0x20d -> :sswitch_588
        0x20f -> :sswitch_5b1
        0x211 -> :sswitch_5da
        0x212 -> :sswitch_4dc
        0x213 -> :sswitch_505
        0x214 -> :sswitch_6bf
        0x215 -> :sswitch_6cb
        0x217 -> :sswitch_6ed
        0x218 -> :sswitch_716
        0x219 -> :sswitch_6b3
        0x21a -> :sswitch_6d7
        0x21b -> :sswitch_681
        0x21c -> :sswitch_66b
    .end sparse-switch
.end method

.class Landroid/speech/SpeechRecognizer$InternalListener$1;
.super Landroid/os/Handler;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer$InternalListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/SpeechRecognizer$InternalListener;


# direct methods
.method constructor <init>(Landroid/speech/SpeechRecognizer$InternalListener;)V
    .registers 2
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 408
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-nez v0, :cond_9

    .line 440
    .end local p0
    :goto_8
    return-void

    .line 411
    .restart local p0
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_92

    goto :goto_8

    .line 413
    :pswitch_f
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    goto :goto_8

    .line 416
    :pswitch_19
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    invoke-interface {v0, p0}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    goto :goto_8

    .line 419
    .restart local p0
    :pswitch_29
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    goto :goto_8

    .line 422
    :pswitch_33
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onError(I)V

    goto :goto_8

    .line 425
    .restart local p0
    :pswitch_45
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Bundle;

    invoke-interface {v0, p0}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    goto :goto_8

    .line 428
    .restart local p0
    :pswitch_53
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Bundle;

    invoke-interface {v0, p0}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    goto :goto_8

    .line 431
    .restart local p0
    :pswitch_61
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Bundle;

    invoke-interface {v0, p0}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    goto :goto_8

    .line 434
    .restart local p0
    :pswitch_6f
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    goto :goto_8

    .line 437
    .restart local p0
    :pswitch_81
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Bundle;

    invoke-interface {v0, v1, p0}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_8

    .line 411
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_f
        :pswitch_19
        :pswitch_29
        :pswitch_33
        :pswitch_45
        :pswitch_53
        :pswitch_61
        :pswitch_6f
        :pswitch_81
    .end packed-switch
.end method

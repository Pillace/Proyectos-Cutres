.class public Lcom/android/internal/widget/EditableInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "EditableInputConnection.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EditableInputConnection"


# instance fields
.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .parameter "textview"

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 38
    iput-object p1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 39
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .registers 5
    .parameter "states"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/internal/widget/EditableInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 61
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_8

    const/4 v2, 0x0

    .line 71
    :goto_7
    return v2

    .line 62
    :cond_8
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    .line 63
    .local v1, kl:Landroid/text/method/KeyListener;
    if-eqz v1, :cond_15

    .line 65
    :try_start_10
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_10 .. :try_end_15} :catch_17

    .line 71
    :cond_15
    :goto_15
    const/4 v2, 0x1

    goto :goto_7

    .line 66
    :catch_17
    move-exception v2

    goto :goto_15
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3
    .parameter "text"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 8
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v3, :cond_a

    .line 125
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v3

    .line 136
    :goto_9
    return v3

    .line 128
    :cond_a
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    .line 129
    .local v1, errorBefore:Ljava/lang/CharSequence;
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    .line 130
    .local v2, success:Z
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    .local v0, errorAfter:Ljava/lang/CharSequence;
    if-eqz v0, :cond_23

    if-ne v1, v0, :cond_23

    .line 133
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_23
    move v3, v2

    .line 136
    goto :goto_9
.end method

.method public endBatchEdit()Z
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 43
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_9

    .line 44
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 46
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 5
    .parameter "request"
    .parameter "flags"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1c

    .line 106
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 107
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 108
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1a

    .line 109
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V

    :cond_1a
    move-object v1, v0

    .line 114
    .end local v0           #et:Landroid/view/inputmethod/ExtractedText;
    :goto_1b
    return-object v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public performContextMenuAction(I)Z
    .registers 3
    .parameter "id"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 99
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .registers 3
    .parameter "actionCode"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter "action"
    .parameter "data"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 119
    const/4 v0, 0x1

    return v0
.end method

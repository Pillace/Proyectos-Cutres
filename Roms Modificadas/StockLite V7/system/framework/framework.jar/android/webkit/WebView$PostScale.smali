.class Landroid/webkit/WebView$PostScale;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostScale"
.end annotation


# instance fields
.field final mUpdateTextWrap:Z

.field final mWebView:Landroid/webkit/WebView;

.field final mZoomMode:Landroid/webkit/WebView$ZoomMode;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;ZLandroid/webkit/WebView$ZoomMode;)V
    .registers 4
    .parameter "webView"
    .parameter "updateTextWrap"
    .parameter "mode"

    .prologue
    .line 6189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6190
    iput-object p3, p0, Landroid/webkit/WebView$PostScale;->mZoomMode:Landroid/webkit/WebView$ZoomMode;

    .line 6192
    iput-object p1, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    .line 6193
    iput-boolean p2, p0, Landroid/webkit/WebView$PostScale;->mUpdateTextWrap:Z

    .line 6194
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 6197
    iget-object v0, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 6200
    iget-object v0, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v1

    iget-boolean v2, p0, Landroid/webkit/WebView$PostScale;->mUpdateTextWrap:Z

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/webkit/WebView$PostScale;->mZoomMode:Landroid/webkit/WebView$ZoomMode;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 6205
    iget-object v0, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6206
    iget-object v0, p0, Landroid/webkit/WebView$PostScale;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$100(Landroid/webkit/WebView;)V

    .line 6209
    :cond_2a
    return-void
.end method

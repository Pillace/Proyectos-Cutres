.class public final Landroid/provider/Contacts$Organizations;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$OrganizationColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Organizations"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "organizations"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "company, title, isprimary ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1787
    const-string v0, "content://contacts/organizations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .parameter "context"
    .parameter "type"
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1764
    const-string v0, ""

    .line 1766
    .local v0, display:Ljava/lang/CharSequence;
    if-eqz p1, :cond_1a

    .line 1767
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1770
    .local v2, labels:[Ljava/lang/CharSequence;
    const/4 v3, 0x1

    sub-int v3, p1, v3

    :try_start_12
    aget-object v0, v2, v3
    :try_end_14
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_12 .. :try_end_14} :catch_15

    .line 1779
    .end local v2           #labels:[Ljava/lang/CharSequence;
    :cond_14
    :goto_14
    return-object v0

    .line 1771
    .restart local v2       #labels:[Ljava/lang/CharSequence;
    :catch_15
    move-exception v1

    .line 1772
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v3, 0x0

    aget-object v0, v2, v3

    goto :goto_14

    .line 1775
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2           #labels:[Ljava/lang/CharSequence;
    :cond_1a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1776
    move-object v0, p2

    goto :goto_14
.end method

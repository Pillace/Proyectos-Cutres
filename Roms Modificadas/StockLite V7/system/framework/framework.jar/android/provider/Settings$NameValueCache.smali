.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesVersion:J

.field private final mVersionSystemProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 593
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6
    .parameter "versionSystemProperty"
    .parameter "uri"
    .parameter "callCommand"

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 599
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 609
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    .line 610
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 611
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallCommand:Ljava/lang/String;

    .line 612
    return-void
.end method


# virtual methods
.method public getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "cr"
    .parameter "name"

    .prologue
    .line 615
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 617
    .local v10, newValuesVersion:J
    monitor-enter p0

    .line 618
    :try_start_9
    iget-wide v1, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    cmp-long v1, v1, v10

    if-eqz v1, :cond_16

    .line 624
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 625
    iput-wide v10, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    .line 628
    :cond_16
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 629
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    move-object v1, p1

    .line 685
    :cond_28
    :goto_28
    return-object v1

    .line 631
    .restart local p1
    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_58

    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, cp:Landroid/content/IContentProvider;
    monitor-enter p0

    .line 635
    :try_start_2c
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 636
    if-nez v0, :cond_3d

    .line 637
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v8

    iput-object v8, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .end local v0           #cp:Landroid/content/IContentProvider;
    .local v8, cp:Landroid/content/IContentProvider;
    move-object v0, v8

    .line 639
    .end local v8           #cp:Landroid/content/IContentProvider;
    .restart local v0       #cp:Landroid/content/IContentProvider;
    :cond_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_5b

    .line 645
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mCallCommand:Ljava/lang/String;

    if-eqz v1, :cond_62

    .line 647
    :try_start_42
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mCallCommand:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 648
    .local v6, b:Landroid/os/Bundle;
    if-eqz v6, :cond_62

    .line 649
    invoke-virtual {v6}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v12

    .line 650
    .local v12, value:Ljava/lang/String;
    monitor-enter p0
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_50} :catch_61

    .line 651
    :try_start_50
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_5e

    move-object v1, v12

    .line 653
    goto :goto_28

    .line 631
    .end local v0           #cp:Landroid/content/IContentProvider;
    .end local v6           #b:Landroid/os/Bundle;
    .end local v12           #value:Ljava/lang/String;
    .end local p1
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1

    .line 639
    .restart local v0       #cp:Landroid/content/IContentProvider;
    .restart local p1
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1

    .line 652
    .restart local v6       #b:Landroid/os/Bundle;
    .restart local v12       #value:Ljava/lang/String;
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v1
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_61} :catch_61

    .line 657
    .end local v6           #b:Landroid/os/Bundle;
    .end local v12           #value:Ljava/lang/String;
    :catch_61
    move-exception v1

    .line 663
    :cond_62
    const/4 v7, 0x0

    .line 665
    .local v7, c:Landroid/database/Cursor;
    :try_start_63
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_73
    .catchall {:try_start_63 .. :try_end_73} :catchall_a6
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_73} :catch_9d

    move-result-object v7

    .line 667
    if-nez v7, :cond_7d

    .line 669
    const/4 v1, 0x0

    .line 685
    if-eqz v7, :cond_28

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_28

    .line 672
    :cond_7d
    :try_start_7d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_97

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 673
    .restart local v12       #value:Ljava/lang/String;
    :goto_89
    monitor-enter p0
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_a6
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_8a} :catch_9d

    .line 674
    :try_start_8a
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    monitor-exit p0
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_9a

    .line 685
    if-eqz v7, :cond_95

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_95
    move-object v1, v12

    goto :goto_28

    .line 672
    .end local v12           #value:Ljava/lang/String;
    :cond_97
    const/4 v1, 0x0

    move-object v12, v1

    goto :goto_89

    .line 675
    .restart local v12       #value:Ljava/lang/String;
    :catchall_9a
    move-exception v1

    :try_start_9b
    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    :try_start_9c
    throw v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_a6
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_9d} :catch_9d

    .line 681
    .end local v12           #value:Ljava/lang/String;
    :catch_9d
    move-exception v1

    move-object v9, v1

    .line 683
    .local v9, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 685
    if-eqz v7, :cond_28

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_28

    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_a6
    move-exception v1

    if-eqz v7, :cond_ac

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_ac
    throw v1
.end method

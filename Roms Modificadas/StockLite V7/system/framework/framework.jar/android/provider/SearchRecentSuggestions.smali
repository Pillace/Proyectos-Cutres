.class public Landroid/provider/SearchRecentSuggestions;
.super Ljava/lang/Object;
.source "SearchRecentSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SearchRecentSuggestions$SuggestionColumns;
    }
.end annotation


# static fields
.field private static final DBG_SUGGESTION_TIMESTAMPS:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SearchSuggestions"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final QUERIES_PROJECTION_1LINE:[Ljava/lang/String; = null

.field public static final QUERIES_PROJECTION_2LINE:[Ljava/lang/String; = null

.field public static final QUERIES_PROJECTION_DATE_INDEX:I = 0x1

.field public static final QUERIES_PROJECTION_DISPLAY1_INDEX:I = 0x3

.field public static final QUERIES_PROJECTION_DISPLAY2_INDEX:I = 0x4

.field public static final QUERIES_PROJECTION_QUERY_INDEX:I = 0x2

.field private static final TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mQueriesProjection:[Ljava/lang/String;

.field private mSuggestionsUri:Landroid/net/Uri;

.field private mTwoLineDisplay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "date"

    const-string v6, "_id"

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "date"

    aput-object v7, v0, v4

    const-string/jumbo v1, "query"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "display1"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/SearchRecentSuggestions;->QUERIES_PROJECTION_1LINE:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "date"

    aput-object v7, v0, v4

    const-string/jumbo v1, "query"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "display1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display2"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/SearchRecentSuggestions;->QUERIES_PROJECTION_2LINE:[Ljava/lang/String;

    .line 96
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "date"

    aput-object v7, v0, v4

    sput-object v0, Landroid/provider/SearchRecentSuggestions;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .parameter "context"
    .parameter "authority"
    .parameter "mode"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_13

    .line 130
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 133
    :cond_13
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    .line 136
    iput-object p1, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    .line 137
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/provider/SearchRecentSuggestions;->mAuthority:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/SearchRecentSuggestions;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/suggestions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    .line 142
    iget-boolean v0, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    if-eqz v0, :cond_4f

    .line 143
    sget-object v0, Landroid/provider/SearchRecentSuggestions;->QUERIES_PROJECTION_2LINE:[Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/SearchRecentSuggestions;->mQueriesProjection:[Ljava/lang/String;

    .line 147
    :goto_4c
    return-void

    .line 133
    :cond_4d
    const/4 v0, 0x0

    goto :goto_18

    .line 145
    :cond_4f
    sget-object v0, Landroid/provider/SearchRecentSuggestions;->QUERIES_PROJECTION_1LINE:[Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/SearchRecentSuggestions;->mQueriesProjection:[Ljava/lang/String;

    goto :goto_4c
.end method


# virtual methods
.method public clearHistory()V
    .registers 3

    .prologue
    .line 200
    iget-object v1, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/provider/SearchRecentSuggestions;->truncateHistory(Landroid/content/ContentResolver;I)V

    .line 202
    return-void
.end method

.method public saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "queryString"
    .parameter "line2"

    .prologue
    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 189
    :goto_6
    return-void

    .line 166
    :cond_7
    iget-boolean v5, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    if-nez v5, :cond_17

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 167
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 170
    :cond_17
    iget-object v5, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 175
    .local v2, now:J
    :try_start_21
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "display1"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-boolean v5, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    if-eqz v5, :cond_34

    .line 178
    const-string v5, "display2"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_34
    const-string/jumbo v5, "query"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v5, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    iget-object v5, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_48} :catch_4e

    .line 188
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_48
    const/16 v5, 0xfa

    invoke-virtual {p0, v0, v5}, Landroid/provider/SearchRecentSuggestions;->truncateHistory(Landroid/content/ContentResolver;I)V

    goto :goto_6

    .line 183
    :catch_4e
    move-exception v5

    move-object v1, v5

    .line 184
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v5, "SearchSuggestions"

    const-string/jumbo v6, "saveRecentQuery"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48
.end method

.method protected truncateHistory(Landroid/content/ContentResolver;I)V
    .registers 7
    .parameter "cr"
    .parameter "maxEntries"

    .prologue
    .line 211
    if-gez p2, :cond_8

    .line 212
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 217
    :cond_8
    const/4 v1, 0x0

    .line 218
    .local v1, selection:Ljava/lang/String;
    if-lez p2, :cond_28

    .line 219
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN (SELECT _id FROM suggestions ORDER BY date DESC LIMIT -1 OFFSET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    :cond_28
    iget-object v2, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_2e} :catch_2f

    .line 228
    :goto_2e
    return-void

    .line 225
    :catch_2f
    move-exception v2

    move-object v0, v2

    .line 226
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "SearchSuggestions"

    const-string/jumbo v3, "truncateHistory"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

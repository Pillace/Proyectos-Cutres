.class public final Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;
.super Ljava/io/BufferedReader;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardParserImpl_V21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CustomBufferedReader"
.end annotation


# instance fields
.field private mNextLine:Ljava/lang/String;

.field private mNextLineIsValid:Z

.field private mTime:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getTotalmillisecond()J
    .registers 3

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    return-wide v0
.end method

.method public peekLine()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-boolean v5, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    if-nez v5, :cond_1c

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 117
    .local v3, start:J
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, line:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 119
    .local v0, end:J
    iget-wide v5, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    sub-long v7, v0, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    .line 121
    iput-object v2, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    .line 122
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    .line 125
    .end local v0           #end:J
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #start:J
    :cond_1c
    iget-object v5, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    return-object v5
.end method

.method public readLine()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-boolean v6, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    if-eqz v6, :cond_e

    .line 98
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    .line 99
    .local v3, ret:Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    .line 100
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    move-object v6, v3

    .line 108
    .end local v3           #ret:Ljava/lang/String;
    :goto_d
    return-object v6

    .line 104
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 105
    .local v4, start:J
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, line:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    .local v0, end:J
    iget-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    sub-long v8, v0, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    move-object v6, v2

    .line 108
    goto :goto_d
.end method

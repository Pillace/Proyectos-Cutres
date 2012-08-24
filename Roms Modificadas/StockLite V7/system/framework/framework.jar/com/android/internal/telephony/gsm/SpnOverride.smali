.class public Lcom/android/internal/telephony/gsm/SpnOverride;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR_IMSI_SUBSET:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final PARTNER_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/spn-conf.xml"


# instance fields
.field private CarrierSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SpnOverride$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/SpnOverride;->COMPARATOR_IMSI_SUBSET:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SpnOverride;->loadSpnOverrides()V

    .line 118
    return-void
.end method

.method private getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
    .registers 12
    .parameter "carrier"
    .parameter "imsi"

    .prologue
    const/4 v7, 0x0

    const-string v6, "]"

    const-string v8, "GSM"

    .line 201
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SpnOverride] getMatchingSpnOverrideInfo, carrier=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz p2, :cond_27

    if-nez p1, :cond_29

    :cond_27
    move-object v4, v7

    .line 220
    :goto_28
    return-object v4

    .line 206
    :cond_29
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 207
    .local v0, aSoi:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;>;"
    if-nez v0, :cond_53

    .line 208
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SpnOverride] getMatchingSpnOverrideInfo - no entry for carrier=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 209
    goto :goto_28

    .line 212
    :cond_53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;

    .line 213
    .local v3, soi:Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->getImsiSubset()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, imsiSubset:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v4, v2, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_57

    move-object v4, v3

    .line 215
    goto :goto_28

    .line 219
    .end local v2           #imsiSubset:Ljava/lang/String;
    .end local v3           #soi:Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
    :cond_78
    const-string v4, "GSM"

    const-string v4, "[SpnOverride] getMatchingSpnOverrideInfo - no match found"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 220
    goto :goto_28
.end method

.method private loadSpnOverrides()V
    .registers 16

    .prologue
    .line 226
    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/spn-conf.xml"

    invoke-direct {v13, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    .local v13, spnFile:Ljava/io/File;
    :try_start_b
    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_2e

    .line 238
    .local v14, spnReader:Ljava/io/FileReader;
    :try_start_10
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 239
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 241
    const-string/jumbo v1, "spnOverrides"

    invoke-static {v12, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 244
    :goto_1d
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 246
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 247
    .local v11, name:Ljava/lang/String;
    const-string/jumbo v1, "spnOverride"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_2a} :catch_ba
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2a} :catch_d6

    move-result v1

    if-nez v1, :cond_59

    .line 280
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v14           #spnReader:Ljava/io/FileReader;
    :goto_2d
    return-void

    .line 231
    :catch_2e
    move-exception v1

    move-object v10, v1

    .line 232
    .local v10, e:Ljava/io/FileNotFoundException;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "etc/spn-conf.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 251
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .restart local v11       #name:Ljava/lang/String;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #spnReader:Ljava/io/FileReader;
    :cond_59
    :try_start_59
    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;

    const/4 v1, 0x0

    const-string v2, "numeric"

    invoke-interface {v12, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const-string/jumbo v3, "spn"

    invoke-interface {v12, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const-string/jumbo v4, "spn_display_rule"

    invoke-interface {v12, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const-string/jumbo v5, "spn_override_only_on"

    invoke-interface {v12, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    const-string v6, "fake_home_on"

    invoke-interface {v12, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const-string v7, "imsi_subset"

    invoke-interface {v12, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    const-string v8, "fake_roaming_on"

    invoke-interface {v12, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;-><init>(Lcom/android/internal/telephony/gsm/SpnOverride;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .local v0, newSoi:Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->access$000(Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 263
    .local v9, aSoi:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;>;"
    if-nez v9, :cond_a7

    .line 265
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #aSoi:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;>;"
    const/4 v1, 0x1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    .restart local v9       #aSoi:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;>;"
    :cond_a7
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v1, Lcom/android/internal/telephony/gsm/SpnOverride;->COMPARATOR_IMSI_SUBSET:Ljava/util/Comparator;

    invoke-static {v9, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 273
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->access$000(Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59 .. :try_end_b8} :catch_ba
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_b8} :catch_d6

    goto/16 :goto_1d

    .line 275
    .end local v0           #newSoi:Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
    .end local v9           #aSoi:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;>;"
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_ba
    move-exception v1

    move-object v10, v1

    .line 276
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in spn-conf parser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 277
    .end local v10           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_d6
    move-exception v1

    move-object v10, v1

    .line 278
    .local v10, e:Ljava/io/IOException;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in spn-conf parser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .registers 3
    .parameter "carrier"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getDisplayRule(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "carrier"
    .parameter "imsi"

    .prologue
    .line 144
    const/4 v0, -0x1

    .line 146
    .local v0, result:I
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;

    move-result-object v3

    .line 148
    .local v3, soi:Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
    if-nez v3, :cond_9

    move v1, v0

    .line 165
    .end local v0           #result:I
    .local v1, result:I
    :goto_8
    return v1

    .line 152
    .end local v1           #result:I
    .restart local v0       #result:I
    :cond_9
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->getSpnDisplayRule()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, rule:Ljava/lang/String;
    if-nez v2, :cond_11

    move v1, v0

    .line 154
    .end local v0           #result:I
    .restart local v1       #result:I
    goto :goto_8

    .line 157
    .end local v1           #result:I
    .restart local v0       #result:I
    :cond_11
    const/4 v0, 0x0

    .line 158
    const-string v4, "SPN_RULE_SHOW_SPN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 161
    :cond_1c
    const-string v4, "SPN_RULE_SHOW_PLMN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 162
    add-int/lit8 v0, v0, 0x2

    :cond_26
    move v1, v0

    .line 165
    .end local v0           #result:I
    .restart local v1       #result:I
    goto :goto_8
.end method

.method getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "carrier"
    .parameter "imsi"

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;

    move-result-object v0

    .line 184
    .local v0, soi:Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
    if-nez v0, :cond_8

    .line 185
    const/4 v1, 0x0

    .line 188
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->getFakeHomeOn()[Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method getFakeRoamingOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "carrier"
    .parameter "imsi"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;

    move-result-object v0

    .line 193
    .local v0, soi:Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
    if-nez v0, :cond_8

    .line 194
    const/4 v1, 0x0

    .line 197
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->getFakeRoamingOn()[Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method getOverrideOnlyOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "carrier"
    .parameter "imsi"

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;

    move-result-object v0

    .line 175
    .local v0, soi:Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
    if-nez v0, :cond_8

    .line 176
    const/4 v1, 0x0

    .line 179
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->getSpnOverrideOnlyOn()[Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "carrier"
    .parameter "imsi"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;

    move-result-object v0

    .line 132
    .local v0, soi:Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
    if-eqz v0, :cond_b

    .line 133
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->getSpn()Ljava/lang/String;

    move-result-object v1

    .line 135
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.class Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ContactHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ContactHeaderWidget;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    .line 235
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 236
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 19
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 241
    :try_start_0
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$000(Lcom/android/internal/widget/ContactHeaderWidget;)Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    move-result-object v12

    if-eq p0, v12, :cond_15

    .line 242
    const-string v12, "ContactHeaderWidget"

    const-string v13, "onQueryComplete: discard result, the query handler is reset!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_6c

    .line 327
    if-eqz p3, :cond_14

    .line 328
    .end local p2
    :goto_11
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_14
    return-void

    .line 246
    .restart local p2
    :cond_15
    packed-switch p1, :pswitch_data_190

    .line 327
    .end local p2
    :goto_18
    if-eqz p3, :cond_14

    goto :goto_11

    .line 249
    .restart local p2
    :pswitch_1b
    const/4 v8, 0x0

    .line 250
    .local v8, photoBitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_3d

    :try_start_1e
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_3d

    const/4 v12, 0x0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_3d

    .line 252
    const/4 v12, 0x0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 253
    .local v9, photoData:[B
    const/4 v12, 0x0

    array-length v13, v9

    const/4 v14, 0x0

    invoke-static {v9, v12, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 257
    .end local v9           #photoData:[B
    :cond_3d
    if-nez v8, :cond_46

    .line 258
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 260
    :cond_46
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    if-eqz p2, :cond_66

    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/net/Uri;

    move v12, v0

    if-eqz v12, :cond_66

    .line 262
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    check-cast p2, Landroid/net/Uri;

    .end local p2
    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 264
    :cond_66
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-virtual {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->invalidate()V
    :try_end_6b
    .catchall {:try_start_1e .. :try_end_6b} :catchall_6c

    goto :goto_18

    .line 327
    .end local v8           #photoBitmap:Landroid/graphics/Bitmap;
    :catchall_6c
    move-exception v12

    if-eqz p3, :cond_72

    .line 328
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_72
    throw v12

    .line 268
    .restart local p2
    :pswitch_73
    if-eqz p3, :cond_db

    :try_start_75
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_db

    .line 269
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->bindContactInfo(Landroid/database/Cursor;)V

    .line 270
    const/4 v12, 0x0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v14, 0x1

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 273
    .local v6, lookupUri:Landroid/net/Uri;
    const/4 v12, 0x2

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 275
    .local v10, photoId:J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_d3

    .line 276
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    if-eqz p2, :cond_cc

    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/net/Uri;

    move v12, v0

    if-eqz v12, :cond_cc

    .line 278
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    check-cast p2, Landroid/net/Uri;

    .end local p2
    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 280
    :cond_cc
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-virtual {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->invalidate()V

    goto/16 :goto_18

    .line 282
    .restart local p2
    :cond_d3
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v11, v6, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->startPhotoQuery(JLandroid/net/Uri;Z)V

    goto/16 :goto_18

    .line 287
    .end local v6           #lookupUri:Landroid/net/Uri;
    .end local v10           #photoId:J
    :cond_db
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 288
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    iget-object v13, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    goto/16 :goto_18

    .line 294
    :pswitch_f6
    if-eqz p3, :cond_11a

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_11a

    .line 295
    const/4 v12, 0x0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 296
    .local v2, contactId:J
    const/4 v12, 0x1

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, lookupKey:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-static {v2, v3, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->access$300(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V

    goto/16 :goto_18

    .line 301
    .end local v2           #contactId:J
    .end local v5           #lookupKey:Ljava/lang/String;
    :cond_11a
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 302
    .local v7, phoneNumber:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    invoke-virtual {v12, v7, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 303
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    iget-object v13, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 305
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v7, v13}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_18

    .line 310
    .end local v7           #phoneNumber:Ljava/lang/String;
    :pswitch_143
    if-eqz p3, :cond_167

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_167

    .line 311
    const/4 v12, 0x0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 312
    .restart local v2       #contactId:J
    const/4 v12, 0x1

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 314
    .restart local v5       #lookupKey:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-static {v2, v3, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->access$300(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V

    goto/16 :goto_18

    .line 317
    .end local v2           #contactId:J
    .end local v5           #lookupKey:Ljava/lang/String;
    :cond_167
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 318
    .local v4, emailAddress:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    invoke-virtual {v12, v4, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 319
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    iget-object v13, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 321
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v4, v13}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V
    :try_end_18e
    .catchall {:try_start_75 .. :try_end_18e} :catchall_6c

    goto/16 :goto_18

    .line 246
    :pswitch_data_190
    .packed-switch 0x0
        :pswitch_73
        :pswitch_f6
        :pswitch_143
        :pswitch_1b
    .end packed-switch
.end method

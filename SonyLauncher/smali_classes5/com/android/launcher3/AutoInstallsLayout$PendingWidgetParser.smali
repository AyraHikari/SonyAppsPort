.class public Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PendingWidgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/AutoInstallsLayout;

    .line 480
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentName(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 484
    const-string v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "className":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 487
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    invoke-virtual {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->getComponentName(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ComponentName;

    move-result-object v0

    .line 497
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 499
    const/4 v1, -0x1

    return v1

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v1, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v2, "spanX"

    invoke-static {p1, v2}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v1, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v2, "spanY"

    invoke-static {p1, v2}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v1, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "itemType"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 508
    .local v1, "extras":Landroid/os/Bundle;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 510
    .local v2, "widgetDepth":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 511
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_1

    goto :goto_1

    .line 528
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)I

    move-result v3

    return v3

    .line 512
    :cond_2
    :goto_1
    const/4 v3, 0x2

    if-eq v4, v3, :cond_3

    .line 513
    goto :goto_0

    .line 516
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "extra"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 517
    const-string v3, "key"

    invoke-static {p1, v3}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, "key":Ljava/lang/String;
    const-string v5, "value"

    invoke-static {p1, v5}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 519
    .local v5, "value":Ljava/lang/String;
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    .line 520
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 522
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Widget extras must have a key and value"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 525
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Widgets can contain only extras"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)I
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 532
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appWidgetProvider"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    .line 534
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 533
    const-string v2, "restored"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v1, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v1}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v1, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v0

    .line 543
    .local v0, "insertedId":I
    if-gez v0, :cond_1

    .line 544
    const/4 v1, -0x1

    return v1

    .line 546
    :cond_1
    return v0
.end method

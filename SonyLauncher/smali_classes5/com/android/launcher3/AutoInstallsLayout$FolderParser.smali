.class public Lcom/android/launcher3/AutoInstallsLayout$FolderParser;
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
    name = "FolderParser"
.end annotation


# instance fields
.field private final mFolderElements:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/AutoInstallsLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/AutoInstallsLayout;

    .line 572
    invoke-virtual {p1}, Lcom/android/launcher3/AutoInstallsLayout;->getFolderElementsMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/util/ArrayMap;)V

    .line 573
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/util/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/AutoInstallsLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/AutoInstallsLayout$TagParser;",
            ">;)V"
        }
    .end annotation

    .line 575
    .local p2, "elements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/launcher3/AutoInstallsLayout$TagParser;>;"
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p2, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->mFolderElements:Landroid/util/ArrayMap;

    .line 577
    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 18
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "title"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeResourceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 584
    .local v4, "titleResId":I
    if-eqz v4, :cond_0

    .line 585
    iget-object v5, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v5, v5, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "title":Ljava/lang/String;
    goto :goto_1

    .line 587
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    const-string v5, "titleText"

    invoke-static {v1, v5}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 588
    .local v5, "titleText":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, ""

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    move-object v5, v6

    .line 591
    .local v5, "title":Ljava/lang/String;
    :goto_1
    iget-object v6, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v6, v6, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v6, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v2, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "itemType"

    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 593
    iget-object v2, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "spanX"

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    iget-object v2, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "spanY"

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    iget-object v2, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    iget-object v8, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v8, v8, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v8}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "_id"

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    iget-object v2, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    iget-object v8, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v8, v8, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v9, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v9, v9, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-interface {v2, v8, v9}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v2

    .line 597
    .local v2, "folderId":I
    if-gez v2, :cond_2

    .line 599
    const/4 v3, -0x1

    return v3

    .line 602
    :cond_2
    new-instance v8, Landroid/content/ContentValues;

    iget-object v9, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v9, v9, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 603
    .local v8, "myValues":Landroid/content/ContentValues;
    new-instance v9, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v9}, Lcom/android/launcher3/util/IntArray;-><init>()V

    .line 606
    .local v9, "folderItems":Lcom/android/launcher3/util/IntArray;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 607
    .local v10, "folderDepth":I
    const/4 v11, 0x0

    .line 608
    .local v11, "rank":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move v13, v12

    .local v13, "type":I
    const/4 v14, 0x3

    const-string v15, "container"

    if-ne v12, v14, :cond_6

    .line 609
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v10, :cond_3

    move/from16 v16, v4

    move-object/from16 v17, v5

    move v4, v7

    move v5, v3

    goto/16 :goto_4

    .line 629
    :cond_3
    move v12, v2

    .line 634
    .local v12, "addedId":I
    invoke-virtual {v9}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v14

    if-ge v14, v6, :cond_4

    .line 636
    invoke-static {v2}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v6

    .line 637
    .local v6, "uri":Landroid/net/Uri;
    new-instance v14, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    const/4 v3, 0x0

    invoke-direct {v14, v6, v3, v3}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 638
    .local v14, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    iget-object v3, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v3, v3, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v7, v14, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    move/from16 v16, v4

    .end local v4    # "titleResId":I
    .local v16, "titleResId":I
    iget-object v4, v14, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    move-object/from16 v17, v5

    .end local v5    # "title":Ljava/lang/String;
    .local v17, "title":Ljava/lang/String;
    iget-object v5, v14, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v3, v7, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 639
    const/4 v12, -0x1

    .line 643
    invoke-virtual {v9}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 644
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 645
    .local v3, "childValues":Landroid/content/ContentValues;
    invoke-static {v8, v3, v15}, Lcom/android/launcher3/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 646
    const-string v4, "screen"

    invoke-static {v8, v3, v4}, Lcom/android/launcher3/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 647
    const-string v4, "cellX"

    invoke-static {v8, v3, v4}, Lcom/android/launcher3/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 648
    const-string v4, "cellY"

    invoke-static {v8, v3, v4}, Lcom/android/launcher3/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 650
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v12

    .line 651
    iget-object v4, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v4, v4, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "favorites"

    const/4 v15, 0x0

    invoke-virtual {v4, v7, v3, v5, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 634
    .end local v3    # "childValues":Landroid/content/ContentValues;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v14    # "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    .end local v16    # "titleResId":I
    .end local v17    # "title":Ljava/lang/String;
    .restart local v4    # "titleResId":I
    .restart local v5    # "title":Ljava/lang/String;
    :cond_4
    move/from16 v16, v4

    move-object/from16 v17, v5

    .line 655
    .end local v4    # "titleResId":I
    .end local v5    # "title":Ljava/lang/String;
    .restart local v16    # "titleResId":I
    .restart local v17    # "title":Ljava/lang/String;
    :cond_5
    :goto_3
    return v12

    .line 608
    .end local v12    # "addedId":I
    .end local v16    # "titleResId":I
    .end local v17    # "title":Ljava/lang/String;
    .restart local v4    # "titleResId":I
    .restart local v5    # "title":Ljava/lang/String;
    :cond_6
    move/from16 v16, v4

    move-object/from16 v17, v5

    move v4, v7

    move v5, v3

    .line 610
    .end local v4    # "titleResId":I
    .end local v5    # "title":Ljava/lang/String;
    .restart local v16    # "titleResId":I
    .restart local v17    # "title":Ljava/lang/String;
    :goto_4
    if-eq v13, v6, :cond_7

    .line 611
    move v7, v4

    move v3, v5

    move/from16 v4, v16

    move-object/from16 v5, v17

    goto/16 :goto_2

    .line 613
    :cond_7
    iget-object v3, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v3, v3, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 614
    iget-object v3, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v3, v3, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    iget-object v3, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v3, v3, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v12, "rank"

    invoke-virtual {v3, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    iget-object v3, v0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->mFolderElements:Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/AutoInstallsLayout$TagParser;

    .line 618
    .local v3, "tagParser":Lcom/android/launcher3/AutoInstallsLayout$TagParser;
    if-eqz v3, :cond_9

    .line 619
    invoke-interface {v3, v1}, Lcom/android/launcher3/AutoInstallsLayout$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v7

    .line 620
    .local v7, "id":I
    if-ltz v7, :cond_8

    .line 621
    invoke-virtual {v9, v7}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 622
    add-int/lit8 v11, v11, 0x1

    .line 624
    .end local v7    # "id":I
    :cond_8
    nop

    .line 627
    .end local v3    # "tagParser":Lcom/android/launcher3/AutoInstallsLayout$TagParser;
    move v7, v4

    move v3, v5

    move/from16 v4, v16

    move-object/from16 v5, v17

    goto/16 :goto_2

    .line 625
    .restart local v3    # "tagParser":Lcom/android/launcher3/AutoInstallsLayout$TagParser;
    :cond_9
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid folder item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

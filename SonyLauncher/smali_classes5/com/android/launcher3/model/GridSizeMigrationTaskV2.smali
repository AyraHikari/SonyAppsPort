.class public Lcom/android/launcher3/model/GridSizeMigrationTaskV2;
.super Ljava/lang/Object;
.source "GridSizeMigrationTaskV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;,
        Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;,
        Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;,
        Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GridSizeMigrationTaskV2"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mDestHotseatSize:I

.field private final mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

.field private final mHotseatDiff:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mHotseatItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

.field private final mTrgX:I

.field private final mTrgY:I

.field private final mWorkspaceDiff:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkspaceItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sminsertEntryInDb(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->insertEntryInDb(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smremoveEntryFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->removeEntryFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;ILandroid/graphics/Point;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "srcReader"    # Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    .param p4, "destReader"    # Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    .param p5, "destHotseatSize"    # I
    .param p6, "targetSize"    # Landroid/graphics/Point;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 88
    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    .line 89
    iput-object p4, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    .line 91
    invoke-virtual {p4}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->loadHotseatEntries()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mHotseatItems:Ljava/util/List;

    .line 92
    invoke-virtual {p4}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->loadAllWorkspaceEntries()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mWorkspaceItems:Ljava/util/List;

    .line 94
    invoke-virtual {p3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->loadHotseatEntries()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->calcDiff(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mHotseatDiff:Ljava/util/List;

    .line 95
    invoke-virtual {p3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->loadAllWorkspaceEntries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->calcDiff(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mWorkspaceDiff:Ljava/util/List;

    .line 96
    iput p5, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mDestHotseatSize:I

    .line 98
    iget v0, p6, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mTrgX:I

    .line 99
    iget v0, p6, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mTrgY:I

    .line 100
    return-void
.end method

.method private static calcDiff(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ">;"
        }
    .end annotation

    .line 270
    .local p0, "src":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;>;"
    .local p1, "dest":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 271
    .local v0, "destIntentSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 272
    .local v1, "destFolderIntentSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    .line 273
    .local v3, "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    iget v5, v3, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->itemType:I

    if-ne v5, v4, :cond_0

    .line 274
    invoke-static {v3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->getFolderIntents(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :cond_0
    invoke-static {v3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->-$$Nest$fgetmIntent(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v3    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    :goto_1
    goto :goto_0

    .line 279
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v2, "diff":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    .line 281
    .local v5, "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    iget v6, v5, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->itemType:I

    if-ne v6, v4, :cond_2

    .line 282
    invoke-static {v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->getFolderIntents(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 283
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 286
    :cond_2
    invoke-static {v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->-$$Nest$fgetmIntent(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 287
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    .end local v5    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    :cond_3
    :goto_3
    goto :goto_2

    .line 291
    :cond_4
    return-object v2
.end method

.method private static copyEntryAndUpdate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "folderId"    # I
    .param p4, "srcTableName"    # Ljava/lang/String;
    .param p5, "destTableName"    # Ljava/lang/String;

    .line 322
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->copyEntryAndUpdate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static copyEntryAndUpdate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;IILjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .param p3, "id"    # I
    .param p4, "folderId"    # I
    .param p5, "srcTableName"    # Ljava/lang/String;
    .param p6, "destTableName"    # Ljava/lang/String;

    .line 327
    move-object v0, p2

    const/4 v1, -0x1

    .line 328
    .local v1, "newId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 329
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->id:I

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 328
    const/4 v5, 0x0

    move-object v3, p0

    move-object/from16 v4, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 331
    .local v2, "c":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 332
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 333
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 334
    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p2, v3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->updateContentValues(Landroid/content/ContentValues;)V

    goto :goto_2

    .line 337
    :cond_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "container"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "generate_new_item_id"

    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 340
    const-string v5, "value"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 342
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    const/4 v4, 0x0

    move-object v5, p0

    move-object/from16 v6, p6

    invoke-virtual {p0, v6, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 344
    .end local v3    # "values":Landroid/content/ContentValues;
    goto :goto_1

    .line 345
    :cond_2
    move-object v5, p0

    move-object/from16 v6, p6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 346
    return v1
.end method

.method private static copyEntryAndUpdate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .param p3, "srcTableName"    # Ljava/lang/String;
    .param p4, "destTableName"    # Ljava/lang/String;

    .line 317
    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->copyEntryAndUpdate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getFolderIntents(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/util/Map;
    .locals 4
    .param p0, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 296
    .local v0, "folder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->-$$Nest$fgetmFolderItems(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 297
    .local v2, "intent":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->-$$Nest$fgetmFolderItems(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .end local v2    # "intent":Ljava/lang/String;
    goto :goto_0

    .line 299
    :cond_0
    return-object v0
.end method

.method private static getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 361
    .local v0, "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 362
    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 361
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 363
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 364
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 365
    :cond_0
    sget-object v1, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/InstallSessionHelper;

    .line 366
    invoke-virtual {v1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;)V

    .line 367
    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 368
    return-object v0
.end method

.method private static insertEntryInDb(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    .param p3, "srcTableName"    # Ljava/lang/String;
    .param p4, "destTableName"    # Ljava/lang/String;

    .line 304
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->copyEntryAndUpdate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 306
    .local v6, "id":I
    iget v0, p2, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->itemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 307
    invoke-static {p2}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->-$$Nest$fgetmFolderItems(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Set;

    .line 308
    .local v8, "itemIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 309
    .local v10, "itemId":I
    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move v3, v6

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->copyEntryAndUpdate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v10    # "itemId":I
    goto :goto_1

    .line 311
    .end local v8    # "itemIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 313
    :cond_1
    return-void
.end method

.method static synthetic lambda$getValidPackages$0(Ljava/util/HashSet;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 1
    .param p0, "validPackages"    # Ljava/util/HashSet;
    .param p1, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 367
    iget-object v0, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static migrateGridIfNeeded(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 122
    instance-of v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->migrateGridIfNeeded(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result v0

    return v0
.end method

.method public static migrateGridIfNeeded(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 143
    move-object/from16 v8, p0

    const-string v9, "Workspace migration completed in "

    const-string v10, "GridSizeMigrationTaskV2"

    const/4 v0, 0x1

    const/4 v11, 0x0

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    move v12, v1

    .line 144
    .local v12, "migrateForPreview":Z
    if-nez v12, :cond_1

    .line 145
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    move-object v13, v1

    .end local p1    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .local v1, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    goto :goto_1

    .line 144
    .end local v1    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .restart local p1    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    :cond_1
    move-object/from16 v13, p1

    .line 148
    .end local p1    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .local v13, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    :goto_1
    new-instance v1, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v1, v8}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Landroid/content/Context;)V

    move-object v14, v1

    .line 149
    .local v14, "srcDeviceState":Lcom/android/launcher3/model/DeviceGridState;
    new-instance v1, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v1, v13}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    move-object v15, v1

    .line 150
    .local v15, "destDeviceState":Lcom/android/launcher3/model/DeviceGridState;
    invoke-static {v14, v15}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->needsToMigrate(Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    return v0

    .line 154
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v6

    .line 156
    .local v6, "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "value"

    if-eqz v12, :cond_3

    .line 157
    nop

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 160
    invoke-virtual {v15}, Lcom/android/launcher3/model/DeviceGridState;->getDbFile()Ljava/lang/String;

    move-result-object v3

    .line 157
    const-string v4, "prep_for_preview"

    invoke-static {v2, v4, v3}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 160
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 162
    return v11

    .line 164
    :cond_3
    nop

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 167
    invoke-virtual {v15}, Lcom/android/launcher3/model/DeviceGridState;->getDbFile()Ljava/lang/String;

    move-result-object v3

    .line 164
    const-string v4, "update_current_open_helper"

    invoke-static {v2, v4, v3}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 167
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 169
    return v11

    .line 172
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 173
    .local v16, "migrationStartTime":J
    nop

    .line 174
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "new_db_transaction"

    .line 173
    invoke-static {v2, v3}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 175
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v18, v1

    .line 178
    .local v18, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_1
    new-instance v4, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 179
    const-string v2, "favorites"

    const-string v3, "favorites_tmp"

    if-eqz v12, :cond_5

    move-object v5, v2

    goto :goto_2

    .line 180
    :cond_5
    move-object v5, v3

    :goto_2
    :try_start_2
    invoke-direct {v4, v1, v5, v8, v6}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/Set;)V

    .line 182
    .local v4, "srcReader":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    new-instance v5, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 183
    if-eqz v12, :cond_6

    :try_start_3
    const-string v2, "favorites_preview"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 173
    .end local v4    # "srcReader":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v20, v6

    goto/16 :goto_4

    .line 184
    .restart local v4    # "srcReader":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    :cond_6
    nop

    :goto_3
    :try_start_4
    invoke-direct {v5, v1, v2, v8, v6}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/Set;)V

    .line 187
    .local v5, "destReader":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {v15}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v15}, Lcom/android/launcher3/model/DeviceGridState;->getRows()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v7, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 188
    .local v7, "targetSize":Landroid/graphics/Point;
    new-instance v19, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    .line 189
    invoke-virtual {v15}, Lcom/android/launcher3/model/DeviceGridState;->getNumHotseat()I

    move-result v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object v11, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v6

    .end local v6    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v20, "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move/from16 v6, v21

    :try_start_5
    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;ILandroid/graphics/Point;)V

    move-object/from16 v1, v19

    .line 190
    .local v1, "task":Lcom/android/launcher3/model/GridSizeMigrationTaskV2;
    invoke-virtual {v1, v14, v15}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->migrate(Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z

    .line 192
    if-nez v12, :cond_7

    .line 193
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 196
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 197
    nop

    .line 198
    if-eqz v18, :cond_8

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 203
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object/from16 p1, v1

    .end local v1    # "task":Lcom/android/launcher3/model/GridSizeMigrationTaskV2;
    .local p1, "task":Lcom/android/launcher3/model/GridSizeMigrationTaskV2;
    sub-long v0, v21, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-nez v12, :cond_9

    .line 208
    invoke-virtual {v15, v8}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    .line 197
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 173
    .end local v4    # "srcReader":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    .end local v5    # "destReader":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;
    .end local v7    # "targetSize":Landroid/graphics/Point;
    .end local p1    # "task":Lcom/android/launcher3/model/GridSizeMigrationTaskV2;
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    .end local v20    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v20, v6

    move-object v1, v0

    .end local v6    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_4
    if-eqz v18, :cond_a

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v12    # "migrateForPreview":Z
    .end local v13    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .end local v14    # "srcDeviceState":Lcom/android/launcher3/model/DeviceGridState;
    .end local v15    # "destDeviceState":Lcom/android/launcher3/model/DeviceGridState;
    .end local v16    # "migrationStartTime":J
    .end local v20    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local p0    # "context":Landroid/content/Context;
    :cond_a
    :goto_5
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 198
    .end local v18    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local v12    # "migrateForPreview":Z
    .restart local v13    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .restart local v14    # "srcDeviceState":Lcom/android/launcher3/model/DeviceGridState;
    .restart local v15    # "destDeviceState":Lcom/android/launcher3/model/DeviceGridState;
    .restart local v16    # "migrationStartTime":J
    .restart local v20    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    goto :goto_6

    .line 203
    .end local v20    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v20, v6

    .end local v6    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_7

    .line 198
    .end local v20    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    move-object/from16 v20, v6

    .line 199
    .end local v6    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_6
    :try_start_9
    const-string v1, "Error during grid migration"

    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 201
    nop

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-nez v12, :cond_b

    .line 208
    invoke-virtual {v15, v8}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    .line 201
    :cond_b
    const/4 v1, 0x0

    return v1

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v0

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-nez v12, :cond_c

    .line 208
    invoke-virtual {v15, v8}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    .line 210
    :cond_c
    throw v0
.end method

.method public static needsToMigrate(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 106
    new-instance v0, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v1, p1}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->needsToMigrate(Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z

    move-result v0

    return v0
.end method

.method private static needsToMigrate(Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z
    .locals 3
    .param p0, "srcDeviceState"    # Lcom/android/launcher3/model/DeviceGridState;
    .param p1, "destDeviceState"    # Lcom/android/launcher3/model/DeviceGridState;

    .line 111
    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/DeviceGridState;->isCompatible(Lcom/android/launcher3/model/DeviceGridState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 113
    .local v0, "needsToMigrate":Z
    if-eqz v0, :cond_0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration is needed. destDeviceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", srcDeviceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b/198965093"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return v0
.end method

.method private static removeEntryFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "entryIds"    # Lcom/android/launcher3/util/IntArray;

    .line 350
    nop

    .line 351
    const-string v0, "_id"

    invoke-static {v0, p2}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v0

    .line 350
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 352
    return-void
.end method


# virtual methods
.method protected migrate(Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z
    .locals 20
    .param p1, "srcDeviceState"    # Lcom/android/launcher3/model/DeviceGridState;
    .param p2, "destDeviceState"    # Lcom/android/launcher3/model/DeviceGridState;

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mHotseatDiff:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mWorkspaceDiff:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    return v2

    .line 220
    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mHotseatDiff:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 221
    iget-object v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mWorkspaceDiff:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 224
    new-instance v1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;

    iget-object v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    iget-object v6, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    iget-object v7, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mDestHotseatSize:I

    iget-object v9, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mHotseatItems:Ljava/util/List;

    iget-object v10, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mHotseatDiff:Ljava/util/List;

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V

    .line 226
    .local v1, "hotseatSolution":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;
    invoke-virtual {v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$HotseatPlacementSolution;->find()V

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v3, "screens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "screenId":I
    :goto_0
    iget-object v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    invoke-static {v5}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->-$$Nest$fgetmLastScreenId(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 232
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    .end local v4    # "screenId":I
    :cond_1
    const/4 v4, 0x0

    .line 236
    .local v4, "preservePages":Z
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_MIGRATION_LOGIC:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 237
    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual {v7, v5}, Lcom/android/launcher3/model/DeviceGridState;->compareTo(Lcom/android/launcher3/model/DeviceGridState;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 238
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    if-gt v8, v9, :cond_2

    move v2, v6

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move v4, v2

    goto :goto_2

    .line 236
    :cond_3
    move-object/from16 v5, p1

    move-object/from16 v7, p2

    .line 242
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 246
    .local v8, "screenId":I
    new-instance v19, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;

    iget-object v10, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v11, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    iget-object v13, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mContext:Landroid/content/Context;

    iget v15, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mTrgX:I

    iget v14, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mTrgY:I

    iget-object v9, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mWorkspaceDiff:Ljava/util/List;

    const/16 v18, 0x0

    move-object/from16 v17, v9

    move-object/from16 v9, v19

    move/from16 v16, v14

    move v14, v8

    invoke-direct/range {v9 .. v18}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Landroid/content/Context;IIILjava/util/List;Z)V

    .line 248
    .local v9, "workspaceSolution":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;
    invoke-virtual {v9}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->find()V

    .line 249
    iget-object v10, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mWorkspaceDiff:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 250
    goto :goto_4

    .line 252
    .end local v8    # "screenId":I
    .end local v9    # "workspaceSolution":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;
    :cond_4
    goto :goto_3

    .line 256
    :cond_5
    :goto_4
    iget-object v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    invoke-static {v2}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;->-$$Nest$fgetmLastScreenId(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;)I

    move-result v2

    add-int/2addr v2, v6

    .line 257
    .local v2, "screenId":I
    :goto_5
    iget-object v8, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mWorkspaceDiff:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 258
    new-instance v18, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;

    iget-object v9, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v10, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mSrcReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    iget-object v11, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mDestReader:Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;

    iget-object v12, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mContext:Landroid/content/Context;

    iget v14, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mTrgX:I

    iget v15, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mTrgY:I

    iget-object v13, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->mWorkspaceDiff:Ljava/util/List;

    move-object/from16 v8, v18

    move-object/from16 v16, v13

    move v13, v2

    move/from16 v17, v4

    invoke-direct/range {v8 .. v17}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbReader;Landroid/content/Context;IIILjava/util/List;Z)V

    .line 261
    .local v8, "workspaceSolution":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;
    invoke-virtual {v8}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;->find()V

    .line 262
    nop

    .end local v8    # "workspaceSolution":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$GridPlacementSolution;
    add-int/lit8 v2, v2, 0x1

    .line 263
    goto :goto_5

    .line 265
    :cond_6
    return v6
.end method

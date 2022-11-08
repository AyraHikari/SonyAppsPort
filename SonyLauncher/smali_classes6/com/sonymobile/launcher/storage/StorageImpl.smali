.class public Lcom/sonymobile/launcher/storage/StorageImpl;
.super Ljava/lang/Object;
.source "StorageImpl.java"

# interfaces
.implements Lcom/sonymobile/launcher/storage/Storage;


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageImpl"


# instance fields
.field private final mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mItemSerializerFactory:Lcom/sonymobile/launcher/storage/ItemSerializerFactory;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/Context;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "callback"    # Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;
    .param p3, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sonymobile/launcher/storage/StorageImpl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    iput-object p2, p0, Lcom/sonymobile/launcher/storage/StorageImpl;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    .line 39
    new-instance v0, Lcom/sonymobile/launcher/storage/ItemSerializerFactory;

    invoke-direct {v0}, Lcom/sonymobile/launcher/storage/ItemSerializerFactory;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/storage/StorageImpl;->mItemSerializerFactory:Lcom/sonymobile/launcher/storage/ItemSerializerFactory;

    .line 40
    const-class v1, Lcom/sonymobile/launcher/data/ActivityItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/launcher/storage/ActivitySerializer;

    invoke-direct {v2, p3}, Lcom/sonymobile/launcher/storage/ActivitySerializer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/launcher/storage/ItemSerializerFactory;->registerSerializer(Ljava/lang/String;Lcom/sonymobile/launcher/storage/BaseSerializer;)V

    .line 41
    const-class v1, Lcom/sonymobile/launcher/data/AppWidgetItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/launcher/storage/WidgetSerializer;

    invoke-direct {v2, p3}, Lcom/sonymobile/launcher/storage/WidgetSerializer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/launcher/storage/ItemSerializerFactory;->registerSerializer(Ljava/lang/String;Lcom/sonymobile/launcher/storage/BaseSerializer;)V

    .line 42
    const-class v1, Lcom/sonymobile/launcher/data/FolderItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/launcher/storage/FolderSerializer;

    invoke-direct {v2, p3}, Lcom/sonymobile/launcher/storage/FolderSerializer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/launcher/storage/ItemSerializerFactory;->registerSerializer(Ljava/lang/String;Lcom/sonymobile/launcher/storage/BaseSerializer;)V

    .line 43
    const-class v1, Lcom/sonymobile/launcher/data/ShortcutItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/launcher/storage/ShortcutSerializer;

    invoke-direct {v2, p3}, Lcom/sonymobile/launcher/storage/ShortcutSerializer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/launcher/storage/ItemSerializerFactory;->registerSerializer(Ljava/lang/String;Lcom/sonymobile/launcher/storage/BaseSerializer;)V

    .line 44
    new-instance v1, Lcom/sonymobile/launcher/storage/PromiseSerializer;

    invoke-direct {v1, p3}, Lcom/sonymobile/launcher/storage/PromiseSerializer;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, "promiseSerializer":Lcom/sonymobile/launcher/storage/PromiseSerializer;
    const-class v2, Lcom/sonymobile/launcher/data/PromiseItem;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/launcher/storage/ItemSerializerFactory;->registerSerializer(Ljava/lang/String;Lcom/sonymobile/launcher/storage/BaseSerializer;)V

    .line 46
    const-class v2, Lcom/sonymobile/launcher/data/PromiseWidgetItem;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/launcher/storage/ItemSerializerFactory;->registerSerializer(Ljava/lang/String;Lcom/sonymobile/launcher/storage/BaseSerializer;)V

    .line 47
    return-void
.end method

.method private doInsertItem(Lcom/sonymobile/launcher/data/Item;)J
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 89
    iget-object v0, p0, Lcom/sonymobile/launcher/storage/StorageImpl;->mItemSerializerFactory:Lcom/sonymobile/launcher/storage/ItemSerializerFactory;

    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/storage/ItemSerializerFactory;->createContentValueFromItem(Lcom/sonymobile/launcher/data/Item;)Landroid/content/ContentValues;

    move-result-object v0

    .line 90
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_1

    .line 91
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/sonymobile/launcher/storage/StorageImpl;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v2}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/launcher/storage/StorageImpl;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    iget-object v2, p0, Lcom/sonymobile/launcher/storage/StorageImpl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v1, v2, v0}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v1

    int-to-long v1, v1

    .line 103
    .local v1, "id":J
    return-wide v1

    .line 105
    .end local v1    # "id":J
    :cond_1
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private doInsertOrUpdateItems(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "itemsToInsert":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    .local p2, "outFailedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/launcher/data/Item;

    .line 68
    .local v1, "item":Lcom/sonymobile/launcher/data/Item;
    invoke-direct {p0, v1}, Lcom/sonymobile/launcher/storage/StorageImpl;->doInsertItem(Lcom/sonymobile/launcher/data/Item;)J

    move-result-wide v2

    .line 69
    .local v2, "id":J
    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/launcher/data/Item;->setStorageId(J)V

    .line 71
    instance-of v4, v1, Lcom/sonymobile/launcher/data/FolderItem;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    cmp-long v4, v2, v5

    if-ltz v4, :cond_0

    .line 72
    move-object v4, v1

    check-cast v4, Lcom/sonymobile/launcher/data/FolderItem;

    .line 73
    .local v4, "folder":Lcom/sonymobile/launcher/data/FolderItem;
    invoke-virtual {v4}, Lcom/sonymobile/launcher/data/FolderItem;->hasItems()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 74
    invoke-virtual {v4}, Lcom/sonymobile/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v7

    .line 75
    .local v7, "itemsInsideFolder":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/launcher/data/Item;

    .line 76
    .local v9, "itemInsideFolder":Lcom/sonymobile/launcher/data/Item;
    invoke-virtual {v9, v2, v3}, Lcom/sonymobile/launcher/data/Item;->setContainerId(J)V

    .line 77
    invoke-direct {p0, v9}, Lcom/sonymobile/launcher/storage/StorageImpl;->doInsertItem(Lcom/sonymobile/launcher/data/Item;)J

    .line 78
    .end local v9    # "itemInsideFolder":Lcom/sonymobile/launcher/data/Item;
    goto :goto_1

    .line 82
    .end local v4    # "folder":Lcom/sonymobile/launcher/data/FolderItem;
    .end local v7    # "itemsInsideFolder":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    :cond_0
    cmp-long v4, v2, v5

    if-gez v4, :cond_1

    if-eqz p2, :cond_1

    .line 83
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v1    # "item":Lcom/sonymobile/launcher/data/Item;
    .end local v2    # "id":J
    :cond_1
    goto :goto_0

    .line 86
    :cond_2
    return-void
.end method


# virtual methods
.method public insertItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/storage/StorageImpl;->doInsertOrUpdateItems(Ljava/util/List;Ljava/util/List;)V

    .line 52
    return-void
.end method

.method public insertItems(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "itemsToInsert":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    .local p2, "outFailedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/launcher/storage/StorageImpl;->doInsertOrUpdateItems(Ljava/util/List;Ljava/util/List;)V

    .line 58
    return-void
.end method

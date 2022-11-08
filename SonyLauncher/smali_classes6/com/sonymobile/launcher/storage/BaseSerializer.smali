.class public abstract Lcom/sonymobile/launcher/storage/BaseSerializer;
.super Ljava/lang/Object;
.source "BaseSerializer.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonymobile/launcher/storage/BaseSerializer;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public createContentValues(Lcom/sonymobile/launcher/data/Item;)Landroid/content/ContentValues;
    .locals 10
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 25
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 27
    .local v0, "value":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/sonymobile/launcher/data/Item;->isStored()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/sonymobile/launcher/data/Item;->getStorageId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/launcher/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 32
    .local v1, "user":Landroid/os/UserHandle;
    if-eqz v1, :cond_1

    .line 33
    sget-object v2, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/sonymobile/launcher/storage/BaseSerializer;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 33
    const-string v3, "profileId"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v2

    .line 38
    .local v2, "itemLocation":Lcom/sonymobile/launcher/data/ItemLocation;
    iget-object v3, v2, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    .line 39
    .local v3, "gridRect":Lcom/sonymobile/launcher/grid/GridRect;
    iget v4, v3, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "cellX"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    iget v4, v3, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "cellY"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    iget v4, v3, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "spanX"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    iget v4, v3, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "spanY"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    iget v4, v2, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "rank"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    invoke-virtual {p1}, Lcom/sonymobile/launcher/data/Item;->getContainerId()J

    move-result-wide v4

    .line 46
    .local v4, "containerId":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "container"

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    const-wide/16 v6, -0x65

    cmp-long v6, v4, v6

    const-string v7, "screen"

    if-eqz v6, :cond_3

    const-wide/16 v8, -0x66

    cmp-long v6, v4, v8

    if-nez v6, :cond_2

    goto :goto_0

    .line 52
    :cond_2
    iget v6, v2, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    iget v6, v2, Lcom/sonymobile/launcher/data/ItemLocation;->position:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    :goto_1
    return-object v0
.end method

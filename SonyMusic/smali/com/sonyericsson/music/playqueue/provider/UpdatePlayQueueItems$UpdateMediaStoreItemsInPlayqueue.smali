.class Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$UpdateMediaStoreItemsInPlayqueue;
.super Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;
.source "UpdatePlayQueueItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateMediaStoreItemsInPlayqueue"
.end annotation


# static fields
.field private static final COLUMNS_MAP:[Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x7

    .line 223
    new-array v0, v0, [Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;

    new-instance v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;

    const-string v2, "album"

    const-string v3, "album"

    const/4 v4, 0x3

    const/4 v5, -0x1

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;

    const-string v2, "artist"

    const-string v3, "artist"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;

    const-string v3, "album_id"

    const-string v6, "album_id"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;

    const-string v3, "artist_id"

    const-string v6, "artist_id"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;

    const-string v3, "duration"

    const-string v6, "duration"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;

    const-string v3, "title"

    const-string v6, "title"

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;

    const-string v3, "_id"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v5, v4, v2}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$UpdateMediaStoreItemsInPlayqueue;->COLUMNS_MAP:[Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 248
    sget-object v0, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$UpdateMediaStoreItemsInPlayqueue;->COLUMNS_MAP:[Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;-><init>([Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;)V

    return-void
.end method


# virtual methods
.method protected getItemsInPlayqueue(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-static {p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->createListOfMediaStoreItemsInPlayqueue(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getStorageItems(Landroid/content/Context;Ljava/util/List;)Landroid/database/Cursor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 263
    invoke-static {p1, p2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->getMediaStoreItemsWithIds(Landroid/content/Context;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected getStorageTrackId(Landroid/database/Cursor;)I
    .locals 1

    const-string v0, "_id"

    .line 268
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method protected isNewMetadataAvailable(Landroid/database/Cursor;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected isPermissionGranted(Landroid/content/Context;)Z
    .locals 0

    .line 253
    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

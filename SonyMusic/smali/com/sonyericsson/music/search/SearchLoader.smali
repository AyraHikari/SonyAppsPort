.class Lcom/sonyericsson/music/search/SearchLoader;
.super Lcom/sonyericsson/music/common/BackgroundLoader;
.source "SearchLoader.java"

# interfaces
.implements Lcom/sonyericsson/music/search/SearchCancelCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/common/BackgroundLoader<",
        "Lcom/sonyericsson/music/search/SearchResult;",
        ">;",
        "Lcom/sonyericsson/music/search/SearchCancelCallback;"
    }
.end annotation


# static fields
.field private static final MEDIASTORE_COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_HISTORY_URI:Landroid/net/Uri;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mMediaStoreObserver:Landroid/database/ContentObserver;

.field private final mQuery:Ljava/lang/String;

.field private mSearchHistoryObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/search/SearchLoader;->SEARCH_HISTORY_URI:Landroid/net/Uri;

    const/4 v0, 0x6

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "artist_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "album_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "title"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "artist"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "album"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/search/SearchLoader;->MEDIASTORE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/BackgroundLoader;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchLoader;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object p2, p0, Lcom/sonyericsson/music/search/SearchLoader;->mQuery:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/search/SearchLoader;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/BackgroundLoader;->getCachedData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close(Lcom/sonyericsson/music/search/SearchResult;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/sonyericsson/music/search/SearchResult;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/search/SearchLoader;->close(Lcom/sonyericsson/music/search/SearchResult;)V

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 154
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    return v0
.end method

.method public loadInBackground()Lcom/sonyericsson/music/search/SearchResult;
    .locals 8

    .line 56
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchLoader;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    .line 61
    invoke-static {v2, p0}, Lcom/sonyericsson/music/search/SearchHistory;->fetch(Landroid/content/ContentResolver;Lcom/sonyericsson/music/search/SearchCancelCallback;)Lcom/sonyericsson/music/search/SearchResult;

    move-result-object v0

    .line 62
    invoke-interface {v0, v1}, Lcom/sonyericsson/music/search/SearchResult;->crop(I)Lcom/sonyericsson/music/search/SearchResult;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchLoader;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\"

    const-string v4, "\\\\"

    .line 67
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%"

    const-string v4, "\\%"

    .line 68
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_"

    const-string v4, "\\_"

    .line 69
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\'"

    const-string v4, "\\\'"

    .line 70
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "title_key||album_key||artist_key LIKE ? ESCAPE \'\\\'"

    const/4 v3, 0x1

    .line 73
    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    .line 75
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sonyericsson/music/search/SearchLoader;->MEDIASTORE_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/sonyericsson/music/search/Search;->prepare(Landroid/database/Cursor;)Lcom/sonyericsson/music/search/Search;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchLoader;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/sonyericsson/music/search/Search;->execute(Ljava/lang/String;Lcom/sonyericsson/music/search/SearchCancelCallback;)Lcom/sonyericsson/music/search/SearchQueryResult;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/search/SearchQueryResult;->crop(I)Lcom/sonyericsson/music/search/SearchQueryResult;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sonyericsson/music/search/SearchLoader;->loadInBackground()Lcom/sonyericsson/music/search/SearchResult;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 3

    .line 137
    invoke-super {p0}, Lcom/sonyericsson/music/common/BackgroundLoader;->onReset()V

    .line 139
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchLoader;->mMediaStoreObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 143
    iput-object v2, p0, Lcom/sonyericsson/music/search/SearchLoader;->mMediaStoreObserver:Landroid/database/ContentObserver;

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchLoader;->mSearchHistoryObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 148
    iput-object v2, p0, Lcom/sonyericsson/music/search/SearchLoader;->mSearchHistoryObserver:Landroid/database/ContentObserver;

    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .line 94
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchLoader;->mMediaStoreObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lcom/sonyericsson/music/search/SearchLoader$1;

    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchLoader;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/music/search/SearchLoader$1;-><init>(Lcom/sonyericsson/music/search/SearchLoader;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonyericsson/music/search/SearchLoader;->mMediaStoreObserver:Landroid/database/ContentObserver;

    .line 108
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/music/search/SearchLoader;->mMediaStoreObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchLoader;->mSearchHistoryObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 113
    new-instance v1, Lcom/sonyericsson/music/search/SearchLoader$2;

    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchLoader;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/music/search/SearchLoader$2;-><init>(Lcom/sonyericsson/music/search/SearchLoader;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonyericsson/music/search/SearchLoader;->mSearchHistoryObserver:Landroid/database/ContentObserver;

    .line 129
    sget-object v1, Lcom/sonyericsson/music/search/SearchLoader;->SEARCH_HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonyericsson/music/search/SearchLoader;->mSearchHistoryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/music/common/BackgroundLoader;->onStartLoading()V

    return-void
.end method
